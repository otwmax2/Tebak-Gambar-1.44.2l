package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcgo implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f12144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f12145b;

    public zzcgo(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f12144a = zzgxlVar;
        this.f12145b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdrm zzdrmVar = (zzdrm) this.f12144a.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setSingleton = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10402w1)).booleanValue() ? Collections.singleton(new zzdbu(zzdrmVar, zzfuuVar)) : Collections.emptySet();
        zzgxg.b(setSingleton);
        return setSingleton;
    }
}
