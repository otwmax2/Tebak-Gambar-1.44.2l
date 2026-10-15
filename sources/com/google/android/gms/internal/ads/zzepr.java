package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzepr implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f17156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f17157e;

    public zzepr(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5) {
        this.f17153a = zzgxlVar;
        this.f17154b = zzgxlVar2;
        this.f17155c = zzgxlVar3;
        this.f17156d = zzgxlVar4;
        this.f17157e = zzgxlVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzepq zzb() {
        Context contextA = ((zzcgj) this.f17153a).a();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzepq(contextA, zzfuuVar, ((zzgxj) this.f17155c).zzb(), (zzfen) this.f17156d.zzb(), (zzdpi) this.f17157e.zzb());
    }
}
