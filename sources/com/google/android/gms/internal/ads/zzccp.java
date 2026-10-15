package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzccp implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f11828o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f11829p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ long f11830q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ long f11831r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ long f11832s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ long f11833t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ long f11834u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final /* synthetic */ boolean f11835v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final /* synthetic */ int f11836w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final /* synthetic */ int f11837x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final /* synthetic */ zzccu f11838y;

    zzccp(zzccu zzccuVar, String str, String str2, long j10, long j11, long j12, long j13, long j14, boolean z10, int i10, int i11) {
        this.f11838y = zzccuVar;
        this.f11828o = str;
        this.f11829p = str2;
        this.f11830q = j10;
        this.f11831r = j11;
        this.f11832s = j12;
        this.f11833t = j13;
        this.f11834u = j14;
        this.f11835v = z10;
        this.f11836w = i10;
        this.f11837x = i11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.f11828o);
        map.put("cachedSrc", this.f11829p);
        map.put("bufferedDuration", Long.toString(this.f11830q));
        map.put("totalDuration", Long.toString(this.f11831r));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue()) {
            map.put("qoeLoadedBytes", Long.toString(this.f11832s));
            map.put("qoeCachedBytes", Long.toString(this.f11833t));
            map.put("totalBytes", Long.toString(this.f11834u));
            map.put("reportTime", Long.toString(com.google.android.gms.ads.internal.zzt.b().a()));
        }
        map.put("cacheReady", true != this.f11835v ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        map.put("playerCount", Integer.toString(this.f11836w));
        map.put("playerPreparedCount", Integer.toString(this.f11837x));
        zzccu.f(this.f11838y, "onPrecacheEvent", map);
    }
}
