package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzkt implements zzjq {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzdm f20088o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f20089p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f20090q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f20091r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzby f20092s = zzby.f11503d;

    public zzkt(zzdm zzdmVar) {
        this.f20088o = zzdmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjq
    public final zzby a() {
        return this.f20092s;
    }

    public final void b(long j10) {
        this.f20090q = j10;
        if (this.f20089p) {
            this.f20091r = SystemClock.elapsedRealtime();
        }
    }

    public final void c() {
        if (this.f20089p) {
            return;
        }
        this.f20091r = SystemClock.elapsedRealtime();
        this.f20089p = true;
    }

    public final void d() {
        if (this.f20089p) {
            b(zza());
            this.f20089p = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjq
    public final void e(zzby zzbyVar) {
        if (this.f20089p) {
            b(zza());
        }
        this.f20092s = zzbyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjq
    public final long zza() {
        long j10 = this.f20090q;
        if (!this.f20089p) {
            return j10;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f20091r;
        zzby zzbyVar = this.f20092s;
        return j10 + (zzbyVar.f11507a == 1.0f ? zzew.g0(jElapsedRealtime) : zzbyVar.a(jElapsedRealtime));
    }
}
