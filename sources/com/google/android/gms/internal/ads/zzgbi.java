package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgbi implements zzfvw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzfxb f18967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzggm f18968b;

    public zzgbi(zzfxb zzfxbVar) {
        this.f18967a = zzfxbVar;
        this.f18968b = zzfxbVar.f() ? zzgdd.a().b().a(zzgda.a(zzfxbVar), "hybrid_encrypt", "encrypt") : zzgda.f19046a;
    }

    @Override // com.google.android.gms.internal.ads.zzfvw
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzfxb zzfxbVar = this.f18967a;
        if (zzfxbVar.a() == null) {
            throw new GeneralSecurityException("keyset without primary key");
        }
        try {
            byte[] bArrB = zzgmv.b(zzfxbVar.a().g(), ((zzfvw) this.f18967a.a().e()).a(bArr, bArr2));
            this.f18967a.a().a();
            int length = bArr.length;
            return bArrB;
        } catch (GeneralSecurityException e10) {
            throw e10;
        }
    }
}
