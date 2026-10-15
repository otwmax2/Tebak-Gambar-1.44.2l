package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzger extends zzgct {
    zzger(zzges zzgesVar, Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzggz zzggzVar = (zzggz) zzgrwVar;
        zzggv zzggvVarJ = zzggw.J();
        zzggvVarJ.q(0);
        zzggvVarJ.o(zzgpe.J(zzgoe.a(zzggzVar.I())));
        zzggvVarJ.p(zzggzVar.M());
        return (zzggw) zzggvVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzggz.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final Map c() throws GeneralSecurityException {
        HashMap map = new HashMap();
        zzggy zzggyVarJ = zzggz.J();
        zzggyVarJ.o(32);
        zzghb zzghbVarJ = zzghc.J();
        zzghbVarJ.o(16);
        zzggyVarJ.p((zzghc) zzghbVarJ.k());
        map.put("AES_CMAC", new zzgcs((zzggz) zzggyVarJ.k(), 1));
        zzggy zzggyVarJ2 = zzggz.J();
        zzggyVarJ2.o(32);
        zzghb zzghbVarJ2 = zzghc.J();
        zzghbVarJ2.o(16);
        zzggyVarJ2.p((zzghc) zzghbVarJ2.k());
        map.put("AES256_CMAC", new zzgcs((zzggz) zzggyVarJ2.k(), 1));
        zzggy zzggyVarJ3 = zzggz.J();
        zzggyVarJ3.o(32);
        zzghb zzghbVarJ3 = zzghc.J();
        zzghbVarJ3.o(16);
        zzggyVarJ3.p((zzghc) zzghbVarJ3.k());
        map.put("AES256_CMAC_RAW", new zzgcs((zzggz) zzggyVarJ3.k(), 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ void d(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzggz zzggzVar = (zzggz) zzgrwVar;
        zzges.n(zzggzVar.M());
        zzges.o(zzggzVar.I());
    }
}
