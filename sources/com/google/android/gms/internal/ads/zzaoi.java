package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaoi extends zzaog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f9542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f9543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f9544d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f9545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f9546f;

    public zzaoi() {
        this.f9542b = "E";
        this.f9543c = -1L;
        this.f9544d = "E";
        this.f9545e = "E";
        this.f9546f = "E";
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    protected final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, this.f9542b);
        map.put(4, this.f9546f);
        map.put(3, this.f9545e);
        map.put(2, this.f9544d);
        map.put(1, Long.valueOf(this.f9543c));
        return map;
    }

    public zzaoi(String str) {
        this.f9542b = "E";
        this.f9543c = -1L;
        this.f9544d = "E";
        this.f9545e = "E";
        this.f9546f = "E";
        HashMap mapA = zzaog.a(str);
        if (mapA != null) {
            this.f9542b = mapA.get(0) == null ? "E" : (String) mapA.get(0);
            this.f9543c = mapA.get(1) != null ? ((Long) mapA.get(1)).longValue() : -1L;
            this.f9544d = mapA.get(2) == null ? "E" : (String) mapA.get(2);
            this.f9545e = mapA.get(3) == null ? "E" : (String) mapA.get(3);
            this.f9546f = mapA.get(4) != null ? (String) mapA.get(4) : "E";
        }
    }
}
