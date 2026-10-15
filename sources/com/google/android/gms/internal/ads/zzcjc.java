package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcjc implements zzdqj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Long f12875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f12876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzchy f12877c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzcjg f12878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzcjc f12879e = this;

    /* synthetic */ zzcjc(zzchy zzchyVar, zzcjg zzcjgVar, Long l10, String str, zzcjb zzcjbVar) {
        this.f12877c = zzchyVar;
        this.f12878d = zzcjgVar;
        this.f12875a = l10;
        this.f12876b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdqj
    public final zzdqt zza() {
        long jLongValue = this.f12875a.longValue();
        zzcjg zzcjgVar = this.f12878d;
        return zzdqu.a(jLongValue, zzcjgVar.f12883a, zzdqn.b(zzcjgVar.f12884b), this.f12877c, this.f12876b);
    }

    @Override // com.google.android.gms.internal.ads.zzdqj
    public final zzdqx zzb() {
        long jLongValue = this.f12875a.longValue();
        zzcjg zzcjgVar = this.f12878d;
        return zzdqy.a(jLongValue, zzcjgVar.f12883a, zzdqn.b(zzcjgVar.f12884b), this.f12877c, this.f12876b);
    }
}
