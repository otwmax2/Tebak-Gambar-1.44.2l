package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahs implements zzahn {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final float[] f9124l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzajc f9125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f9126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean[] f9127c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzahq f9128d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzaic f9129e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzahr f9130f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f9131g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f9132h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzabb f9133i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9134j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f9135k;

    public zzahs() {
        this(null);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void b() {
        zzaar.e(this.f9127c);
        this.f9128d.b();
        zzahr zzahrVar = this.f9130f;
        if (zzahrVar != null) {
            zzahrVar.d();
        }
        this.f9129e.b();
        this.f9131g = 0L;
        this.f9135k = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void c(zzen zzenVar) {
        int i10;
        float f10;
        float f11;
        zzdl.b(this.f9130f);
        zzdl.b(this.f9133i);
        int iK = zzenVar.k();
        int iL = zzenVar.l();
        byte[] bArrH = zzenVar.h();
        this.f9131g += (long) zzenVar.i();
        this.f9133i.d(zzenVar, zzenVar.i());
        while (true) {
            int iA = zzaar.a(bArrH, iK, iL, this.f9127c);
            if (iA == iL) {
                break;
            }
            int i11 = iA + 3;
            int i12 = zzenVar.h()[i11] & 255;
            int i13 = iA - iK;
            if (!this.f9134j) {
                if (i13 > 0) {
                    this.f9128d.a(bArrH, iK, iA);
                }
                if (this.f9128d.c(i12, i13 < 0 ? -i13 : 0)) {
                    zzabb zzabbVar = this.f9133i;
                    zzahq zzahqVar = this.f9128d;
                    int i14 = zzahqVar.f9114d;
                    String str = this.f9132h;
                    Objects.requireNonNull(str);
                    byte[] bArrCopyOf = Arrays.copyOf(zzahqVar.f9115e, zzahqVar.f9113c);
                    zzem zzemVar = new zzem(bArrCopyOf, bArrCopyOf.length);
                    zzemVar.m(i14);
                    zzemVar.m(4);
                    zzemVar.k();
                    zzemVar.l(8);
                    if (zzemVar.n()) {
                        zzemVar.l(4);
                        zzemVar.l(3);
                    }
                    int iD = zzemVar.d(4);
                    if (iD == 15) {
                        int iD2 = zzemVar.d(8);
                        int iD3 = zzemVar.d(8);
                        if (iD3 == 0) {
                            zzee.e("H263Reader", "Invalid aspect ratio");
                            f11 = 1.0f;
                        } else {
                            f10 = iD2 / iD3;
                            f11 = f10;
                        }
                    } else if (iD < 7) {
                        f10 = f9124l[iD];
                        f11 = f10;
                    } else {
                        zzee.e("H263Reader", "Invalid aspect ratio");
                        f11 = 1.0f;
                    }
                    if (zzemVar.n()) {
                        zzemVar.l(2);
                        zzemVar.l(1);
                        if (zzemVar.n()) {
                            zzemVar.l(15);
                            zzemVar.k();
                            zzemVar.l(15);
                            zzemVar.k();
                            zzemVar.l(15);
                            zzemVar.k();
                            zzemVar.l(3);
                            zzemVar.l(11);
                            zzemVar.k();
                            zzemVar.l(15);
                            zzemVar.k();
                        }
                    }
                    if (zzemVar.d(2) != 0) {
                        zzee.e("H263Reader", "Unhandled video object layer shape");
                    }
                    zzemVar.k();
                    int iD4 = zzemVar.d(16);
                    zzemVar.k();
                    if (zzemVar.n()) {
                        if (iD4 == 0) {
                            zzee.e("H263Reader", "Invalid vop_increment_time_resolution");
                        } else {
                            int i15 = iD4 - 1;
                            int i16 = 0;
                            while (i15 > 0) {
                                i15 >>= 1;
                                i16++;
                            }
                            zzemVar.l(i16);
                        }
                    }
                    zzemVar.k();
                    int iD5 = zzemVar.d(13);
                    zzemVar.k();
                    int iD6 = zzemVar.d(13);
                    zzemVar.k();
                    zzemVar.k();
                    zzad zzadVar = new zzad();
                    zzadVar.h(str);
                    zzadVar.s("video/mp4v-es");
                    zzadVar.x(iD5);
                    zzadVar.f(iD6);
                    zzadVar.p(f11);
                    zzadVar.i(Collections.singletonList(bArrCopyOf));
                    zzabbVar.e(zzadVar.y());
                    this.f9134j = true;
                }
            }
            this.f9130f.a(bArrH, iK, iA);
            zzaic zzaicVar = this.f9129e;
            if (i13 > 0) {
                zzaicVar.a(bArrH, iK, iA);
                i10 = 0;
            } else {
                i10 = -i13;
            }
            if (this.f9129e.d(i10)) {
                zzaic zzaicVar2 = this.f9129e;
                int iB = zzaar.b(zzaicVar2.f9232d, zzaicVar2.f9233e);
                zzen zzenVar2 = this.f9126b;
                int i17 = zzew.f17494a;
                zzenVar2.d(this.f9129e.f9232d, iB);
                this.f9125a.a(this.f9135k, this.f9126b);
            }
            if (i12 == 178) {
                if (zzenVar.h()[iA + 2] == 1) {
                    this.f9129e.c(178);
                }
                i12 = 178;
            }
            int i18 = iL - iA;
            this.f9130f.b(this.f9131g - ((long) i18), i18, this.f9134j);
            this.f9130f.c(i12, this.f9135k);
            iK = i11;
        }
        if (!this.f9134j) {
            this.f9128d.a(bArrH, iK, iL);
        }
        this.f9130f.a(bArrH, iK, iL);
        this.f9129e.a(bArrH, iK, iL);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void d(zzzx zzzxVar, zzaiz zzaizVar) {
        zzaizVar.c();
        this.f9132h = zzaizVar.b();
        zzabb zzabbVarQ = zzzxVar.q(zzaizVar.a(), 2);
        this.f9133i = zzabbVarQ;
        this.f9130f = new zzahr(zzabbVarQ);
        this.f9125a.b(zzzxVar, zzaizVar);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f9135k = j10;
        }
    }

    zzahs(zzajc zzajcVar) {
        this.f9125a = zzajcVar;
        this.f9127c = new boolean[4];
        this.f9128d = new zzahq(128);
        this.f9135k = -9223372036854775807L;
        this.f9129e = new zzaic(178, 128);
        this.f9126b = new zzen();
    }
}
