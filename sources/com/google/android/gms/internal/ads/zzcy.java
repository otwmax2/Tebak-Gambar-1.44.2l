package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzcy f14182b = new zzcy(zzfqk.u());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f14183c = zzew.p(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzn f14184d = new zzn() { // from class: com.google.android.gms.internal.ads.zzcv
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfqk f14185a;

    public zzcy(List list) {
        this.f14185a = zzfqk.s(list);
    }

    public final zzfqk a() {
        return this.f14185a;
    }

    public final boolean b(int i10) {
        for (int i11 = 0; i11 < this.f14185a.size(); i11++) {
            zzcx zzcxVar = (zzcx) this.f14185a.get(i11);
            if (zzcxVar.c() && zzcxVar.a() == i10) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzcy.class != obj.getClass()) {
            return false;
        }
        return this.f14185a.equals(((zzcy) obj).f14185a);
    }

    public final int hashCode() {
        return this.f14185a.hashCode();
    }
}
