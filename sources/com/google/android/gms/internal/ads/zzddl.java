package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzddl implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdcz f14401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14402b;

    public zzddl(zzdcz zzdczVar, zzgxl zzgxlVar) {
        this.f14401a = zzdczVar;
        this.f14402b = zzgxlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set setSingleton = Collections.singleton(new zzdbu((zzctm) this.f14402b.zzb(), zzbzn.f11619f));
        zzgxg.b(setSingleton);
        return setSingleton;
    }
}
