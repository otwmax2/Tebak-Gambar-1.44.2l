package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdlr implements zzbie {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcvv f15109o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzbup f15110p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f15111q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f15112r;

    public zzdlr(zzcvv zzcvvVar, zzeyc zzeycVar) {
        this.f15109o = zzcvvVar;
        this.f15110p = zzeycVar.f17656m;
        this.f15111q = zzeycVar.f17652k;
        this.f15112r = zzeycVar.f17654l;
    }

    @Override // com.google.android.gms.internal.ads.zzbie
    @ParametersAreNonnullByDefault
    public final void I(zzbup zzbupVar) {
        int i10;
        String str;
        zzbup zzbupVar2 = this.f15110p;
        if (zzbupVar2 != null) {
            zzbupVar = zzbupVar2;
        }
        if (zzbupVar != null) {
            str = zzbupVar.f11356o;
            i10 = zzbupVar.f11357p;
        } else {
            i10 = 1;
            str = BuildConfig.FLAVOR;
        }
        this.f15109o.Y0(new zzbua(str, i10), this.f15111q, this.f15112r);
    }

    @Override // com.google.android.gms.internal.ads.zzbie
    public final void a() {
        this.f15109o.c();
    }

    @Override // com.google.android.gms.internal.ads.zzbie
    public final void zzb() {
        this.f15109o.b();
    }
}
