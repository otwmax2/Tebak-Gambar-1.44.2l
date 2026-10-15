package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzss f19961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f19962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f19963c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f19964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f19965e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f19966f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f19967g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f19968h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f19969i;

    zzjs(zzss zzssVar, long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14 = true;
        zzdl.d(!z13 || z11);
        if (z12 && !z11) {
            z14 = false;
        }
        zzdl.d(z14);
        this.f19961a = zzssVar;
        this.f19962b = j10;
        this.f19963c = j11;
        this.f19964d = j12;
        this.f19965e = j13;
        this.f19966f = false;
        this.f19967g = z11;
        this.f19968h = z12;
        this.f19969i = z13;
    }

    public final zzjs a(long j10) {
        return j10 == this.f19963c ? this : new zzjs(this.f19961a, this.f19962b, j10, this.f19964d, this.f19965e, false, this.f19967g, this.f19968h, this.f19969i);
    }

    public final zzjs b(long j10) {
        return j10 == this.f19962b ? this : new zzjs(this.f19961a, j10, this.f19963c, this.f19964d, this.f19965e, false, this.f19967g, this.f19968h, this.f19969i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzjs.class == obj.getClass()) {
            zzjs zzjsVar = (zzjs) obj;
            if (this.f19962b == zzjsVar.f19962b && this.f19963c == zzjsVar.f19963c && this.f19964d == zzjsVar.f19964d && this.f19965e == zzjsVar.f19965e && this.f19967g == zzjsVar.f19967g && this.f19968h == zzjsVar.f19968h && this.f19969i == zzjsVar.f19969i && zzew.u(this.f19961a, zzjsVar.f19961a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f19961a.hashCode() + 527;
        int i10 = (int) this.f19962b;
        int i11 = (int) this.f19963c;
        return (((((((((((((iHashCode * 31) + i10) * 31) + i11) * 31) + ((int) this.f19964d)) * 31) + ((int) this.f19965e)) * 961) + (this.f19967g ? 1 : 0)) * 31) + (this.f19968h ? 1 : 0)) * 31) + (this.f19969i ? 1 : 0);
    }
}
