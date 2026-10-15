package com.tebakgambar.model;

import com.tebakgambar.R;
import com.tebakgambar.TGApplication;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class ComingSoon {
    private static final long ONE_DAY_MILLIS = 86400000;
    private static final long ONE_WEEK_MILLIS = 604800000;
    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("dd MMM yyyy");

    @b7.c("Pending")
    public DialogModel pending;

    @b7.c("Release")
    public DialogModel release;

    @b7.c("ReleaseLocalNotif")
    public TimedDialogModel releaseLocalNotification;

    @b7.c("ReleaseDate")
    public long releaseTimeStamp;

    public int displayReleaseBackground() {
        return this.releaseTimeStamp - System.currentTimeMillis() >= ONE_WEEK_MILLIS ? R.drawable.bg_upcoming_level_orange : R.drawable.bg_upcoming_level_yellow;
    }

    public String displayReleaseMessage() {
        long jCurrentTimeMillis = this.releaseTimeStamp - System.currentTimeMillis();
        if (jCurrentTimeMillis >= ONE_WEEK_MILLIS) {
            return dateFormat.format(new Date(this.releaseTimeStamp));
        }
        return TGApplication.d().getString(R.string.release_message, new Object[]{Integer.valueOf((int) Math.max(1L, jCurrentTimeMillis / ONE_DAY_MILLIS))});
    }

    public boolean isValidLocalNotification() {
        TimedDialogModel timedDialogModel = this.releaseLocalNotification;
        return timedDialogModel != null && timedDialogModel.isValid();
    }
}
