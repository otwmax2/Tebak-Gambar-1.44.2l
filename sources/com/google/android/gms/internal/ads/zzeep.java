package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeep implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeeo f16458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f16460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f16461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f16462e;

    public zzeep(zzeeo zzeeoVar, zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f16458a = zzeeoVar;
        this.f16459b = zzgxlVar;
        this.f16460c = zzgxlVar2;
        this.f16461d = zzgxlVar3;
        this.f16462e = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeeh((Clock) this.f16459b.zzb(), ((zzeej) this.f16460c).zzb(), (zzeay) this.f16461d.zzb(), (zzfff) this.f16462e.zzb());
    }
}
