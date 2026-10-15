package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgce implements zzgbv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgoj f19016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgoj f19017b;

    private zzgce(byte[] bArr, byte[] bArr2) {
        this.f19016a = zzgoj.b(bArr);
        this.f19017b = zzgoj.b(bArr2);
    }

    static zzgce a(byte[] bArr, byte[] bArr2, int i10) throws GeneralSecurityException {
        zzgne.c(zzgne.g(zzgne.h(i10), 1, bArr2), zzgne.f(i10, bArr));
        return new zzgce(bArr, bArr2);
    }
}
