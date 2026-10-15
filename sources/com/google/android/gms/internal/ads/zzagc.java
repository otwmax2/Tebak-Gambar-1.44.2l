package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Pair;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzagc implements zzzu, zzaax {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zzaab f8867x = new zzaab() { // from class: com.google.android.gms.internal.ads.zzafz
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzagc.f8867x;
            return new zzzu[]{new zzagc(0)};
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzen f8868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f8869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzen f8870c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzen f8871d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayDeque f8872e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzage f8873f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f8874g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8875h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f8876i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f8877j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f8878k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private zzen f8879l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f8880m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f8881n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f8882o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f8883p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzzx f8884q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private zzagb[] f8885r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long[][] f8886s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f8887t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f8888u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f8889v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private zzaef f8890w;

    public zzagc() {
        this(0);
    }

    private static int i(int i10) {
        if (i10 != 1751476579) {
            return i10 != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static int j(zzagj zzagjVar, long j10) {
        int iA = zzagjVar.a(j10);
        return iA == -1 ? zzagjVar.b(j10) : iA;
    }

    private static long k(zzagj zzagjVar, long j10, long j11) {
        int iJ = j(zzagjVar, j10);
        return iJ == -1 ? j11 : Math.min(zzagjVar.f8932c[iJ], j11);
    }

    private final void l() {
        this.f8875h = 0;
        this.f8878k = 0;
    }

    private final void m(long j10) throws zzbu {
        zzbq zzbqVar;
        zzbq zzbqVar2;
        long j11;
        List list;
        int i10;
        zzbq zzbqVar3;
        long j12;
        int i11;
        while (!this.f8872e.isEmpty() && ((zzafh) this.f8872e.peek()).f8776b == j10) {
            zzafh zzafhVar = (zzafh) this.f8872e.pop();
            if (zzafhVar.f8780a == 1836019574) {
                ArrayList arrayList = new ArrayList();
                int i12 = this.f8889v;
                zzaaj zzaajVar = new zzaaj();
                zzafi zzafiVarD = zzafhVar.d(1969517665);
                if (zzafiVarD != null) {
                    Pair pairA = zzafr.a(zzafiVarD);
                    zzbq zzbqVar4 = (zzbq) pairA.first;
                    zzbq zzbqVar5 = (zzbq) pairA.second;
                    if (zzbqVar4 != null) {
                        zzaajVar.b(zzbqVar4);
                    }
                    zzbqVar = zzbqVar5;
                    zzbqVar2 = zzbqVar4;
                } else {
                    zzbqVar = null;
                    zzbqVar2 = null;
                }
                zzafh zzafhVarC = zzafhVar.c(1835365473);
                zzbq zzbqVarB = zzafhVarC != null ? zzafr.b(zzafhVarC) : null;
                List listC = zzafr.c(zzafhVar, zzaajVar, -9223372036854775807L, null, false, i12 == 1, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzaga
                    @Override // com.google.android.gms.internal.ads.zzfnj
                    public final Object a(Object obj) {
                        zzagg zzaggVar = (zzagg) obj;
                        zzaab zzaabVar = zzagc.f8867x;
                        return zzaggVar;
                    }
                });
                int size = listC.size();
                long j13 = -9223372036854775807L;
                zzbq zzbqVar6 = zzbqVar;
                int size2 = -1;
                int i13 = 0;
                long j14 = -9223372036854775807L;
                while (true) {
                    j11 = 0;
                    if (i13 >= size) {
                        break;
                    }
                    zzagj zzagjVar = (zzagj) listC.get(i13);
                    if (zzagjVar.f8931b == 0) {
                        list = listC;
                        i10 = size;
                        j12 = j13;
                        zzbqVar3 = zzbqVar6;
                    } else {
                        zzagg zzaggVar = zzagjVar.f8930a;
                        list = listC;
                        i10 = size;
                        long j15 = zzaggVar.f8901e;
                        if (j15 == j13) {
                            j15 = zzagjVar.f8937h;
                        }
                        long jMax = Math.max(j14, j15);
                        zzagb zzagbVar = new zzagb(zzaggVar, zzagjVar, this.f8884q.q(i13, zzaggVar.f8898b));
                        int i14 = "audio/true-hd".equals(zzaggVar.f8902f.f8731l) ? zzagjVar.f8934e * 16 : zzagjVar.f8934e + 30;
                        zzad zzadVarB = zzaggVar.f8902f.b();
                        zzadVarB.l(i14);
                        if (zzaggVar.f8898b == 2 && j15 > 0 && (i11 = zzagjVar.f8931b) > 1) {
                            zzadVarB.e(i11 / (j15 / 1000000.0f));
                        }
                        int i15 = zzaggVar.f8898b;
                        int i16 = zzafy.f8858b;
                        if (i15 == 1 && zzaajVar.a()) {
                            zzadVarB.c(zzaajVar.f8307a);
                            zzadVarB.d(zzaajVar.f8308b);
                        }
                        int i17 = zzaggVar.f8898b;
                        zzbq[] zzbqVarArr = new zzbq[2];
                        zzbqVarArr[0] = zzbqVar6;
                        zzbqVarArr[1] = this.f8874g.isEmpty() ? null : new zzbq(this.f8874g);
                        zzbqVar3 = zzbqVar6;
                        zzbq zzbqVar7 = new zzbq(-9223372036854775807L, new zzbp[0]);
                        if (i17 == 1) {
                            if (zzbqVar2 != null) {
                                zzbqVar7 = zzbqVar2;
                            }
                        } else if (i17 == 2 && zzbqVarB != null) {
                            for (int i18 = 0; i18 < zzbqVarB.h(); i18++) {
                                zzbp zzbpVarT = zzbqVarB.t(i18);
                                if (zzbpVarT instanceof zzaec) {
                                    zzaec zzaecVar = (zzaec) zzbpVarT;
                                    if ("com.android.capture.fps".equals(zzaecVar.f8616o)) {
                                        zzbqVar7 = new zzbq(-9223372036854775807L, zzaecVar);
                                        j12 = -9223372036854775807L;
                                        break;
                                    }
                                }
                            }
                        }
                        j12 = -9223372036854775807L;
                        for (int i19 = 0; i19 < 2; i19++) {
                            zzbqVar7 = zzbqVar7.w(zzbqVarArr[i19]);
                        }
                        if (zzbqVar7.h() > 0) {
                            zzadVarB.m(zzbqVar7);
                        }
                        zzagbVar.f8864c.e(zzadVarB.y());
                        if (zzaggVar.f8898b == 2 && size2 == -1) {
                            size2 = arrayList.size();
                        }
                        arrayList.add(zzagbVar);
                        j14 = jMax;
                    }
                    i13++;
                    j13 = j12;
                    zzbqVar6 = zzbqVar3;
                    listC = list;
                    size = i10;
                }
                this.f8887t = size2;
                this.f8888u = j14;
                zzagb[] zzagbVarArr = (zzagb[]) arrayList.toArray(new zzagb[0]);
                this.f8885r = zzagbVarArr;
                int length = zzagbVarArr.length;
                long[][] jArr = new long[length][];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i20 = 0; i20 < zzagbVarArr.length; i20++) {
                    jArr[i20] = new long[zzagbVarArr[i20].f8863b.f8931b];
                    jArr2[i20] = zzagbVarArr[i20].f8863b.f8935f[0];
                }
                int i21 = 0;
                while (i21 < zzagbVarArr.length) {
                    long j16 = Long.MAX_VALUE;
                    int i22 = -1;
                    for (int i23 = 0; i23 < zzagbVarArr.length; i23++) {
                        if (!zArr[i23]) {
                            long j17 = jArr2[i23];
                            if (j17 <= j16) {
                                i22 = i23;
                                j16 = j17;
                            }
                        }
                    }
                    int i24 = iArr[i22];
                    long[] jArr3 = jArr[i22];
                    jArr3[i24] = j11;
                    zzagj zzagjVar2 = zzagbVarArr[i22].f8863b;
                    j11 += (long) zzagjVar2.f8933d[i24];
                    int i25 = i24 + 1;
                    iArr[i22] = i25;
                    if (i25 < jArr3.length) {
                        jArr2[i22] = zzagjVar2.f8935f[i25];
                    } else {
                        zArr[i22] = true;
                        i21++;
                    }
                }
                this.f8886s = jArr;
                this.f8884q.f0();
                this.f8884q.e(this);
                this.f8872e.clear();
                this.f8875h = 2;
            } else if (!this.f8872e.isEmpty()) {
                ((zzafh) this.f8872e.peek()).e(zzafhVar);
            }
        }
        if (this.f8875h != 2) {
            l();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws IOException {
        return zzagf.b(zzzvVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f8888u;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        long j11;
        long j12;
        int iB;
        zzagb[] zzagbVarArr = this.f8885r;
        if (zzagbVarArr.length == 0) {
            zzaay zzaayVar = zzaay.f8353c;
            return new zzaav(zzaayVar, zzaayVar);
        }
        int i10 = this.f8887t;
        long jK = -1;
        if (i10 != -1) {
            zzagj zzagjVar = zzagbVarArr[i10].f8863b;
            int iJ = j(zzagjVar, j10);
            if (iJ == -1) {
                zzaay zzaayVar2 = zzaay.f8353c;
                return new zzaav(zzaayVar2, zzaayVar2);
            }
            long j13 = zzagjVar.f8935f[iJ];
            j11 = zzagjVar.f8932c[iJ];
            if (j13 >= j10 || iJ >= zzagjVar.f8931b - 1 || (iB = zzagjVar.b(j10)) == -1 || iB == iJ) {
                j12 = -9223372036854775807L;
            } else {
                j12 = zzagjVar.f8935f[iB];
                jK = zzagjVar.f8932c[iB];
            }
            j10 = j13;
        } else {
            j11 = Long.MAX_VALUE;
            j12 = -9223372036854775807L;
        }
        int i11 = 0;
        while (true) {
            zzagb[] zzagbVarArr2 = this.f8885r;
            if (i11 >= zzagbVarArr2.length) {
                break;
            }
            if (i11 != this.f8887t) {
                zzagj zzagjVar2 = zzagbVarArr2[i11].f8863b;
                long jK2 = k(zzagjVar2, j10, j11);
                if (j12 != -9223372036854775807L) {
                    jK = k(zzagjVar2, j12, jK);
                }
                j11 = jK2;
            }
            i11++;
        }
        zzaay zzaayVar3 = new zzaay(j10, j11);
        return j12 == -9223372036854775807L ? new zzaav(zzaayVar3, zzaayVar3) : new zzaav(zzaayVar3, new zzaay(j12, jK));
    }

    /* JADX WARN: Removed duplicated region for block: B:260:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007f  */
    @Override // com.google.android.gms.internal.ads.zzzu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int e(com.google.android.gms.internal.ads.zzzv r33, com.google.android.gms.internal.ads.zzaau r34) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1034
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagc.e(com.google.android.gms.internal.ads.zzzv, com.google.android.gms.internal.ads.zzaau):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f8884q = zzzxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void h(long j10, long j11) {
        this.f8872e.clear();
        this.f8878k = 0;
        this.f8880m = -1;
        this.f8881n = 0;
        this.f8882o = 0;
        this.f8883p = 0;
        if (j10 == 0) {
            l();
            return;
        }
        for (zzagb zzagbVar : this.f8885r) {
            zzagj zzagjVar = zzagbVar.f8863b;
            int iA = zzagjVar.a(j11);
            if (iA == -1) {
                iA = zzagjVar.b(j11);
            }
            zzagbVar.f8866e = iA;
            zzabc zzabcVar = zzagbVar.f8865d;
            if (zzabcVar != null) {
                zzabcVar.b();
            }
        }
    }

    public zzagc(int i10) {
        this.f8875h = 0;
        this.f8873f = new zzage();
        this.f8874g = new ArrayList();
        this.f8871d = new zzen(16);
        this.f8872e = new ArrayDeque();
        this.f8868a = new zzen(zzaar.f8340a);
        this.f8869b = new zzen(4);
        this.f8870c = new zzen();
        this.f8880m = -1;
        this.f8884q = zzzx.f21213c;
        this.f8885r = new zzagb[0];
    }
}
