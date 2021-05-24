import {actions} from "./reducer";
import {BookingLink, RecurringSpan} from "./interface";

export const getBookMeUsername = () => actions.GetBookMeUsername({});

export const updateBookMeUsername = (name: string) => actions.UpdateBookMeUsername({name: name});

export const getBookingLinks = () => actions.GetBookingLinks({});

export const getBookingLink = (bookingLinkId: string,
                               timezone?: string) => actions.GetBookingLink({
    bookingLinkId: bookingLinkId,
    timezone: timezone
});

export const addBookingLink = (
    afterEventBuffer: number,
    beforeEventBuffer: number,
    endDate: string,
    expireOnBooking: boolean,
    includeTaskWithoutDuration: boolean,
    projectId: number,
    recurrences: RecurringSpan[],
    slotSpan: number,
    startDate: string,
    timezone: string,
    onSuccess: Function
) =>
    actions.AddBookingLink({
        afterEventBuffer: afterEventBuffer,
        beforeEventBuffer: beforeEventBuffer,
        endDate: endDate,
        expireOnBooking: expireOnBooking,
        includeTaskWithoutDuration: includeTaskWithoutDuration,
        projectId: projectId,
        recurrences: recurrences,
        slotSpan: slotSpan,
        startDate: startDate,
        timezone: timezone,
        onSuccess: onSuccess
    });

export const linkReceived = (link: BookingLink) =>
    actions.linkReceived({link: link});

export const patchBookingLink = (
    bookingLinkId: string,
    timezone: string,
    afterEventBuffer?: number,
    beforeEventBuffer?: number,
    endDate?: string,
    expireOnBooking?: boolean,
    includeTaskWithoutDuration?: boolean,
    location?: string,
    projectId?: number,
    startDate?: string,
    note?: string
) =>
    actions.PatchBookingLink({
        bookingLinkId: bookingLinkId,
        timezone: timezone,
        afterEventBuffer: afterEventBuffer,
        beforeEventBuffer: beforeEventBuffer,
        endDate: endDate,
        expireOnBooking: expireOnBooking,
        includeTaskWithoutDuration: includeTaskWithoutDuration,
        location: location,
        projectId: projectId,
        startDate: startDate,
        note: note
    });

export const updateBookingLinkRecurrences = (
    bookingLinkId: string,
    recurrences: RecurringSpan[],
    timezone: string,
) =>
    actions.UpdateBookingLinkRecurrences({
            bookingLinkId: bookingLinkId,
            recurrences: recurrences,
            timezone: timezone
    });