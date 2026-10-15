package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaqs extends zzaog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f9741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Long f9742c;

    public zzaqs() {
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    protected final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, this.f9741b);
        map.put(1, this.f9742c);
        return map;
    }

    public zzaqs(String str) {
        HashMap mapA = zzaog.a(str);
        if (mapA != null) {
            this.f9741b = (Long) mapA.get(0);
            this.f9742c = (Long) mapA.get(1);
        }
    }
}
