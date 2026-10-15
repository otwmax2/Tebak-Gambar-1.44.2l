package com.google.android.play.core.assetpacks;

import android.R;
import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import com.facebook.AuthenticationTokenClaims;
import com.facebook.share.internal.ShareConstants;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class w extends v4.l0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final v4.a f26118o = new v4.a("AssetPackExtractionService");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Context f26119p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final e0 f26120q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final l3 f26121r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final b1 f26122s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final NotificationManager f26123t;

    w(Context context, e0 e0Var, l3 l3Var, b1 b1Var) {
        this.f26119p = context;
        this.f26120q = e0Var;
        this.f26121r = l3Var;
        this.f26122s = b1Var;
        this.f26123t = (NotificationManager) context.getSystemService("notification");
    }

    @TargetApi(26)
    private final synchronized void O(String str) {
        if (str == null) {
            str = "File downloads by Play";
        }
        this.f26123t.createNotificationChannel(new NotificationChannel("playcore-assetpacks-service-notification-channel", str, 2));
    }

    private final synchronized void X0(Bundle bundle, v4.n0 n0Var) throws RemoteException {
        int i10;
        this.f26118o.a("updateServiceState AIDL call", new Object[0]);
        if (v4.r.b(this.f26119p) && v4.r.a(this.f26119p)) {
            int i11 = bundle.getInt(ShareConstants.WEB_DIALOG_PARAM_ACTION_TYPE);
            this.f26122s.c(n0Var);
            if (i11 != 1) {
                if (i11 == 2) {
                    this.f26121r.c(false);
                    this.f26122s.b();
                    return;
                } else {
                    this.f26118o.b("Unknown action type received: %d", Integer.valueOf(i11));
                    n0Var.X(new Bundle());
                    return;
                }
            }
            int i12 = Build.VERSION.SDK_INT;
            if (i12 >= 26) {
                O(bundle.getString("notification_channel_name"));
            }
            this.f26121r.c(true);
            b1 b1Var = this.f26122s;
            String string = bundle.getString("notification_title");
            String string2 = bundle.getString("notification_subtext");
            long j10 = bundle.getLong("notification_timeout", AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED);
            Parcelable parcelable = bundle.getParcelable("notification_on_click_intent");
            Notification.Builder timeoutAfter = i12 >= 26 ? new Notification.Builder(this.f26119p, "playcore-assetpacks-service-notification-channel").setTimeoutAfter(j10) : new Notification.Builder(this.f26119p).setPriority(-2);
            if (parcelable instanceof PendingIntent) {
                timeoutAfter.setContentIntent((PendingIntent) parcelable);
            }
            Notification.Builder ongoing = timeoutAfter.setSmallIcon(R.drawable.stat_sys_download).setOngoing(false);
            if (string == null) {
                string = "Downloading additional file";
            }
            Notification.Builder contentTitle = ongoing.setContentTitle(string);
            if (string2 == null) {
                string2 = "Transferring";
            }
            contentTitle.setSubText(string2);
            if (i12 >= 21 && (i10 = bundle.getInt("notification_color")) != 0) {
                timeoutAfter.setColor(i10).setVisibility(-1);
            }
            b1Var.a(timeoutAfter.build());
            this.f26119p.bindService(new Intent(this.f26119p, (Class<?>) ExtractionForegroundService.class), this.f26122s, 1);
            return;
        }
        n0Var.X(new Bundle());
    }

    @Override // v4.m0
    public final void E2(Bundle bundle, v4.n0 n0Var) throws RemoteException {
        X0(bundle, n0Var);
    }

    @Override // v4.m0
    public final void x1(Bundle bundle, v4.n0 n0Var) throws RemoteException {
        this.f26118o.a("clearAssetPackStorage AIDL call", new Object[0]);
        if (!v4.r.b(this.f26119p) || !v4.r.a(this.f26119p)) {
            n0Var.X(new Bundle());
        } else {
            this.f26120q.J();
            n0Var.v6(new Bundle());
        }
    }
}
