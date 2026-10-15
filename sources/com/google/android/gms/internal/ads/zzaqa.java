package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaqa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NetworkCapabilities f9710a;

    zzaqa(ConnectivityManager connectivityManager) {
        if (connectivityManager == null || Build.VERSION.SDK_INT < 24) {
            return;
        }
        try {
            connectivityManager.registerDefaultNetworkCallback(new zzapz(this));
        } catch (RuntimeException unused) {
            synchronized (zzaqa.class) {
                this.f9710a = null;
            }
        }
    }

    public static zzaqa c(Context context) {
        if (context != null) {
            return new zzaqa((ConnectivityManager) context.getSystemService("connectivity"));
        }
        return null;
    }

    public final long a() {
        synchronized (zzaqa.class) {
            NetworkCapabilities networkCapabilities = this.f9710a;
            if (networkCapabilities != null) {
                if (networkCapabilities.hasTransport(4)) {
                    return 2L;
                }
                if (this.f9710a.hasTransport(1)) {
                    return 1L;
                }
                if (this.f9710a.hasTransport(0)) {
                    return 0L;
                }
            }
            return -1L;
        }
    }

    public final NetworkCapabilities b() {
        return this.f9710a;
    }
}
