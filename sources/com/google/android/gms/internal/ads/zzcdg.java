package com.google.android.gms.internal.ads;

import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcdg implements zzjp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzwt f11913a = new zzwt(true, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f11914b = 15000000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f11915c = 30000000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f11916d = 2500000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f11917e = 5000000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f11918f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f11919g;

    zzcdg() {
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void a() {
        h(true);
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final boolean b(long j10, float f10, boolean z10, long j11) {
        long j12 = z10 ? this.f11917e : this.f11916d;
        return j12 <= 0 || j10 >= j12;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final boolean c() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void d() {
        h(true);
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void e(zzkn[] zzknVarArr, zzur zzurVar, zzwe[] zzweVarArr) {
        int i10 = 0;
        this.f11918f = 0;
        while (true) {
            int length = zzknVarArr.length;
            if (i10 >= 2) {
                this.f11913a.f(this.f11918f);
                return;
            } else {
                if (zzweVarArr[i10] != null) {
                    this.f11918f += zzknVarArr[i10].zzb() != 1 ? 131072000 : 13107200;
                }
                i10++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final boolean f(long j10, long j11, float f10) {
        boolean z10 = true;
        char c10 = j11 > this.f11915c ? (char) 0 : j11 < this.f11914b ? (char) 2 : (char) 1;
        int iA = this.f11913a.a();
        int i10 = this.f11918f;
        if (c10 != 2 && (c10 != 1 || !this.f11919g || iA >= i10)) {
            z10 = false;
        }
        this.f11919g = z10;
        return z10;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final zzwt g() {
        return this.f11913a;
    }

    @VisibleForTesting
    final void h(boolean z10) {
        this.f11918f = 0;
        this.f11919g = false;
        if (z10) {
            this.f11913a.e();
        }
    }

    public final synchronized void i(int i10) {
        this.f11916d = ((long) i10) * 1000;
    }

    public final synchronized void j(int i10) {
        this.f11917e = ((long) i10) * 1000;
    }

    public final synchronized void k(int i10) {
        this.f11915c = ((long) i10) * 1000;
    }

    public final synchronized void l(int i10) {
        this.f11914b = ((long) i10) * 1000;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final long zza() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void zzb() {
        h(false);
    }
}
