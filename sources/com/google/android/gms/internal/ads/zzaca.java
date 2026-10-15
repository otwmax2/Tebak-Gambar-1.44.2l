package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaca implements zzzu {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final zzaab f8450n = new zzaab() { // from class: com.google.android.gms.internal.ads.zzabz
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzaca.f8450n;
            return new zzzu[]{new zzaca(0)};
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f8451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f8452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzaac f8453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzzx f8454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzabb f8455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f8456f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzbq f8457g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzaah f8458h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f8459i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f8460j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private zzaby f8461k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f8462l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f8463m;

    public zzaca() {
        this(0);
    }

    private final long b(zzen zzenVar, boolean z10) {
        boolean zC;
        Objects.requireNonNull(this.f8458h);
        int iK = zzenVar.k();
        while (iK <= zzenVar.l() - 16) {
            zzenVar.f(iK);
            if (zzaad.c(zzenVar, this.f8458h, this.f8460j, this.f8453c)) {
                zzenVar.f(iK);
                return this.f8453c.f8288a;
            }
            iK++;
        }
        if (!z10) {
            zzenVar.f(iK);
            return -1L;
        }
        while (iK <= zzenVar.l() - this.f8459i) {
            zzenVar.f(iK);
            try {
                zC = zzaad.c(zzenVar, this.f8458h, this.f8460j, this.f8453c);
            } catch (IndexOutOfBoundsException unused) {
                zC = false;
            }
            if (zzenVar.k() <= zzenVar.l() && zC) {
                zzenVar.f(iK);
                return this.f8453c.f8288a;
            }
            iK++;
        }
        zzenVar.f(zzenVar.l());
        return -1L;
    }

    private final void c() {
        long j10 = this.f8463m * 1000000;
        zzaah zzaahVar = this.f8458h;
        int i10 = zzew.f17494a;
        this.f8455e.f(j10 / ((long) zzaahVar.f8297e), 1, this.f8462l, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws Throwable {
        zzaae.a(zzzvVar, false);
        zzen zzenVar = new zzen(4);
        ((zzzk) zzzvVar).k(zzenVar.h(), 0, 4, false);
        return zzenVar.A() == 1716281667;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final int e(zzzv zzzvVar, zzaau zzaauVar) throws Throwable {
        boolean zN;
        zzaax zzaawVar;
        boolean z10;
        int i10 = this.f8456f;
        if (i10 == 0) {
            zzzvVar.h();
            long jB = zzzvVar.b();
            zzbq zzbqVarA = zzaae.a(zzzvVar, true);
            ((zzzk) zzzvVar).o((int) (zzzvVar.b() - jB), false);
            this.f8457g = zzbqVarA;
            this.f8456f = 1;
            return 0;
        }
        if (i10 == 1) {
            ((zzzk) zzzvVar).k(this.f8451a, 0, 42, false);
            zzzvVar.h();
            this.f8456f = 2;
            return 0;
        }
        if (i10 == 2) {
            zzen zzenVar = new zzen(4);
            ((zzzk) zzzvVar).g(zzenVar.h(), 0, 4, false);
            if (zzenVar.A() != 1716281667) {
                throw zzbu.a("Failed to read FLAC stream marker.", null);
            }
            this.f8456f = 3;
            return 0;
        }
        if (i10 == 3) {
            zzaah zzaahVarE = this.f8458h;
            do {
                zzzvVar.h();
                zzem zzemVar = new zzem(new byte[4], 4);
                zzzk zzzkVar = (zzzk) zzzvVar;
                zzzkVar.k(zzemVar.f16938a, 0, 4, false);
                zN = zzemVar.n();
                int iD = zzemVar.d(7);
                int iD2 = zzemVar.d(24) + 4;
                if (iD == 0) {
                    byte[] bArr = new byte[38];
                    zzzkVar.g(bArr, 0, 38, false);
                    zzaahVarE = new zzaah(bArr, 4);
                } else {
                    if (zzaahVarE == null) {
                        throw new IllegalArgumentException();
                    }
                    if (iD == 3) {
                        zzen zzenVar2 = new zzen(iD2);
                        zzzkVar.g(zzenVar2.h(), 0, iD2, false);
                        zzaahVarE = zzaahVarE.f(zzaae.b(zzenVar2));
                    } else if (iD == 4) {
                        zzen zzenVar3 = new zzen(iD2);
                        zzzkVar.g(zzenVar3.h(), 0, iD2, false);
                        zzenVar3.g(4);
                        zzaahVarE = zzaahVarE.g(Arrays.asList(zzabh.c(zzenVar3, false, false).f8373b));
                    } else if (iD == 6) {
                        zzen zzenVar4 = new zzen(iD2);
                        zzzkVar.g(zzenVar4.h(), 0, iD2, false);
                        zzenVar4.g(4);
                        zzaahVarE = zzaahVarE.e(zzfqk.v(zzacu.h(zzenVar4)));
                    } else {
                        zzzkVar.o(iD2, false);
                    }
                }
                int i11 = zzew.f17494a;
                this.f8458h = zzaahVarE;
            } while (!zN);
            Objects.requireNonNull(zzaahVarE);
            this.f8459i = Math.max(zzaahVarE.f8295c, 6);
            this.f8455e.e(this.f8458h.c(this.f8451a, this.f8457g));
            this.f8456f = 4;
            return 0;
        }
        if (i10 == 4) {
            zzzvVar.h();
            zzen zzenVar5 = new zzen(2);
            ((zzzk) zzzvVar).k(zzenVar5.h(), 0, 2, false);
            int iW = zzenVar5.w();
            if ((iW >> 2) != 16382) {
                zzzvVar.h();
                throw zzbu.a("First frame does not start with sync code.", null);
            }
            zzzvVar.h();
            this.f8460j = iW;
            zzzx zzzxVar = this.f8454d;
            int i12 = zzew.f17494a;
            long jC = zzzvVar.c();
            long jD = zzzvVar.d();
            zzaah zzaahVar = this.f8458h;
            Objects.requireNonNull(zzaahVar);
            if (zzaahVar.f8303k != null) {
                zzaawVar = new zzaaf(zzaahVar, jC);
            } else if (jD == -1 || zzaahVar.f8302j <= 0) {
                zzaawVar = new zzaaw(zzaahVar.a(), 0L);
            } else {
                zzaby zzabyVar = new zzaby(zzaahVar, this.f8460j, jC, jD);
                this.f8461k = zzabyVar;
                zzaawVar = zzabyVar.b();
            }
            zzzxVar.e(zzaawVar);
            this.f8456f = 5;
            return 0;
        }
        Objects.requireNonNull(this.f8455e);
        zzaah zzaahVar2 = this.f8458h;
        Objects.requireNonNull(zzaahVar2);
        zzaby zzabyVar2 = this.f8461k;
        if (zzabyVar2 != null && zzabyVar2.e()) {
            return zzabyVar2.a(zzzvVar, zzaauVar);
        }
        if (this.f8463m == -1) {
            this.f8463m = zzaad.b(zzzvVar, zzaahVar2);
            return 0;
        }
        zzen zzenVar6 = this.f8452b;
        int iL = zzenVar6.l();
        if (iL < 32768) {
            int iE = zzzvVar.e(zzenVar6.h(), iL, 32768 - iL);
            z10 = iE == -1;
            if (!z10) {
                this.f8452b.e(iL + iE);
            } else if (this.f8452b.i() == 0) {
                c();
                return -1;
            }
        } else {
            z10 = false;
        }
        zzen zzenVar7 = this.f8452b;
        int iK = zzenVar7.k();
        int i13 = this.f8462l;
        int i14 = this.f8459i;
        if (i13 < i14) {
            zzenVar7.g(Math.min(i14 - i13, zzenVar7.i()));
        }
        long jB2 = b(this.f8452b, z10);
        zzen zzenVar8 = this.f8452b;
        int iK2 = zzenVar8.k() - iK;
        zzenVar8.f(iK);
        zzaaz.b(this.f8455e, this.f8452b, iK2);
        this.f8462l += iK2;
        if (jB2 != -1) {
            c();
            this.f8462l = 0;
            this.f8463m = jB2;
        }
        zzen zzenVar9 = this.f8452b;
        if (zzenVar9.i() >= 16) {
            return 0;
        }
        int i15 = zzenVar9.i();
        System.arraycopy(zzenVar9.h(), zzenVar9.k(), zzenVar9.h(), 0, i15);
        this.f8452b.f(0);
        this.f8452b.e(i15);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f8454d = zzzxVar;
        this.f8455e = zzzxVar.q(0, 1);
        zzzxVar.f0();
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        if (j10 == 0) {
            this.f8456f = 0;
        } else {
            zzaby zzabyVar = this.f8461k;
            if (zzabyVar != null) {
                zzabyVar.d(j11);
            }
        }
        this.f8463m = j11 != 0 ? -1L : 0L;
        this.f8462l = 0;
        this.f8452b.c(0);
    }

    public zzaca(int i10) {
        this.f8451a = new byte[42];
        this.f8452b = new zzen(new byte[32768], 0);
        this.f8453c = new zzaac();
        this.f8456f = 0;
    }
}
