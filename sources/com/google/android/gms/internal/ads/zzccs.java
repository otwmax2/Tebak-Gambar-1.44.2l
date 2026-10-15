package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzccs implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f11853o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f11854p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ long f11855q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzccu f11856r;

    zzccs(zzccu zzccuVar, String str, String str2, long j10) {
        this.f11856r = zzccuVar;
        this.f11853o = str;
        this.f11854p = str2;
        this.f11855q = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheComplete");
        map.put("src", this.f11853o);
        map.put("cachedSrc", this.f11854p);
        map.put("totalDuration", Long.toString(this.f11855q));
        zzccu.f(this.f11856r, "onPrecacheEvent", map);
    }
}
