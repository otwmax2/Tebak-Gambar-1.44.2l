package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f8319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8323f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8324g;

    public final boolean a(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        if (!zzaao.m(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0 || (i13 = (i10 >>> 12) & 15) == 0 || i13 == 15 || (i14 = (i10 >>> 10) & 3) == 3) {
            return false;
        }
        this.f8318a = i11;
        this.f8319b = zzaao.f8325a[3 - i12];
        int i15 = zzaao.f8326b[i14];
        this.f8321d = i15;
        if (i11 == 2) {
            i15 /= 2;
            this.f8321d = i15;
        } else if (i11 == 0) {
            i15 /= 4;
            this.f8321d = i15;
        }
        int i16 = (i10 >>> 9) & 1;
        this.f8324g = zzaao.l(i11, i12);
        if (i12 == 3) {
            int i17 = i11 == 3 ? zzaao.f8327c[i13 - 1] : zzaao.f8328d[i13 - 1];
            this.f8323f = i17;
            this.f8320c = (((i17 * 12) / i15) + i16) * 4;
        } else {
            if (i11 == 3) {
                int i18 = i12 == 2 ? zzaao.f8329e[i13 - 1] : zzaao.f8330f[i13 - 1];
                this.f8323f = i18;
                this.f8320c = ((i18 * 144) / i15) + i16;
            } else {
                int i19 = zzaao.f8331g[i13 - 1];
                this.f8323f = i19;
                this.f8320c = (((i12 == 1 ? 72 : 144) * i19) / i15) + i16;
            }
        }
        this.f8322e = ((i10 >> 6) & 3) == 3 ? 1 : 2;
        return true;
    }
}
