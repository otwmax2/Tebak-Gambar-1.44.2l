package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzccq implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ String f11839o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ String f11840p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ int f11841q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ int f11842r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ long f11843s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ long f11844t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ boolean f11845u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final /* synthetic */ int f11846v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final /* synthetic */ int f11847w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final /* synthetic */ zzccu f11848x;

    zzccq(zzccu zzccuVar, String str, String str2, int i10, int i11, long j10, long j11, boolean z10, int i12, int i13) {
        this.f11848x = zzccuVar;
        this.f11839o = str;
        this.f11840p = str2;
        this.f11841q = i10;
        this.f11842r = i11;
        this.f11843s = j10;
        this.f11844t = j11;
        this.f11845u = z10;
        this.f11846v = i12;
        this.f11847w = i13;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.f11839o);
        map.put("cachedSrc", this.f11840p);
        map.put("bytesLoaded", Integer.toString(this.f11841q));
        map.put("totalBytes", Integer.toString(this.f11842r));
        map.put("bufferedDuration", Long.toString(this.f11843s));
        map.put("totalDuration", Long.toString(this.f11844t));
        map.put("cacheReady", true != this.f11845u ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        map.put("playerCount", Integer.toString(this.f11846v));
        map.put("playerPreparedCount", Integer.toString(this.f11847w));
        zzccu.f(this.f11848x, "onPrecacheEvent", map);
    }
}
