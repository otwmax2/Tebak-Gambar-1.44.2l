package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzccr implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f11849o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f11850p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ int f11851q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzccu f11852r;

    zzccr(zzccu zzccuVar, String str, String str2, int i10) {
        this.f11852r = zzccuVar;
        this.f11849o = str;
        this.f11850p = str2;
        this.f11851q = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheComplete");
        map.put("src", this.f11849o);
        map.put("cachedSrc", this.f11850p);
        map.put("totalBytes", Integer.toString(this.f11851q));
        zzccu.f(this.f11852r, "onPrecacheEvent", map);
    }
}
