package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzajg implements zzajf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzzx f9357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzabb f9358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzaji f9359c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzaf f9360d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f9361e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f9362f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9363g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f9364h;

    public zzajg(zzzx zzzxVar, zzabb zzabbVar, zzaji zzajiVar, String str, int i10) throws zzbu {
        this.f9357a = zzzxVar;
        this.f9358b = zzabbVar;
        this.f9359c = zzajiVar;
        int i11 = zzajiVar.f9374b * zzajiVar.f9377e;
        int i12 = zzajiVar.f9376d;
        int i13 = i11 / 8;
        if (i12 != i13) {
            throw zzbu.a("Expected block size: " + i13 + "; got: " + i12, null);
        }
        int i14 = zzajiVar.f9375c * i13;
        int i15 = i14 * 8;
        int iMax = Math.max(i13, i14 / 10);
        this.f9361e = iMax;
        zzad zzadVar = new zzad();
        zzadVar.s(str);
        zzadVar.d0(i15);
        zzadVar.o(i15);
        zzadVar.l(iMax);
        zzadVar.e0(zzajiVar.f9374b);
        zzadVar.t(zzajiVar.f9375c);
        zzadVar.n(i10);
        this.f9360d = zzadVar.y();
    }

    @Override // com.google.android.gms.internal.ads.zzajf
    public final void W(long j10) {
        this.f9362f = j10;
        this.f9363g = 0;
        this.f9364h = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzajf
    public final void a(int i10, long j10) {
        this.f9357a.e(new zzajl(this.f9359c, 1, i10, j10));
        this.f9358b.e(this.f9360d);
    }

    @Override // com.google.android.gms.internal.ads.zzajf
    public final boolean b(zzzv zzzvVar, long j10) throws IOException {
        long j11;
        int i10;
        int i11;
        long j12 = j10;
        while (j12 > 0 && (i10 = this.f9363g) < (i11 = this.f9361e)) {
            int iA = zzaaz.a(this.f9358b, zzzvVar, (int) Math.min(i11 - i10, j12), true);
            if (iA == -1) {
                j12 = 0;
            } else {
                this.f9363g += iA;
                j12 -= (long) iA;
            }
        }
        int i12 = this.f9359c.f9376d;
        int i13 = this.f9363g / i12;
        if (i13 > 0) {
            long jH0 = this.f9362f + zzew.h0(this.f9364h, 1000000L, r6.f9375c);
            int i14 = i13 * i12;
            int i15 = this.f9363g - i14;
            this.f9358b.f(jH0, 1, i14, i15, null);
            this.f9364h += (long) i13;
            this.f9363g = i15;
            j11 = 0;
        } else {
            j11 = 0;
        }
        return j12 <= j11;
    }
}
