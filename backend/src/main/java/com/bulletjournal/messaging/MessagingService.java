package com.bulletjournal.messaging;

import com.bulletjournal.messaging.firebase.FcmClient;
import com.bulletjournal.messaging.firebase.FcmMessageParams;
import com.bulletjournal.messaging.mailjet.MailjetEmailClient;
import com.bulletjournal.messaging.mailjet.MailjetEmailParams;
import com.bulletjournal.repository.DeviceTokenDaoJpa;
import com.bulletjournal.repository.models.DeviceToken;
import com.bulletjournal.repository.models.Task;
import com.bulletjournal.repository.models.User;
import com.bulletjournal.repository.utils.DaoHelper;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

/**
 * Handle mobile device notification and email service
 */
@Service
public class MessagingService {

    private static final Logger LOGGER = LoggerFactory.getLogger(MessagingService.class);

    private FcmClient fcmClient;

    private MailjetEmailClient mailjetClient;

    private DeviceTokenDaoJpa deviceTokenDaoJpa;

    @Autowired
    public MessagingService(
        FcmClient fcmClient,
        MailjetEmailClient mailjetClient,
        DeviceTokenDaoJpa deviceTokenDaoJpa
    ) {
        this.fcmClient = fcmClient;
        this.mailjetClient = mailjetClient;
        this.deviceTokenDaoJpa = deviceTokenDaoJpa;
    }

    public void sendEtagUpdateNotificationToUsers(Collection<String> usernames) {
        LOGGER.info("Sending notification to users: {}", usernames);
        List<DeviceToken> deviceTokens = deviceTokenDaoJpa.getTokensByUsers(usernames);
        List<FcmMessageParams> params = deviceTokens.stream()
            .map(token -> new FcmMessageParams(token.getToken(), "type", "Notification"))
            .collect(Collectors.toList());
        fcmClient.sendAllMessagesAsync(params);
    }

    public void sendTaskDueNotificationAndEmailToUsers(List<Pair<Task, Long>> taskAndTimeList) {
        LOGGER.info("Sending task due notification for tasks: {}",
            taskAndTimeList.stream().map(pair -> pair.getLeft().getName()).collect(Collectors.toList()));
        Set<String> distinctUsers = taskAndTimeList.stream()
            .flatMap(pair -> pair.getLeft().getAssignees().stream())
            .collect(Collectors.toSet());
        List<DeviceToken> tokens = deviceTokenDaoJpa.getTokensByUsers(distinctUsers);

        Map<String, List<String>> nameTokensMap = new HashMap<>();
        Map<String, String> nameEmailMap = new HashMap<>();
        for (DeviceToken deviceToken : tokens) {
            User user = deviceToken.getUser();
            nameEmailMap.put(user.getName(), user.getEmail());
            if (!nameTokensMap.containsKey(user.getName())) {
                nameTokensMap.put(user.getName(), new ArrayList<>());
            }
            nameTokensMap.get(user.getName()).add(deviceToken.getToken());
        }

        List<MailjetEmailParams> emailParamsList = new ArrayList<>();
        List<FcmMessageParams> messageParamsList = new ArrayList<>();
        for (Pair<Task, Long> taskAndTime : taskAndTimeList) {
            Task task = DaoHelper.cloneTaskWithDueDateTime(taskAndTime.getLeft(), taskAndTime.getRight());
            messageParamsList.addAll(createFcmMessageParamsListFromDueTask(task, nameTokensMap));
            emailParamsList.add(createEmailParamsForDueTask(task, nameEmailMap));
        }
        fcmClient.sendAllMessagesAsync(messageParamsList);
        mailjetClient.sendAllEmailAsync(emailParamsList);
    }

    private List<FcmMessageParams> createFcmMessageParamsListFromDueTask(
        Task task, Map<String, List<String>> nameTokenMap
    ) {
        List<FcmMessageParams> paramsList = new ArrayList<>();
        List<String> targetTokens = new ArrayList<>();
        for (String username : task.getAssignees()) {
            targetTokens.addAll(nameTokenMap.get(username));
        }
        String taskName = task.getName();
        String dueDate = task.getDueDate();
        String dueTime = task.getDueTime();
        Pair<String, String> notificationTitleBody
            = new ImmutablePair<>("Bullet Journal",
            "Your task " + taskName + " is due on " + dueDate + " " + dueTime);
        for (String token : targetTokens) {
            paramsList.add(new FcmMessageParams(
                token,
                notificationTitleBody,
                "type",
                "taskDueNotification"
            ));
        }
        return paramsList;
    }

    private MailjetEmailParams createEmailParamsForDueTask(
        Task task, Map<String, String> nameEmailMap
    ) {
        List<Pair<String, String>> receivers = new ArrayList<>();
        for (String username: task.getAssignees()) {
            String email = nameEmailMap.get(username);
            receivers.add(new ImmutablePair<>(username, email));
        }
        String taskName = task.getName();
        String dueDate = task.getDueDate();
        String dueTime = task.getDueTime();
        MailjetEmailParams params =
            new MailjetEmailParams(
                receivers,
                "[Bullet Journal] Due task notification",
                "Your task " + taskName + " is due on " + dueDate + " " + dueTime
            );
        return params;
    }
}
