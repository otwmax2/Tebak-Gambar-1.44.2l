package com.google.android.gms.internal.auth;

import android.os.Build;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f21404a = !a();

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
