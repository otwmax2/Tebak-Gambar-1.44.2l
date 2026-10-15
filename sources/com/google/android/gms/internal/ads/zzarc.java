package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzarc extends zzaog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f9790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Long f9791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Long f9792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Long f9793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Long f9794f;

    public zzarc() {
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    protected final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, this.f9790b);
        map.put(1, this.f9791c);
        map.put(2, this.f9792d);
        map.put(3, this.f9793e);
        map.put(4, this.f9794f);
        return map;
    }

    public zzarc(String str) {
        HashMap mapA = zzaog.a(str);
        if (mapA != null) {
            this.f9790b = (Long) mapA.get(0);
            this.f9791c = (Long) mapA.get(1);
            this.f9792d = (Long) mapA.get(2);
            this.f9793e = (Long) mapA.get(3);
            this.f9794f = (Long) mapA.get(4);
        }
    }
}
