package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcco implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f11823o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f11824p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ int f11825q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ int f11826r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzccu f11827s;

    zzcco(zzccu zzccuVar, String str, String str2, int i10, int i11, boolean z10) {
        this.f11827s = zzccuVar;
        this.f11823o = str;
        this.f11824p = str2;
        this.f11825q = i10;
        this.f11826r = i11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.f11823o);
        map.put("cachedSrc", this.f11824p);
        map.put("bytesLoaded", Integer.toString(this.f11825q));
        map.put("totalBytes", Integer.toString(this.f11826r));
        map.put("cacheReady", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        zzccu.f(this.f11827s, "onPrecacheEvent", map);
    }
}
