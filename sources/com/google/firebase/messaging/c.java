package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.core.app.l;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.a;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f26415a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f26416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g0 f26417c;

    public c(Context context, g0 g0Var, Executor executor) {
        this.f26415a = executor;
        this.f26416b = context;
        this.f26417c = g0Var;
    }

    private boolean b() {
        if (((KeyguardManager) this.f26416b.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        if (!PlatformVersion.g()) {
            SystemClock.sleep(10L);
        }
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f26416b.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ActivityManager.RunningAppProcessInfo next = it.next();
                if (next.pid == iMyPid) {
                    if (next.importance == 100) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private void c(a.C0126a c0126a) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Showing notification");
        }
        ((NotificationManager) this.f26416b.getSystemService("notification")).notify(c0126a.f26403b, c0126a.f26404c, c0126a.f26402a.b());
    }

    private c0 d() {
        c0 c0VarD = c0.d(this.f26417c.p("gcm.n.image"));
        if (c0VarD != null) {
            c0VarD.f(this.f26415a);
        }
        return c0VarD;
    }

    private void e(l.e eVar, c0 c0Var) {
        if (c0Var == null) {
            return;
        }
        try {
            Bitmap bitmap = (Bitmap) Tasks.b(c0Var.e(), 5L, TimeUnit.SECONDS);
            eVar.o(bitmap);
            eVar.y(new l.b().i(bitmap).h(null));
        } catch (InterruptedException unused) {
            Log.w("FirebaseMessaging", "Interrupted while downloading image, showing notification without it");
            c0Var.close();
            Thread.currentThread().interrupt();
        } catch (ExecutionException e10) {
            String strValueOf = String.valueOf(e10.getCause());
            StringBuilder sb = new StringBuilder(strValueOf.length() + 26);
            sb.append("Failed to download image: ");
            sb.append(strValueOf);
            Log.w("FirebaseMessaging", sb.toString());
        } catch (TimeoutException unused2) {
            Log.w("FirebaseMessaging", "Failed to download image in time, showing notification without it");
            c0Var.close();
        }
    }

    boolean a() {
        if (this.f26417c.a("gcm.n.noui")) {
            return true;
        }
        if (b()) {
            return false;
        }
        c0 c0VarD = d();
        a.C0126a c0126aD = a.d(this.f26416b, this.f26417c);
        e(c0126aD.f26402a, c0VarD);
        c(c0126aD);
        return true;
    }
}
