package com.tebakgambar.model;

import com.tebakgambar.model.request.TGRemoteMessage;

/* JADX INFO: loaded from: classes2.dex */
public class TimedDialogModel extends DialogModel {
    public String pushActionId = "5";

    @b7.c("Subtitle")
    public String subtitle;

    @b7.c("Time")
    public long time;

    public boolean isValid() {
        return this.titleMessage != null && this.time > System.currentTimeMillis();
    }

    public TGRemoteMessage toRemoteMessage() {
        TGRemoteMessage tGRemoteMessage = new TGRemoteMessage();
        tGRemoteMessage.messageUrl = this.url;
        tGRemoteMessage.message = this.message;
        tGRemoteMessage.ticker = this.titleMessage;
        tGRemoteMessage.buttonNegativeText = this.buttonNegative;
        tGRemoteMessage.buttonPositiveText = this.buttonPositive;
        tGRemoteMessage.pushActionId = this.pushActionId;
        return tGRemoteMessage;
    }
}
