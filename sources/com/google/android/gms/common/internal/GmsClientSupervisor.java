package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class GmsClientSupervisor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f7397a = 4225;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f7398b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static n f7399c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    static HandlerThread f7400d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f7401e = false;

    @KeepForSdk
    public static int a() {
        return f7397a;
    }

    @KeepForSdk
    public static GmsClientSupervisor b(Context context) {
        synchronized (f7398b) {
            if (f7399c == null) {
                f7399c = new n(context.getApplicationContext(), f7401e ? c().getLooper() : context.getMainLooper());
            }
        }
        return f7399c;
    }

    @KeepForSdk
    public static HandlerThread c() {
        synchronized (f7398b) {
            HandlerThread handlerThread = f7400d;
            if (handlerThread != null) {
                return handlerThread;
            }
            HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
            f7400d = handlerThread2;
            handlerThread2.start();
            return f7400d;
        }
    }

    protected abstract void d(zzn zznVar, ServiceConnection serviceConnection, String str);

    public final void e(String str, String str2, int i10, ServiceConnection serviceConnection, String str3, boolean z10) {
        d(new zzn(str, str2, i10, z10), serviceConnection, str3);
    }

    protected abstract boolean f(zzn zznVar, ServiceConnection serviceConnection, String str, Executor executor);
}
