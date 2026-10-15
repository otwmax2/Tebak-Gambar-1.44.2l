package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdrj extends zzbjo {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Object f15450o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f15451p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ long f15452q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzfec f15453r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzbzs f15454s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ zzdrk f15455t;

    zzdrj(zzdrk zzdrkVar, Object obj, String str, long j10, zzfec zzfecVar, zzbzs zzbzsVar) {
        this.f15455t = zzdrkVar;
        this.f15450o = obj;
        this.f15451p = str;
        this.f15452q = j10;
        this.f15453r = zzfecVar;
        this.f15454s = zzbzsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void c() {
        synchronized (this.f15450o) {
            this.f15455t.v(this.f15451p, true, BuildConfig.FLAVOR, (int) (com.google.android.gms.ads.internal.zzt.b().b() - this.f15452q));
            this.f15455t.f15467l.d(this.f15451p);
            this.f15455t.f15470o.O(this.f15451p);
            zzfep zzfepVar = this.f15455t.f15471p;
            zzfec zzfecVar = this.f15453r;
            zzfecVar.y0(true);
            zzfepVar.b(zzfecVar.j());
            this.f15454s.c(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void s(String str) {
        synchronized (this.f15450o) {
            this.f15455t.v(this.f15451p, false, str, (int) (com.google.android.gms.ads.internal.zzt.b().b() - this.f15452q));
            this.f15455t.f15467l.b(this.f15451p, "error");
            this.f15455t.f15470o.n(this.f15451p, "error");
            zzfep zzfepVar = this.f15455t.f15471p;
            zzfec zzfecVar = this.f15453r;
            zzfecVar.D(str);
            zzfecVar.y0(false);
            zzfepVar.b(zzfecVar.j());
            this.f15454s.c(Boolean.FALSE);
        }
    }
}
