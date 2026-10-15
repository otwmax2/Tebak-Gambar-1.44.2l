package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzzj implements zzaax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f21186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f21187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f21188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f21189d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f21190e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f21191f;

    public zzzj(long j10, long j11, int i10, int i11, boolean z10) {
        long jE;
        this.f21186a = j10;
        this.f21187b = j11;
        this.f21188c = i11 == -1 ? 1 : i11;
        this.f21190e = i10;
        if (j10 == -1) {
            this.f21189d = -1L;
            jE = -9223372036854775807L;
        } else {
            this.f21189d = j10 - j11;
            jE = e(j10, j11, i10);
        }
        this.f21191f = jE;
    }

    private static long e(long j10, long j11, int i10) {
        return (Math.max(0L, j10 - j11) * 8000000) / ((long) i10);
    }

    public final long a(long j10) {
        return e(j10, this.f21187b, this.f21190e);
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f21191f;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        long j11 = this.f21189d;
        if (j11 == -1) {
            zzaay zzaayVar = new zzaay(0L, this.f21187b);
            return new zzaav(zzaayVar, zzaayVar);
        }
        long j12 = ((long) this.f21190e) * j10;
        long j13 = this.f21188c;
        long jMin = ((j12 / 8000000) / j13) * j13;
        if (j11 != -1) {
            jMin = Math.min(jMin, j11 - j13);
        }
        long jMax = this.f21187b + Math.max(jMin, 0L);
        long jA = a(jMax);
        zzaay zzaayVar2 = new zzaay(jA, jMax);
        if (this.f21189d != -1 && jA < j10) {
            long j14 = jMax + ((long) this.f21188c);
            if (j14 < this.f21186a) {
                return new zzaav(zzaayVar2, new zzaay(a(j14), j14));
            }
        }
        return new zzaav(zzaayVar2, zzaayVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return this.f21189d != -1;
    }
}
