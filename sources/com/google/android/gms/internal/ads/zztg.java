package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zztg implements zzsq, zzsp {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzsq f20677o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f20678p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzsp f20679q;

    public zztg(zzsq zzsqVar, long j10) {
        this.f20677o = zzsqVar;
        this.f20678p = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long D(long j10) {
        return this.f20677o.D(j10 - this.f20678p) + this.f20678p;
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final long a() {
        long jA = this.f20677o.a();
        if (jA == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return jA + this.f20678p;
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final void b(long j10) {
        this.f20677o.b(j10 - this.f20678p);
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final boolean c(long j10) {
        return this.f20677o.c(j10 - this.f20678p);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long d() {
        long jD = this.f20677o.d();
        if (jD == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return jD + this.f20678p;
    }

    @Override // com.google.android.gms.internal.ads.zzsp
    public final void e(zzsq zzsqVar) {
        zzsp zzspVar = this.f20679q;
        Objects.requireNonNull(zzspVar);
        zzspVar.e(this);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final zzur f() {
        return this.f20677o.f();
    }

    @Override // com.google.android.gms.internal.ads.zzuk
    public final /* bridge */ /* synthetic */ void g(zzul zzulVar) {
        zzsp zzspVar = this.f20679q;
        Objects.requireNonNull(zzspVar);
        zzspVar.g(this);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void h(long j10, boolean z10) {
        this.f20677o.h(j10 - this.f20678p, false);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void i() throws IOException {
        this.f20677o.i();
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long j(zzwe[] zzweVarArr, boolean[] zArr, zzuj[] zzujVarArr, boolean[] zArr2, long j10) {
        zzuj[] zzujVarArr2 = new zzuj[zzujVarArr.length];
        int i10 = 0;
        while (true) {
            zzuj zzujVarC = null;
            if (i10 >= zzujVarArr.length) {
                break;
            }
            zzth zzthVar = (zzth) zzujVarArr[i10];
            if (zzthVar != null) {
                zzujVarC = zzthVar.c();
            }
            zzujVarArr2[i10] = zzujVarC;
            i10++;
        }
        long j11 = this.f20677o.j(zzweVarArr, zArr, zzujVarArr2, zArr2, j10 - this.f20678p);
        for (int i11 = 0; i11 < zzujVarArr.length; i11++) {
            zzuj zzujVar = zzujVarArr2[i11];
            if (zzujVar == null) {
                zzujVarArr[i11] = null;
            } else {
                zzuj zzujVar2 = zzujVarArr[i11];
                if (zzujVar2 == null || ((zzth) zzujVar2).c() != zzujVar) {
                    zzujVarArr[i11] = new zzth(zzujVar, this.f20678p);
                }
            }
        }
        return j11 + this.f20678p;
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void m(zzsp zzspVar, long j10) {
        this.f20679q = zzspVar;
        this.f20677o.m(this, j10 - this.f20678p);
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final boolean n() {
        return this.f20677o.n();
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long o(long j10, zzkq zzkqVar) {
        return this.f20677o.o(j10 - this.f20678p, zzkqVar) + this.f20678p;
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final long zzb() {
        long jZzb = this.f20677o.zzb();
        if (jZzb == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return jZzb + this.f20678p;
    }
}
