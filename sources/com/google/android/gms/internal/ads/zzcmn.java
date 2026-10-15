package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcmn implements zzcur {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzeyf f13490o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzeyo f13491p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzffb f13492q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzfff f13493r;

    public zzcmn(zzeyo zzeyoVar, zzfff zzfffVar, zzffb zzffbVar) {
        this.f13491p = zzeyoVar;
        this.f13493r = zzfffVar;
        this.f13492q = zzffbVar;
        this.f13490o = zzeyoVar.f17703b.f17700b;
    }

    @Override // com.google.android.gms.internal.ads.zzcur
    public final void v(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.f13493r.d(this.f13492q.c(this.f13491p, null, this.f13490o.f17678a));
    }
}
