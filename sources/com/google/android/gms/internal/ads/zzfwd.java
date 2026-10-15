package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfwd implements zzfwe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzgdy f18774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzgcu f18775b;

    zzfwd(zzgdy zzgdyVar, zzgcu zzgcuVar) {
        this.f18774a = zzgdyVar;
        this.f18775b = zzgcuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final Class a() {
        return this.f18774a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final Set b() {
        return this.f18774a.j();
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final zzfvy c(Class cls) throws GeneralSecurityException {
        try {
            return new zzfxd(this.f18774a, this.f18775b, cls);
        } catch (IllegalArgumentException e10) {
            throw new GeneralSecurityException("Primitive type not supported", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final Class d() {
        return this.f18775b.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final zzfvy zzb() {
        zzgdy zzgdyVar = this.f18774a;
        return new zzfxd(zzgdyVar, this.f18775b, zzgdyVar.g());
    }
}
