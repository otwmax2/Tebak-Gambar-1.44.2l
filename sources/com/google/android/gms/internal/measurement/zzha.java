package com.google.android.gms.internal.measurement;

import android.os.Build;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzha {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f23518a = !a();

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
