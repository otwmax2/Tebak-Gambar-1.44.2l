package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdde implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdcz f14384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14385b;

    public zzdde(zzdcz zzdczVar, zzgxl zzgxlVar) {
        this.f14384a = zzdczVar;
        this.f14385b = zzgxlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set setSingleton = Collections.singleton(new zzdbu((zzctm) this.f14385b.zzb(), zzbzn.f11619f));
        zzgxg.b(setSingleton);
        return setSingleton;
    }
}
