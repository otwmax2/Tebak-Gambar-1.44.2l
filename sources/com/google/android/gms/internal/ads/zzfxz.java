package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfxz extends zzgct {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfya f18845b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfxz(zzfya zzfyaVar, Class cls) {
        super(cls);
        this.f18845b = zzfyaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ zzgrw a(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzghx zzghxVar = (zzghx) zzgrwVar;
        zzght zzghtVarJ = zzghu.J();
        zzghtVarJ.o(zzgpe.J(zzgoe.a(zzghxVar.I())));
        zzghtVarJ.p(zzghxVar.M());
        zzghtVarJ.q(0);
        return (zzghu) zzghtVarJ.k();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* synthetic */ zzgrw b(zzgpe zzgpeVar) throws zzgqy {
        return zzghx.L(zzgpeVar, zzgpy.a());
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final Map c() throws GeneralSecurityException {
        HashMap map = new HashMap();
        map.put("AES128_EAX", zzfya.k(16, 16, 1));
        map.put("AES128_EAX_RAW", zzfya.k(16, 16, 3));
        map.put("AES256_EAX", zzfya.k(32, 16, 1));
        map.put("AES256_EAX_RAW", zzfya.k(32, 16, 3));
        return Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final /* bridge */ /* synthetic */ void d(zzgrw zzgrwVar) throws GeneralSecurityException {
        zzghx zzghxVar = (zzghx) zzgrwVar;
        zzgog.a(zzghxVar.I());
        if (zzghxVar.M().I() != 12 && zzghxVar.M().I() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }
}
