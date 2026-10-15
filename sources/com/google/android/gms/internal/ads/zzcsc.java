package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcsc implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13872c;

    public zzcsc(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f13870a = zzgxlVar;
        this.f13871b = zzgxlVar2;
        this.f13872c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return ((zzcgw) this.f13871b).zzb().a((Clock) this.f13870a.zzb(), ((zzcuf) this.f13872c).a().f17733f);
    }
}
