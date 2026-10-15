package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzze {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zzze f21172d = new zzze(-3, -9223372036854775807L, -1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f21173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f21174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f21175c;

    private zzze(int i10, long j10, long j11) {
        this.f21173a = i10;
        this.f21174b = j10;
        this.f21175c = j11;
    }

    public static zzze d(long j10, long j11) {
        return new zzze(-1, j10, j11);
    }

    public static zzze e(long j10) {
        return new zzze(0, -9223372036854775807L, j10);
    }

    public static zzze f(long j10, long j11) {
        return new zzze(-2, j10, j11);
    }
}
