package com.tebakgambar.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.l;
import androidx.core.app.o;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.h0;
import com.tebakgambar.Henson;
import com.tebakgambar.R;
import com.tebakgambar.model.request.TGRemoteMessage;

/* JADX INFO: loaded from: classes2.dex */
public class TGFirebaseMessagingService extends FirebaseMessagingService {
    public static void t(String str, String str2, String str3, TGRemoteMessage tGRemoteMessage, Context context) {
        Intent intentBuild = Henson.with(context).b().remoteMessage(tGRemoteMessage).build();
        int i10 = Build.VERSION.SDK_INT >= 23 ? 201326592 : 134217728;
        intentBuild.setAction("push_notif");
        intentBuild.setData(Uri.parse("push_notif"));
        intentBuild.addFlags(603979776);
        Notification notificationB = new l.e(context, "tg-notification").k(str).j(str2).w(R.drawable.ic_launcher).i(PendingIntent.getActivity(context, 0, intentBuild, i10)).s(false).z(tGRemoteMessage.ticker).f(true).y(new l.c().h(str2)).b();
        notificationB.ledARGB = -65536;
        notificationB.defaults = 7;
        notificationB.ledOnMS = 100;
        notificationB.ledOffMS = 100;
        o.b(context).e(str3, 0, notificationB);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void o(h0 h0Var) {
        super.o(h0Var);
        h0.b bVarW3 = h0Var.W3();
        if (bVarW3 == null) {
            return;
        }
        t(bVarW3.d(), bVarW3.a(), bVarW3.c(), new TGRemoteMessage(h0Var), this);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            NotificationChannel notificationChannel = new NotificationChannel("tg-notification", "Tebak Gambar Notification", 3);
            notificationChannel.setDescription("Tebak Gambar Notification");
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(notificationChannel);
            }
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void q(String str) {
        super.q(str);
    }
}
