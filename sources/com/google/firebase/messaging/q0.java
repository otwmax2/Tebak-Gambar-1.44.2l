package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class q0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f26514o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final PowerManager.WakeLock f26515p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final FirebaseMessaging f26516q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @VisibleForTesting
    ExecutorService f26517r = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("firebase-iid-executor"));

    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    /* JADX INFO: loaded from: classes.dex */
    @VisibleForTesting
    static class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private q0 f26518a;

        public a(q0 q0Var) {
            this.f26518a = q0Var;
        }

        public void a() {
            if (q0.c()) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            this.f26518a.b().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            q0 q0Var = this.f26518a;
            if (q0Var != null && q0Var.d()) {
                if (q0.c()) {
                    Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                }
                this.f26518a.f26516q.d(this.f26518a, 0L);
                this.f26518a.b().unregisterReceiver(this);
                this.f26518a = null;
            }
        }
    }

    @VisibleForTesting
    @SuppressLint({"InvalidWakeLockTag"})
    public q0(FirebaseMessaging firebaseMessaging, long j10) {
        this.f26516q = firebaseMessaging;
        this.f26514o = j10;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) b().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f26515p = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
    }

    static boolean c() {
        return Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3));
    }

    Context b() {
        return this.f26516q.e();
    }

    boolean d() {
        ConnectivityManager connectivityManager = (ConnectivityManager) b().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @VisibleForTesting
    boolean e() throws IOException {
        try {
            if (this.f26516q.c() == null) {
                Log.e("FirebaseMessaging", "Token retrieval failed: null");
                return false;
            }
            if (!Log.isLoggable("FirebaseMessaging", 3)) {
                return true;
            }
            Log.d("FirebaseMessaging", "Token successfully retrieved");
            return true;
        } catch (IOException e10) {
            if (!a0.f(e10.getMessage())) {
                if (e10.getMessage() != null) {
                    throw e10;
                }
                Log.w("FirebaseMessaging", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            }
            String message = e10.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 52);
            sb.append("Token retrieval failed: ");
            sb.append(message);
            sb.append(". Will retry token retrieval");
            Log.w("FirebaseMessaging", sb.toString());
            return false;
        } catch (SecurityException unused) {
            Log.w("FirebaseMessaging", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    @Override // java.lang.Runnable
    @SuppressLint({"WakelockTimeout"})
    public void run() {
        if (m0.b().e(b())) {
            this.f26515p.acquire();
        }
        try {
            try {
                this.f26516q.p(true);
                if (!this.f26516q.k()) {
                    this.f26516q.p(false);
                    if (!m0.b().e(b())) {
                        return;
                    }
                } else if (!m0.b().d(b()) || d()) {
                    if (e()) {
                        this.f26516q.p(false);
                    } else {
                        this.f26516q.s(this.f26514o);
                    }
                    if (!m0.b().e(b())) {
                        return;
                    }
                } else {
                    new a(this).a();
                    if (!m0.b().e(b())) {
                        return;
                    }
                }
            } catch (IOException e10) {
                String message = e10.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 93);
                sb.append("Topic sync or token retrieval failed on hard failure exceptions: ");
                sb.append(message);
                sb.append(". Won't retry the operation.");
                Log.e("FirebaseMessaging", sb.toString());
                this.f26516q.p(false);
                if (!m0.b().e(b())) {
                    return;
                }
            }
            this.f26515p.release();
        } catch (Throwable th) {
            if (m0.b().e(b())) {
                this.f26515p.release();
            }
            throw th;
        }
    }
}
