package com.google.android.gms.internal.ads;

import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaia implements zzahn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f9196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f9197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzem f9198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzabb f9199d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f9200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzaf f9201f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9202g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f9203h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f9204i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f9205j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f9206k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f9207l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f9208m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f9209n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f9210o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f9211p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f9212q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f9213r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f9214s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f9215t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f9216u;

    public zzaia(String str) {
        this.f9196a = str;
        zzen zzenVar = new zzen(1024);
        this.f9197b = zzenVar;
        byte[] bArrH = zzenVar.h();
        this.f9198c = new zzem(bArrH, bArrH.length);
        this.f9206k = -9223372036854775807L;
    }

    private final int f(zzem zzemVar) throws zzbu {
        int iA = zzemVar.a();
        zzyr zzyrVarB = zzys.b(zzemVar, true);
        this.f9216u = zzyrVarB.f21130c;
        this.f9213r = zzyrVarB.f21128a;
        this.f9215t = zzyrVarB.f21129b;
        return iA - zzemVar.a();
    }

    private static long g(zzem zzemVar) {
        return zzemVar.d((zzemVar.d(2) + 1) * 8);
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void b() {
        this.f9202g = 0;
        this.f9206k = -9223372036854775807L;
        this.f9207l = false;
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void c(zzen zzenVar) throws zzbu {
        int i10;
        int i11;
        int iD;
        boolean zN;
        zzdl.b(this.f9199d);
        while (zzenVar.i() > 0) {
            int i12 = this.f9202g;
            if (i12 != 0) {
                if (i12 == 1) {
                    int iS = zzenVar.s();
                    if ((iS & 224) == 224) {
                        this.f9205j = iS;
                        this.f9202g = 2;
                    } else if (iS != 86) {
                        this.f9202g = 0;
                    }
                } else if (i12 != 2) {
                    int iMin = Math.min(zzenVar.i(), this.f9204i - this.f9203h);
                    zzenVar.b(this.f9198c.f16938a, this.f9203h, iMin);
                    int i13 = this.f9203h + iMin;
                    this.f9203h = i13;
                    if (i13 == this.f9204i) {
                        this.f9198c.j(0);
                        zzem zzemVar = this.f9198c;
                        if (zzemVar.n()) {
                            if (this.f9207l) {
                            }
                            this.f9202g = 0;
                        } else {
                            this.f9207l = true;
                            int iD2 = zzemVar.d(1);
                            if (iD2 == 1) {
                                iD = zzemVar.d(1);
                                i11 = 1;
                            } else {
                                i11 = iD2;
                                iD = 0;
                            }
                            this.f9208m = iD;
                            if (iD != 0) {
                                throw zzbu.a(null, null);
                            }
                            if (i11 == 1) {
                                g(zzemVar);
                                i11 = 1;
                            }
                            if (!zzemVar.n()) {
                                throw zzbu.a(null, null);
                            }
                            this.f9209n = zzemVar.d(6);
                            int iD3 = zzemVar.d(4);
                            int iD4 = zzemVar.d(3);
                            if (iD3 != 0 || iD4 != 0) {
                                throw zzbu.a(null, null);
                            }
                            if (i11 == 0) {
                                int iC = zzemVar.c();
                                int iF = f(zzemVar);
                                zzemVar.j(iC);
                                byte[] bArr = new byte[(iF + 7) / 8];
                                zzemVar.g(bArr, 0, iF);
                                zzad zzadVar = new zzad();
                                zzadVar.h(this.f9200e);
                                zzadVar.s("audio/mp4a-latm");
                                zzadVar.f0(this.f9216u);
                                zzadVar.e0(this.f9215t);
                                zzadVar.t(this.f9213r);
                                zzadVar.i(Collections.singletonList(bArr));
                                zzadVar.k(this.f9196a);
                                zzaf zzafVarY = zzadVar.y();
                                if (!zzafVarY.equals(this.f9201f)) {
                                    this.f9201f = zzafVarY;
                                    this.f9214s = 1024000000 / ((long) zzafVarY.f8745z);
                                    this.f9199d.e(zzafVarY);
                                }
                            } else {
                                zzemVar.l(((int) g(zzemVar)) - f(zzemVar));
                            }
                            int iD5 = zzemVar.d(3);
                            this.f9210o = iD5;
                            if (iD5 == 0) {
                                zzemVar.l(8);
                            } else if (iD5 == 1) {
                                zzemVar.l(9);
                            } else if (iD5 == 3 || iD5 == 4 || iD5 == 5) {
                                zzemVar.l(6);
                            } else {
                                if (iD5 != 6 && iD5 != 7) {
                                    throw new IllegalStateException();
                                }
                                zzemVar.l(1);
                            }
                            boolean zN2 = zzemVar.n();
                            this.f9211p = zN2;
                            this.f9212q = 0L;
                            if (zN2) {
                                if (i11 != 1) {
                                    do {
                                        zN = zzemVar.n();
                                        this.f9212q = (this.f9212q << 8) + ((long) zzemVar.d(8));
                                    } while (zN);
                                } else {
                                    this.f9212q = g(zzemVar);
                                }
                            }
                            if (zzemVar.n()) {
                                zzemVar.l(8);
                            }
                        }
                        if (this.f9208m != 0) {
                            throw zzbu.a(null, null);
                        }
                        if (this.f9209n != 0) {
                            throw zzbu.a(null, null);
                        }
                        if (this.f9210o != 0) {
                            throw zzbu.a(null, null);
                        }
                        int i14 = 0;
                        while (true) {
                            int iD6 = zzemVar.d(8);
                            i10 = i14 + iD6;
                            if (iD6 != 255) {
                                break;
                            } else {
                                i14 = i10;
                            }
                        }
                        int iC2 = zzemVar.c();
                        if ((iC2 & 7) == 0) {
                            this.f9197b.f(iC2 >> 3);
                        } else {
                            zzemVar.g(this.f9197b.h(), 0, i10 * 8);
                            this.f9197b.f(0);
                        }
                        this.f9199d.d(this.f9197b, i10);
                        long j10 = this.f9206k;
                        if (j10 != -9223372036854775807L) {
                            this.f9199d.f(j10, 1, i10, 0, null);
                            this.f9206k += this.f9214s;
                        }
                        if (this.f9211p) {
                            zzemVar.l((int) this.f9212q);
                        }
                        this.f9202g = 0;
                    } else {
                        continue;
                    }
                } else {
                    int iS2 = ((this.f9205j & (-225)) << 8) | zzenVar.s();
                    this.f9204i = iS2;
                    zzen zzenVar2 = this.f9197b;
                    if (iS2 > zzenVar2.h().length) {
                        zzenVar2.c(iS2);
                        zzem zzemVar2 = this.f9198c;
                        byte[] bArrH = this.f9197b.h();
                        zzemVar2.i(bArrH, bArrH.length);
                    }
                    this.f9203h = 0;
                    this.f9202g = 3;
                }
            } else if (zzenVar.s() == 86) {
                this.f9202g = 1;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void d(zzzx zzzxVar, zzaiz zzaizVar) {
        zzaizVar.c();
        this.f9199d = zzzxVar.q(zzaizVar.a(), 1);
        this.f9200e = zzaizVar.b();
    }

    @Override // com.google.android.gms.internal.ads.zzahn
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f9206k = j10;
        }
    }
}
