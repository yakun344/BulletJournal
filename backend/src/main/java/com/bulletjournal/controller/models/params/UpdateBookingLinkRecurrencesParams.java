package com.bulletjournal.controller.models.params;

import java.util.List;

public class UpdateBookingLinkRecurrencesParams {
    private List<String> recurrences;
    private String timezone;

    public UpdateBookingLinkRecurrencesParams() {
    }

    public UpdateBookingLinkRecurrencesParams(List<String> recurrences, String timezone) {
        this.recurrences = recurrences;
        this.timezone = timezone;
    }

    public List<String> getRecurrences() {
        return recurrences;
    }

    public void setRecurrences(List<String> recurrences) {
        this.recurrences = recurrences;
    }

    public String getTimezone() {
        return timezone;
    }

    public void setTimezone(String timezone) {
        this.timezone = timezone;
    }
}
