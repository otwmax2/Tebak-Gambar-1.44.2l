package com.google.android.gms.ads;

import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public final class zzb {
    public static int a(AdSize adSize) {
        return adSize.h();
    }

    public static int b(AdSize adSize) {
        return adSize.g();
    }

    public static AdSize c(int i10, int i11, String str) {
        return new AdSize(i10, i11, str);
    }

    public static AdSize d(int i10, int i11) {
        AdSize adSize = new AdSize(i10, i11);
        adSize.k(true);
        adSize.i(i11);
        return adSize;
    }

    public static AdSize e(int i10, int i11) {
        AdSize adSize = new AdSize(i10, i11);
        adSize.l(true);
        adSize.j(i11);
        return adSize;
    }

    public static boolean f(AdSize adSize) {
        return adSize.m();
    }

    public static boolean g(AdSize adSize) {
        return adSize.n();
    }

    public static boolean h(AdSize adSize) {
        return adSize.o();
    }
}
