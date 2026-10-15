package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfwc implements zzfwe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzgcu f18773a;

    zzfwc(zzgcu zzgcuVar) {
        this.f18773a = zzgcuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final Class a() {
        return this.f18773a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final Set b() {
        return this.f18773a.j();
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final zzfvy c(Class cls) throws GeneralSecurityException {
        try {
            return new zzfwa(this.f18773a, cls);
        } catch (IllegalArgumentException e10) {
            throw new GeneralSecurityException("Primitive type not supported", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final Class d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfwe
    public final zzfvy zzb() {
        zzgcu zzgcuVar = this.f18773a;
        return new zzfwa(zzgcuVar, zzgcuVar.g());
    }
}
