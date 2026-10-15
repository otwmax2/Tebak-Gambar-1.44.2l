package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzzc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f21164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f21165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f21166c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f21167d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f21168e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f21169f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f21170g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f21171h;

    protected zzzc(long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
        this.f21164a = j10;
        this.f21165b = j11;
        this.f21168e = j13;
        this.f21169f = j14;
        this.f21170g = j15;
        this.f21166c = j16;
        this.f21171h = f(j11, 0L, j13, j14, j15, j16);
    }

    protected static long f(long j10, long j11, long j12, long j13, long j14, long j15) {
        if (j13 + 1 >= j14 || 1 + j11 >= j12) {
            return j13;
        }
        long j16 = (long) ((j10 - j11) * ((j14 - j13) / (j12 - j11)));
        return zzew.c0(((j13 + j16) - j15) - (j16 / 20), j13, j14 - 1);
    }

    static /* bridge */ /* synthetic */ void g(zzzc zzzcVar, long j10, long j11) {
        zzzcVar.f21168e = j10;
        zzzcVar.f21170g = j11;
        zzzcVar.i();
    }

    static /* bridge */ /* synthetic */ void h(zzzc zzzcVar, long j10, long j11) {
        zzzcVar.f21167d = j10;
        zzzcVar.f21169f = j11;
        zzzcVar.i();
    }

    private final void i() {
        this.f21171h = f(this.f21165b, this.f21167d, this.f21168e, this.f21169f, this.f21170g, this.f21166c);
    }
}
