package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdnx implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15252b;

    public zzdnx(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15251a = zzgxlVar;
        this.f15252b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        Set setSingleton = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10405w4)).booleanValue() ? Collections.singleton(new zzdbu(((zzdoq) this.f15252b).zzb(), zzfuuVar)) : Collections.emptySet();
        zzgxg.b(setSingleton);
        return setSingleton;
    }
}
