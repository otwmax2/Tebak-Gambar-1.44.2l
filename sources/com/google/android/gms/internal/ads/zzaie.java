package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaie implements zzaja {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzahn f9237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzem f9238b = new zzem(new byte[10], 10);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9239c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9240d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzeu f9241e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9242f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f9243g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9244h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f9245i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f9246j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f9247k;

    public zzaie(zzahn zzahnVar) {
        this.f9237a = zzahnVar;
    }

    private final void d(int i10) {
        this.f9239c = i10;
        this.f9240d = 0;
    }

    private final boolean e(zzen zzenVar, byte[] bArr, int i10) {
        int iMin = Math.min(zzenVar.i(), i10 - this.f9240d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            zzenVar.g(iMin);
        } else {
            zzenVar.b(bArr, this.f9240d, iMin);
        }
        int i11 = this.f9240d + iMin;
        this.f9240d = i11;
        return i11 == i10;
    }

    @Override // com.google.android.gms.internal.ads.zzaja
    public final void a() {
        this.f9239c = 0;
        this.f9240d = 0;
        this.f9244h = false;
        this.f9237a.b();
    }

    @Override // com.google.android.gms.internal.ads.zzaja
    public final void b(zzeu zzeuVar, zzzx zzzxVar, zzaiz zzaizVar) {
        this.f9241e = zzeuVar;
        this.f9237a.d(zzzxVar, zzaizVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaja
    public final void c(zzen zzenVar, int i10) throws zzbu {
        long jB;
        int i11;
        zzdl.b(this.f9241e);
        int i12 = -1;
        int i13 = 2;
        int i14 = 1;
        if ((i10 & 1) != 0) {
            int i15 = this.f9239c;
            if (i15 != 0 && i15 != 1) {
                if (i15 != 2) {
                    int i16 = this.f9246j;
                    if (i16 != -1) {
                        zzee.e("PesReader", "Unexpected start indicator: expected " + i16 + " more bytes");
                    }
                    this.f9237a.a();
                } else {
                    zzee.e("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            d(1);
        }
        int i17 = i10;
        while (zzenVar.i() > 0) {
            int i18 = this.f9239c;
            if (i18 != 0) {
                if (i18 != i14) {
                    if (i18 != i13) {
                        int i19 = zzenVar.i();
                        int i20 = this.f9246j;
                        int i21 = i20 != i12 ? i19 - i20 : 0;
                        if (i21 > 0) {
                            i19 -= i21;
                            zzenVar.e(zzenVar.k() + i19);
                        }
                        this.f9237a.c(zzenVar);
                        int i22 = this.f9246j;
                        if (i22 != i12) {
                            int i23 = i22 - i19;
                            this.f9246j = i23;
                            if (i23 == 0) {
                                this.f9237a.a();
                                d(i14);
                            }
                        }
                    } else {
                        if (e(zzenVar, this.f9238b.f16938a, Math.min(10, this.f9245i)) && e(zzenVar, null, this.f9245i)) {
                            this.f9238b.j(0);
                            if (this.f9242f) {
                                this.f9238b.l(4);
                                long jD = this.f9238b.d(3);
                                this.f9238b.l(i14);
                                int iD = this.f9238b.d(15) << 15;
                                this.f9238b.l(i14);
                                long jD2 = this.f9238b.d(15);
                                this.f9238b.l(i14);
                                if (this.f9244h || !this.f9243g) {
                                    i11 = iD;
                                } else {
                                    this.f9238b.l(4);
                                    long jD3 = ((long) this.f9238b.d(3)) << 30;
                                    this.f9238b.l(i14);
                                    int iD2 = this.f9238b.d(15) << 15;
                                    this.f9238b.l(i14);
                                    long jD4 = this.f9238b.d(15);
                                    this.f9238b.l(i14);
                                    i11 = iD;
                                    this.f9241e.b(jD3 | ((long) iD2) | jD4);
                                    this.f9244h = true;
                                }
                                jB = this.f9241e.b((jD << 30) | ((long) i11) | jD2);
                            } else {
                                jB = -9223372036854775807L;
                            }
                            i17 |= true != this.f9247k ? 0 : 4;
                            this.f9237a.e(jB, i17);
                            d(3);
                            i12 = -1;
                            i13 = 2;
                            i14 = 1;
                        }
                    }
                } else if (e(zzenVar, this.f9238b.f16938a, 9)) {
                    int i24 = 0;
                    this.f9238b.j(0);
                    int iD3 = this.f9238b.d(24);
                    i14 = 1;
                    if (iD3 != 1) {
                        zzee.e("PesReader", "Unexpected start code prefix: " + iD3);
                        i12 = -1;
                        this.f9246j = -1;
                    } else {
                        this.f9238b.l(8);
                        int iD4 = this.f9238b.d(16);
                        this.f9238b.l(5);
                        this.f9247k = this.f9238b.n();
                        this.f9238b.l(2);
                        this.f9242f = this.f9238b.n();
                        this.f9243g = this.f9238b.n();
                        this.f9238b.l(6);
                        int iD5 = this.f9238b.d(8);
                        this.f9245i = iD5;
                        if (iD4 == 0) {
                            this.f9246j = -1;
                        } else {
                            int i25 = (iD4 - 3) - iD5;
                            this.f9246j = i25;
                            if (i25 < 0) {
                                zzee.e("PesReader", "Found negative packet payload size: " + i25);
                                i12 = -1;
                                this.f9246j = -1;
                            }
                            i24 = 2;
                        }
                        i12 = -1;
                        i24 = 2;
                    }
                    d(i24);
                } else {
                    i12 = -1;
                    i14 = 1;
                }
            } else {
                zzenVar.g(zzenVar.i());
            }
            i13 = 2;
        }
    }
}
