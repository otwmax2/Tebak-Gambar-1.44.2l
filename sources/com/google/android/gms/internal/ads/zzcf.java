package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcf {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f12053j = zzew.p(0);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f12054k = zzew.p(1);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f12055l = zzew.p(2);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f12056m = zzew.p(3);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f12057n = zzew.p(4);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f12058o = zzew.p(5);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f12059p = zzew.p(6);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final zzn f12060q = new zzn() { // from class: com.google.android.gms.internal.ads.zzce
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f12061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzbg f12063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f12064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f12065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f12066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f12067g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f12068h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f12069i;

    public zzcf(Object obj, int i10, zzbg zzbgVar, Object obj2, int i11, long j10, long j11, int i12, int i13) {
        this.f12061a = obj;
        this.f12062b = i10;
        this.f12063c = zzbgVar;
        this.f12064d = obj2;
        this.f12065e = i11;
        this.f12066f = j10;
        this.f12067g = j11;
        this.f12068h = i12;
        this.f12069i = i13;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzcf.class == obj.getClass()) {
            zzcf zzcfVar = (zzcf) obj;
            if (this.f12062b == zzcfVar.f12062b && this.f12065e == zzcfVar.f12065e && this.f12066f == zzcfVar.f12066f && this.f12067g == zzcfVar.f12067g && this.f12068h == zzcfVar.f12068h && this.f12069i == zzcfVar.f12069i && zzfnp.a(this.f12061a, zzcfVar.f12061a) && zzfnp.a(this.f12064d, zzcfVar.f12064d) && zzfnp.a(this.f12063c, zzcfVar.f12063c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f12061a, Integer.valueOf(this.f12062b), this.f12063c, this.f12064d, Integer.valueOf(this.f12065e), Long.valueOf(this.f12066f), Long.valueOf(this.f12067g), Integer.valueOf(this.f12068h), Integer.valueOf(this.f12069i)});
    }
}
