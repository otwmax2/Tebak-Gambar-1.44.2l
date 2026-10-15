package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzblc implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzblq f10866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzbkm f10867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzblr f10868c;

    zzblc(zzblr zzblrVar, zzblq zzblqVar, zzbkm zzbkmVar) {
        this.f10868c = zzblrVar;
        this.f10866a = zzblqVar;
        this.f10867b = zzbkmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        synchronized (this.f10868c.f10896a) {
            if (this.f10866a.a() != -1 && this.f10866a.a() != 1) {
                this.f10868c.f10904i = 0;
                zzbkm zzbkmVar = this.f10867b;
                zzbkmVar.c1("/log", zzbho.f10719g);
                zzbkmVar.c1("/result", zzbho.f10727o);
                this.f10866a.d(this.f10867b);
                this.f10868c.f10903h = this.f10866a;
                com.google.android.gms.ads.internal.util.zze.k("Successfully loaded JS Engine.");
            }
        }
    }
}
