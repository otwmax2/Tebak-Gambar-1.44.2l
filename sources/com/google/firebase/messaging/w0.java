package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.stats.WakeLock;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class w0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f26561a = TimeUnit.MINUTES.toMillis(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f26562b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("WakeLockHolder.syncObject")
    private static WakeLock f26563c;

    @GuardedBy("WakeLockHolder.syncObject")
    private static void a(Context context) {
        if (f26563c == null) {
            WakeLock wakeLock = new WakeLock(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            f26563c = wakeLock;
            wakeLock.d(true);
        }
    }

    static void b(Intent intent) {
        synchronized (f26562b) {
            if (f26563c != null && c(intent)) {
                d(intent, false);
                f26563c.c();
            }
        }
    }

    static boolean c(Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }

    private static void d(Intent intent, boolean z10) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z10);
    }

    static ComponentName e(Context context, Intent intent) {
        synchronized (f26562b) {
            a(context);
            boolean zC = c(intent);
            d(intent, true);
            ComponentName componentNameStartService = context.startService(intent);
            if (componentNameStartService == null) {
                return null;
            }
            if (!zC) {
                f26563c.a(f26561a);
            }
            return componentNameStartService;
        }
    }
}
