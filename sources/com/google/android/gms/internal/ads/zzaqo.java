package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaqo extends zzaog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f9728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Boolean f9729c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Boolean f9730d;

    public zzaqo() {
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    protected final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, this.f9728b);
        map.put(1, this.f9729c);
        map.put(2, this.f9730d);
        return map;
    }

    public zzaqo(String str) {
        HashMap mapA = zzaog.a(str);
        if (mapA != null) {
            this.f9728b = (Long) mapA.get(0);
            this.f9729c = (Boolean) mapA.get(1);
            this.f9730d = (Boolean) mapA.get(2);
        }
    }
}
