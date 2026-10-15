package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeuy implements zzfbe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzevs f17449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzevu f17450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzl f17451c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f17452d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f17453e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzw f17454f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final zzfat f17455g;

    public zzeuy(zzevs zzevsVar, zzevu zzevuVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, Executor executor, com.google.android.gms.ads.internal.client.zzw zzwVar, zzfat zzfatVar) {
        this.f17449a = zzevsVar;
        this.f17450b = zzevuVar;
        this.f17451c = zzlVar;
        this.f17452d = str;
        this.f17453e = executor;
        this.f17454f = zzwVar;
        this.f17455g = zzfatVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfbe
    public final zzfat zza() {
        return this.f17455g;
    }

    @Override // com.google.android.gms.internal.ads.zzfbe
    public final Executor zzb() {
        return this.f17453e;
    }
}
