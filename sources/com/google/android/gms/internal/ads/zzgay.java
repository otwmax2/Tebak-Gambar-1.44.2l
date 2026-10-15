package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgay implements zzfvu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfxb f18949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzggm f18950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzggm f18951c;

    public zzgay(zzfxb zzfxbVar) {
        zzggm zzggmVarA;
        this.f18949a = zzfxbVar;
        if (zzfxbVar.f()) {
            zzggn zzggnVarB = zzgdd.a().b();
            zzggs zzggsVarA = zzgda.a(zzfxbVar);
            this.f18950b = zzggnVarB.a(zzggsVarA, "daead", "encrypt");
            zzggmVarA = zzggnVarB.a(zzggsVarA, "daead", "decrypt");
        } else {
            zzggmVarA = zzgda.f19046a;
            this.f18950b = zzggmVarA;
        }
        this.f18951c = zzggmVarA;
    }

    @Override // com.google.android.gms.internal.ads.zzfvu
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            byte[] bArrB = zzgmv.b(this.f18949a.a().g(), ((zzfvu) this.f18949a.a().e()).a(bArr, bArr2));
            this.f18949a.a().a();
            int length = bArr.length;
            return bArrB;
        } catch (GeneralSecurityException e10) {
            throw e10;
        }
    }
}
