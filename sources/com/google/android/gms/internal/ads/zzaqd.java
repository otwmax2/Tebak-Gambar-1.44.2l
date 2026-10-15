package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaqd extends zzaog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f9714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f9715c;

    public zzaqd() {
        this.f9714b = -1L;
        this.f9715c = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    protected final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, Long.valueOf(this.f9714b));
        map.put(1, Long.valueOf(this.f9715c));
        return map;
    }

    public zzaqd(String str) {
        this.f9714b = -1L;
        this.f9715c = -1L;
        HashMap mapA = zzaog.a(str);
        if (mapA != null) {
            this.f9714b = ((Long) mapA.get(0)).longValue();
            this.f9715c = ((Long) mapA.get(1)).longValue();
        }
    }
}
