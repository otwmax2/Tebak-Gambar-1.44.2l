package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcpb implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcor f13697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13698b;

    public zzcpb(zzcor zzcorVar, zzgxl zzgxlVar) {
        this.f13697a = zzcorVar;
        this.f13698b = zzgxlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set setSingleton = Collections.singleton(new zzdbu((zzcqb) this.f13698b.zzb(), zzbzn.f11619f));
        zzgxg.b(setSingleton);
        return setSingleton;
    }
}
