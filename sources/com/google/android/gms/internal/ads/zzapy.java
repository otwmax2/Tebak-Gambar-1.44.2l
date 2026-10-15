package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzapy extends zzaog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f9706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Long f9707c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Long f9708d;

    public zzapy() {
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    protected final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, this.f9706b);
        map.put(1, this.f9707c);
        map.put(2, this.f9708d);
        return map;
    }

    public zzapy(String str) {
        HashMap mapA = zzaog.a(str);
        if (mapA != null) {
            this.f9706b = (Long) mapA.get(0);
            this.f9707c = (Long) mapA.get(1);
            this.f9708d = (Long) mapA.get(2);
        }
    }
}
