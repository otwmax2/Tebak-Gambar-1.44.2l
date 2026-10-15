package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgcg implements zzgbv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgoj f19019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgoj f19020b;

    private zzgcg(byte[] bArr, byte[] bArr2) {
        this.f19019a = zzgoj.b(bArr);
        this.f19020b = zzgoj.b(bArr2);
    }

    static zzgcg a(byte[] bArr) throws GeneralSecurityException {
        return new zzgcg(bArr, zzgoh.c(bArr));
    }
}
