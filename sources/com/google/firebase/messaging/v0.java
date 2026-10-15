package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class v0 implements Runnable {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Object f26550t = new Object();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static Boolean f26551u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static Boolean f26552v;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f26553o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final f0 f26554p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final PowerManager.WakeLock f26555q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final u0 f26556r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final long f26557s;

    /* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
    class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private v0 f26558a;

        public a(v0 v0Var) {
            this.f26558a = v0Var;
        }

        public void a() {
            if (v0.j()) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            v0.this.f26553o.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public synchronized void onReceive(Context context, Intent intent) {
            v0 v0Var = this.f26558a;
            if (v0Var == null) {
                return;
            }
            if (v0Var.i()) {
                if (v0.j()) {
                    Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                }
                this.f26558a.f26556r.k(this.f26558a, 0L);
                context.unregisterReceiver(this);
                this.f26558a = null;
            }
        }
    }

    v0(u0 u0Var, Context context, f0 f0Var, long j10) {
        this.f26556r = u0Var;
        this.f26553o = context;
        this.f26557s = j10;
        this.f26554p = f0Var;
        this.f26555q = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    private static String e(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 142);
        sb.append("Missing Permission: ");
        sb.append(str);
        sb.append(". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        return sb.toString();
    }

    private static boolean f(Context context) {
        boolean zBooleanValue;
        synchronized (f26550t) {
            Boolean bool = f26552v;
            Boolean boolValueOf = Boolean.valueOf(bool == null ? g(context, "android.permission.ACCESS_NETWORK_STATE", bool) : bool.booleanValue());
            f26552v = boolValueOf;
            zBooleanValue = boolValueOf.booleanValue();
        }
        return zBooleanValue;
    }

    private static boolean g(Context context, String str, Boolean bool) {
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z10 = context.checkCallingOrSelfPermission(str) == 0;
        if (z10 || !Log.isLoggable("FirebaseMessaging", 3)) {
            return z10;
        }
        Log.d("FirebaseMessaging", e(str));
        return false;
    }

    private static boolean h(Context context) {
        boolean zBooleanValue;
        synchronized (f26550t) {
            Boolean bool = f26551u;
            Boolean boolValueOf = Boolean.valueOf(bool == null ? g(context, "android.permission.WAKE_LOCK", bool) : bool.booleanValue());
            f26551u = boolValueOf;
            zBooleanValue = boolValueOf.booleanValue();
        }
        return zBooleanValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean i() {
        /*
            r2 = this;
            monitor-enter(r2)
            android.content.Context r0 = r2.f26553o     // Catch: java.lang.Throwable -> L20
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Throwable -> L20
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0     // Catch: java.lang.Throwable -> L20
            if (r0 == 0) goto L12
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()     // Catch: java.lang.Throwable -> L20
            goto L13
        L12:
            r0 = 0
        L13:
            if (r0 == 0) goto L1e
            boolean r0 = r0.isConnected()     // Catch: java.lang.Throwable -> L20
            if (r0 == 0) goto L1e
            r0 = 1
        L1c:
            monitor-exit(r2)
            return r0
        L1e:
            r0 = 0
            goto L1c
        L20:
            r0 = move-exception
            monitor-exit(r2)
            goto L24
        L23:
            throw r0
        L24:
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.v0.i():boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean j() {
        return Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3));
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public void run() {
        if (h(this.f26553o)) {
            this.f26555q.acquire(b.f26412a);
        }
        try {
            try {
                this.f26556r.l(true);
                if (!this.f26554p.g()) {
                    this.f26556r.l(false);
                    if (h(this.f26553o)) {
                        try {
                            this.f26555q.release();
                            return;
                        } catch (RuntimeException unused) {
                            Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                            return;
                        }
                    }
                    return;
                }
                if (f(this.f26553o) && !i()) {
                    new a(this).a();
                    if (h(this.f26553o)) {
                        try {
                            this.f26555q.release();
                            return;
                        } catch (RuntimeException unused2) {
                            Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                            return;
                        }
                    }
                    return;
                }
                if (this.f26556r.o()) {
                    this.f26556r.l(false);
                } else {
                    this.f26556r.p(this.f26557s);
                }
                if (h(this.f26553o)) {
                    try {
                        this.f26555q.release();
                    } catch (RuntimeException unused3) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            } catch (IOException e10) {
                String strValueOf = String.valueOf(e10.getMessage());
                Log.e("FirebaseMessaging", strValueOf.length() != 0 ? "Failed to sync topics. Won't retry sync. ".concat(strValueOf) : new String("Failed to sync topics. Won't retry sync. "));
                this.f26556r.l(false);
                if (h(this.f26553o)) {
                    try {
                        this.f26555q.release();
                    } catch (RuntimeException unused4) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            }
        } catch (Throwable th) {
            if (h(this.f26553o)) {
                try {
                    this.f26555q.release();
                } catch (RuntimeException unused5) {
                    Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                }
            }
            throw th;
        }
    }
}
