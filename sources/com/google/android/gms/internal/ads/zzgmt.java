package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgmt implements zzfvo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgai f19286a;

    public zzgmt(byte[] bArr) throws GeneralSecurityException {
        if (!zzgas.a(2)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        this.f19286a = new zzgai(bArr, true);
    }

    @Override // com.google.android.gms.internal.ads.zzfvo
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return this.f19286a.a(Arrays.copyOf(bArr, 12), bArr, bArr2);
    }

    @Override // com.google.android.gms.internal.ads.zzfvo
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return this.f19286a.b(zzgoe.a(12), bArr, bArr2);
    }
}
