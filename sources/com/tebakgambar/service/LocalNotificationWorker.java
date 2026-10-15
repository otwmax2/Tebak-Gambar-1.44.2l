package com.tebakgambar.service;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.gson.f;
import com.tebakgambar.model.TimedDialogModel;

/* JADX INFO: loaded from: classes2.dex */
public class LocalNotificationWorker extends Worker {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private TimedDialogModel f27183u;

    public LocalNotificationWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        try {
            this.f27183u = (TimedDialogModel) new f().k(workerParameters.d().i("json"), TimedDialogModel.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a doWork() {
        TimedDialogModel timedDialogModel = this.f27183u;
        if (timedDialogModel != null) {
            TGFirebaseMessagingService.t(timedDialogModel.titleMessage, timedDialogModel.subtitle, "tg-local-notification", timedDialogModel.toRemoteMessage(), getApplicationContext());
        }
        return ListenableWorker.a.c();
    }
}
