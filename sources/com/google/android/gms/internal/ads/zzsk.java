package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzsk implements zzsq, zzsp {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final zzss f20618o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f20619p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzsu f20620q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private zzsq f20621r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzsp f20622s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f20623t = -9223372036854775807L;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzwt f20624u;

    public zzsk(zzss zzssVar, zzwt zzwtVar, long j10, byte[] bArr) {
        this.f20618o = zzssVar;
        this.f20624u = zzwtVar;
        this.f20619p = j10;
    }

    private final long t(long j10) {
        long j11 = this.f20623t;
        return j11 != -9223372036854775807L ? j11 : j10;
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long D(long j10) {
        zzsq zzsqVar = this.f20621r;
        int i10 = zzew.f17494a;
        return zzsqVar.D(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final long a() {
        zzsq zzsqVar = this.f20621r;
        int i10 = zzew.f17494a;
        return zzsqVar.a();
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final void b(long j10) {
        zzsq zzsqVar = this.f20621r;
        int i10 = zzew.f17494a;
        zzsqVar.b(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final boolean c(long j10) {
        zzsq zzsqVar = this.f20621r;
        return zzsqVar != null && zzsqVar.c(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long d() {
        zzsq zzsqVar = this.f20621r;
        int i10 = zzew.f17494a;
        return zzsqVar.d();
    }

    @Override // com.google.android.gms.internal.ads.zzsp
    public final void e(zzsq zzsqVar) {
        zzsp zzspVar = this.f20622s;
        int i10 = zzew.f17494a;
        zzspVar.e(this);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final zzur f() {
        zzsq zzsqVar = this.f20621r;
        int i10 = zzew.f17494a;
        return zzsqVar.f();
    }

    @Override // com.google.android.gms.internal.ads.zzuk
    public final /* bridge */ /* synthetic */ void g(zzul zzulVar) {
        zzsp zzspVar = this.f20622s;
        int i10 = zzew.f17494a;
        zzspVar.g(this);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void h(long j10, boolean z10) {
        zzsq zzsqVar = this.f20621r;
        int i10 = zzew.f17494a;
        zzsqVar.h(j10, false);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void i() throws IOException {
        try {
            zzsq zzsqVar = this.f20621r;
            if (zzsqVar != null) {
                zzsqVar.i();
                return;
            }
            zzsu zzsuVar = this.f20620q;
            if (zzsuVar != null) {
                zzsuVar.E();
            }
        } catch (IOException e10) {
            throw e10;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long j(zzwe[] zzweVarArr, boolean[] zArr, zzuj[] zzujVarArr, boolean[] zArr2, long j10) {
        long j11;
        long j12 = this.f20623t;
        if (j12 == -9223372036854775807L || j10 != this.f20619p) {
            j11 = j10;
        } else {
            this.f20623t = -9223372036854775807L;
            j11 = j12;
        }
        zzsq zzsqVar = this.f20621r;
        int i10 = zzew.f17494a;
        return zzsqVar.j(zzweVarArr, zArr, zzujVarArr, zArr2, j11);
    }

    public final long k() {
        return this.f20623t;
    }

    public final long l() {
        return this.f20619p;
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void m(zzsp zzspVar, long j10) {
        this.f20622s = zzspVar;
        zzsq zzsqVar = this.f20621r;
        if (zzsqVar != null) {
            zzsqVar.m(this, t(this.f20619p));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final boolean n() {
        zzsq zzsqVar = this.f20621r;
        return zzsqVar != null && zzsqVar.n();
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long o(long j10, zzkq zzkqVar) {
        zzsq zzsqVar = this.f20621r;
        int i10 = zzew.f17494a;
        return zzsqVar.o(j10, zzkqVar);
    }

    public final void p(zzss zzssVar) {
        long jT = t(this.f20619p);
        zzsu zzsuVar = this.f20620q;
        Objects.requireNonNull(zzsuVar);
        zzsq zzsqVarI = zzsuVar.i(zzssVar, this.f20624u, jT);
        this.f20621r = zzsqVarI;
        if (this.f20622s != null) {
            zzsqVarI.m(this, jT);
        }
    }

    public final void q(long j10) {
        this.f20623t = j10;
    }

    public final void r() {
        zzsq zzsqVar = this.f20621r;
        if (zzsqVar != null) {
            zzsu zzsuVar = this.f20620q;
            Objects.requireNonNull(zzsuVar);
            zzsuVar.a(zzsqVar);
        }
    }

    public final void s(zzsu zzsuVar) {
        zzdl.f(this.f20620q == null);
        this.f20620q = zzsuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final long zzb() {
        zzsq zzsqVar = this.f20621r;
        int i10 = zzew.f17494a;
        return zzsqVar.zzb();
    }
}
