package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzajl implements zzaax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaji f9381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f9382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f9383c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f9384d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f9385e;

    public zzajl(zzaji zzajiVar, int i10, long j10, long j11) {
        this.f9381a = zzajiVar;
        this.f9382b = i10;
        this.f9383c = j10;
        long j12 = (j11 - j10) / ((long) zzajiVar.f9376d);
        this.f9384d = j12;
        this.f9385e = a(j12);
    }

    private final long a(long j10) {
        return zzew.h0(j10 * ((long) this.f9382b), 1000000L, this.f9381a.f9375c);
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f9385e;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        long jC0 = zzew.c0((((long) this.f9381a.f9375c) * j10) / (((long) this.f9382b) * 1000000), 0L, this.f9384d - 1);
        long j11 = this.f9383c + (((long) this.f9381a.f9376d) * jC0);
        long jA = a(jC0);
        zzaay zzaayVar = new zzaay(jA, j11);
        if (jA >= j10 || jC0 == this.f9384d - 1) {
            return new zzaav(zzaayVar, zzaayVar);
        }
        long j12 = jC0 + 1;
        return new zzaav(zzaayVar, new zzaay(a(j12), this.f9383c + (((long) this.f9381a.f9376d) * j12)));
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return true;
    }
}
