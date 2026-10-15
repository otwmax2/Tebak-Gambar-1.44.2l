package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcja implements zzdqi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzchy f12871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcjg f12872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Long f12873c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f12874d;

    /* synthetic */ zzcja(zzchy zzchyVar, zzcjg zzcjgVar, zzciz zzcizVar) {
        this.f12871a = zzchyVar;
        this.f12872b = zzcjgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdqi
    public final /* bridge */ /* synthetic */ zzdqi W(long j10) {
        this.f12873c = Long.valueOf(j10);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdqi
    public final zzdqj a() {
        zzgxg.c(this.f12873c, Long.class);
        zzgxg.c(this.f12874d, String.class);
        return new zzcjc(this.f12871a, this.f12872b, this.f12873c, this.f12874d, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdqi
    public final /* synthetic */ zzdqi o(String str) {
        Objects.requireNonNull(str);
        this.f12874d = str;
        return this;
    }
}
