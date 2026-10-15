package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzddf implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdcz f14386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f14388c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f14389d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f14390e;

    public zzddf(zzdcz zzdczVar, zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f14386a = zzdczVar;
        this.f14387b = zzgxlVar;
        this.f14388c = zzgxlVar2;
        this.f14389d = zzgxlVar3;
        this.f14390e = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.f14387b.zzb();
        final zzbzg zzbzgVarA = ((zzcgu) this.f14388c).a();
        final zzeyc zzeycVarA = ((zzcrc) this.f14389d).a();
        final zzeyx zzeyxVarA = ((zzcuf) this.f14390e).a();
        return new zzdbu(new zzcwc() { // from class: com.google.android.gms.internal.ads.zzdcy
            @Override // com.google.android.gms.internal.ads.zzcwc
            public final void k() {
                com.google.android.gms.ads.internal.zzt.u().n(context, zzbzgVarA.f11605o, zzeycVarA.D.toString(), zzeyxVarA.f17733f);
            }
        }, zzbzn.f11619f);
    }
}
