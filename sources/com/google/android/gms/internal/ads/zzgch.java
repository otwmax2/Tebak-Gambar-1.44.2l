package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfvo f19021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfvu f19022b;

    public zzgch(zzfvo zzfvoVar) {
        this.f19021a = zzfvoVar;
        this.f19022b = null;
    }

    public zzgch(zzfvu zzfvuVar) {
        this.f19021a = null;
        this.f19022b = zzfvuVar;
    }

    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzfvo zzfvoVar = this.f19021a;
        return zzfvoVar != null ? zzfvoVar.b(bArr, bArr2) : this.f19022b.a(bArr, bArr2);
    }
}
