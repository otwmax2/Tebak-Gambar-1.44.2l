package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzju {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzck f19973a = new zzck();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcm f19974b = new zzcm();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzlb f19975c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdv f19976d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f19977e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f19978f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f19979g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzjr f19980h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzjr f19981i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzjr f19982j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f19983k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Object f19984l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f19985m;

    public zzju(zzlb zzlbVar, zzdv zzdvVar) {
        this.f19975c = zzlbVar;
        this.f19976d = zzdvVar;
    }

    private static zzss A(zzcn zzcnVar, Object obj, long j10, long j11, zzcm zzcmVar, zzck zzckVar) {
        zzcnVar.n(obj, zzckVar);
        zzcnVar.e(zzckVar.f13166c, zzcmVar, 0L);
        zzcnVar.a(obj);
        if (zzckVar.f13167d == 0) {
            zzckVar.b();
        }
        zzcnVar.n(obj, zzckVar);
        int iD = zzckVar.d(j10);
        return iD == -1 ? new zzss(obj, j11, zzckVar.c(j10)) : new zzss(obj, iD, zzckVar.e(iD), j11);
    }

    private final void B() {
        final zzfqh zzfqhVarO = zzfqk.o();
        for (zzjr zzjrVarG = this.f19980h; zzjrVarG != null; zzjrVarG = zzjrVarG.g()) {
            zzfqhVarO.g(zzjrVarG.f19951f.f19961a);
        }
        zzjr zzjrVar = this.f19981i;
        final zzss zzssVar = zzjrVar == null ? null : zzjrVar.f19951f.f19961a;
        this.f19976d.i(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjt
            @Override // java.lang.Runnable
            public final void run() {
                this.f19970o.m(zzfqhVarO, zzssVar);
            }
        });
    }

    private final boolean C(zzcn zzcnVar, zzss zzssVar, boolean z10) {
        int iA = zzcnVar.a(zzssVar.f11010a);
        return !zzcnVar.e(zzcnVar.d(iA, this.f19973a, false).f13166c, this.f19974b, 0L).f13468g && zzcnVar.i(iA, this.f19973a, this.f19974b, this.f19978f, this.f19979g) == -1 && z10;
    }

    private final boolean a(zzcn zzcnVar, zzss zzssVar) {
        if (c(zzssVar)) {
            return zzcnVar.e(zzcnVar.n(zzssVar.f11010a, this.f19973a).f13166c, this.f19974b, 0L).f13475n == zzcnVar.a(zzssVar.f11010a);
        }
        return false;
    }

    private final boolean b(zzcn zzcnVar) {
        zzjr zzjrVarG = this.f19980h;
        if (zzjrVarG == null) {
            return true;
        }
        int iA = zzcnVar.a(zzjrVarG.f19947b);
        while (true) {
            iA = zzcnVar.i(iA, this.f19973a, this.f19974b, this.f19978f, this.f19979g);
            while (zzjrVarG.g() != null && !zzjrVarG.f19951f.f19967g) {
                zzjrVarG = zzjrVarG.g();
            }
            zzjr zzjrVarG2 = zzjrVarG.g();
            if (iA == -1 || zzjrVarG2 == null || zzcnVar.a(zzjrVarG2.f19947b) != iA) {
                break;
            }
            zzjrVarG = zzjrVarG2;
        }
        boolean zP = p(zzjrVarG);
        zzjrVarG.f19951f = j(zzcnVar, zzjrVarG.f19951f);
        return !zP;
    }

    private static final boolean c(zzss zzssVar) {
        return !zzssVar.b() && zzssVar.f11014e == -1;
    }

    private final long v(zzcn zzcnVar, Object obj, int i10) {
        zzcnVar.n(obj, this.f19973a);
        this.f19973a.h(i10);
        this.f19973a.j(i10);
        return 0L;
    }

    private final zzjs w(zzcn zzcnVar, zzjr zzjrVar, long j10) {
        long j11;
        zzjs zzjsVar = zzjrVar.f19951f;
        long jE = (zzjrVar.e() + zzjsVar.f19965e) - j10;
        if (!zzjsVar.f19967g) {
            zzss zzssVar = zzjsVar.f19961a;
            zzcnVar.n(zzssVar.f11010a, this.f19973a);
            if (!zzssVar.b()) {
                int iE = this.f19973a.e(zzssVar.f11014e);
                this.f19973a.l(zzssVar.f11014e);
                if (iE != this.f19973a.a(zzssVar.f11014e)) {
                    return y(zzcnVar, zzssVar.f11010a, zzssVar.f11014e, iE, zzjsVar.f19965e, zzssVar.f11013d);
                }
                v(zzcnVar, zzssVar.f11010a, zzssVar.f11014e);
                return z(zzcnVar, zzssVar.f11010a, 0L, zzjsVar.f19965e, zzssVar.f11013d);
            }
            int i10 = zzssVar.f11011b;
            if (this.f19973a.a(i10) == -1) {
                return null;
            }
            int iF = this.f19973a.f(i10, zzssVar.f11012c);
            if (iF < 0) {
                return y(zzcnVar, zzssVar.f11010a, i10, iF, zzjsVar.f19963c, zzssVar.f11013d);
            }
            long jLongValue = zzjsVar.f19963c;
            if (jLongValue == -9223372036854775807L) {
                zzcm zzcmVar = this.f19974b;
                zzck zzckVar = this.f19973a;
                Pair pairM = zzcnVar.m(zzcmVar, zzckVar, zzckVar.f13166c, -9223372036854775807L, Math.max(0L, jE));
                if (pairM == null) {
                    return null;
                }
                jLongValue = ((Long) pairM.second).longValue();
            }
            v(zzcnVar, zzssVar.f11010a, zzssVar.f11011b);
            return z(zzcnVar, zzssVar.f11010a, Math.max(0L, jLongValue), zzjsVar.f19963c, zzssVar.f11013d);
        }
        long j12 = 0;
        int i11 = zzcnVar.i(zzcnVar.a(zzjsVar.f19961a.f11010a), this.f19973a, this.f19974b, this.f19978f, this.f19979g);
        if (i11 == -1) {
            return null;
        }
        int i12 = zzcnVar.d(i11, this.f19973a, true).f13166c;
        Object obj = this.f19973a.f13165b;
        Objects.requireNonNull(obj);
        long j13 = zzjsVar.f19961a.f11013d;
        if (zzcnVar.e(i12, this.f19974b, 0L).f13474m == i11) {
            Pair pairM2 = zzcnVar.m(this.f19974b, this.f19973a, i12, -9223372036854775807L, Math.max(0L, jE));
            if (pairM2 == null) {
                return null;
            }
            obj = pairM2.first;
            long jLongValue2 = ((Long) pairM2.second).longValue();
            zzjr zzjrVarG = zzjrVar.g();
            if (zzjrVarG == null || !zzjrVarG.f19947b.equals(obj)) {
                j13 = this.f19977e;
                this.f19977e = 1 + j13;
            } else {
                j13 = zzjrVarG.f19951f.f19961a.f11013d;
            }
            j11 = jLongValue2;
            j12 = -9223372036854775807L;
        } else {
            j11 = 0;
        }
        zzss zzssVarA = A(zzcnVar, obj, j11, j13, this.f19974b, this.f19973a);
        if (j12 != -9223372036854775807L && zzjsVar.f19963c != -9223372036854775807L) {
            zzcnVar.n(zzjsVar.f19961a.f11010a, this.f19973a).b();
        }
        return x(zzcnVar, zzssVarA, j12, j11);
    }

    private final zzjs x(zzcn zzcnVar, zzss zzssVar, long j10, long j11) {
        zzcnVar.n(zzssVar.f11010a, this.f19973a);
        return zzssVar.b() ? y(zzcnVar, zzssVar.f11010a, zzssVar.f11011b, zzssVar.f11012c, j10, zzssVar.f11013d) : z(zzcnVar, zzssVar.f11010a, j11, j10, zzssVar.f11013d);
    }

    private final zzjs y(zzcn zzcnVar, Object obj, int i10, int i11, long j10, long j11) {
        zzss zzssVar = new zzss(obj, i10, i11, j11);
        long jG = zzcnVar.n(zzssVar.f11010a, this.f19973a).g(zzssVar.f11011b, zzssVar.f11012c);
        if (i11 == this.f19973a.e(i10)) {
            this.f19973a.i();
        }
        this.f19973a.l(zzssVar.f11011b);
        long jMax = 0;
        if (jG != -9223372036854775807L && jG <= 0) {
            jMax = Math.max(0L, (-1) + jG);
        }
        return new zzjs(zzssVar, jMax, j10, -9223372036854775807L, jG, false, false, false, false);
    }

    private final zzjs z(zzcn zzcnVar, Object obj, long j10, long j11, long j12) {
        long j13;
        long j14;
        long j15;
        long jMax = j10;
        zzcnVar.n(obj, this.f19973a);
        int iC = this.f19973a.c(jMax);
        if (iC == -1) {
            this.f19973a.b();
        } else {
            this.f19973a.l(iC);
        }
        zzss zzssVar = new zzss(obj, j12, iC);
        boolean zC = c(zzssVar);
        boolean zA = a(zzcnVar, zzssVar);
        boolean zC2 = C(zzcnVar, zzssVar, zC);
        if (iC != -1) {
            this.f19973a.l(iC);
        }
        if (iC != -1) {
            this.f19973a.h(iC);
            j13 = 0;
        } else {
            j13 = -9223372036854775807L;
        }
        if (j13 != -9223372036854775807L) {
            j15 = j13;
            j14 = j15;
        } else {
            j14 = this.f19973a.f13167d;
            j15 = -9223372036854775807L;
        }
        if (j14 != -9223372036854775807L && jMax >= j14) {
            jMax = Math.max(0L, j14 - 1);
        }
        return new zzjs(zzssVar, jMax, j11, j15, j14, false, zC, zA, zC2);
    }

    public final zzjr d() {
        zzjr zzjrVar = this.f19980h;
        if (zzjrVar == null) {
            return null;
        }
        if (zzjrVar == this.f19981i) {
            this.f19981i = zzjrVar.g();
        }
        zzjrVar.n();
        int i10 = this.f19983k - 1;
        this.f19983k = i10;
        if (i10 == 0) {
            this.f19982j = null;
            zzjr zzjrVar2 = this.f19980h;
            this.f19984l = zzjrVar2.f19947b;
            this.f19985m = zzjrVar2.f19951f.f19961a.f11013d;
        }
        this.f19980h = this.f19980h.g();
        B();
        return this.f19980h;
    }

    public final zzjr e() {
        zzjr zzjrVar = this.f19981i;
        boolean z10 = false;
        if (zzjrVar != null && zzjrVar.g() != null) {
            z10 = true;
        }
        zzdl.f(z10);
        this.f19981i = this.f19981i.g();
        B();
        return this.f19981i;
    }

    public final zzjr f() {
        return this.f19982j;
    }

    public final zzjr g() {
        return this.f19980h;
    }

    public final zzjr h() {
        return this.f19981i;
    }

    public final zzjs i(long j10, zzkh zzkhVar) {
        zzjr zzjrVar = this.f19982j;
        return zzjrVar == null ? x(zzkhVar.f20040a, zzkhVar.f20041b, zzkhVar.f20042c, zzkhVar.f20057r) : w(zzkhVar.f20040a, zzjrVar, j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.zzjs j(com.google.android.gms.internal.ads.zzcn r19, com.google.android.gms.internal.ads.zzjs r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            com.google.android.gms.internal.ads.zzss r3 = r2.f19961a
            boolean r12 = c(r3)
            boolean r13 = r0.a(r1, r3)
            boolean r14 = r0.C(r1, r3, r12)
            com.google.android.gms.internal.ads.zzss r4 = r2.f19961a
            java.lang.Object r4 = r4.f11010a
            com.google.android.gms.internal.ads.zzck r5 = r0.f19973a
            r1.n(r4, r5)
            boolean r1 = r3.b()
            r4 = -1
            r5 = 0
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L37
            int r1 = r3.f11014e
            if (r1 != r4) goto L30
            goto L37
        L30:
            com.google.android.gms.internal.ads.zzck r9 = r0.f19973a
            r9.h(r1)
            r9 = r5
            goto L38
        L37:
            r9 = r7
        L38:
            boolean r1 = r3.b()
            if (r1 == 0) goto L4b
            com.google.android.gms.internal.ads.zzck r1 = r0.f19973a
            int r5 = r3.f11011b
            int r6 = r3.f11012c
            long r5 = r1.g(r5, r6)
        L48:
            r7 = r9
            r9 = r5
            goto L57
        L4b:
            int r1 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r1 == 0) goto L52
            r7 = r5
            r9 = r7
            goto L57
        L52:
            com.google.android.gms.internal.ads.zzck r1 = r0.f19973a
            long r5 = r1.f13167d
            goto L48
        L57:
            boolean r1 = r3.b()
            if (r1 == 0) goto L65
            com.google.android.gms.internal.ads.zzck r1 = r0.f19973a
            int r4 = r3.f11011b
            r1.l(r4)
            goto L6e
        L65:
            int r1 = r3.f11014e
            if (r1 == r4) goto L6e
            com.google.android.gms.internal.ads.zzck r4 = r0.f19973a
            r4.l(r1)
        L6e:
            com.google.android.gms.internal.ads.zzjs r15 = new com.google.android.gms.internal.ads.zzjs
            long r4 = r2.f19962b
            long r1 = r2.f19963c
            r11 = 0
            r16 = r1
            r1 = r15
            r2 = r3
            r3 = r4
            r5 = r16
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzju.j(com.google.android.gms.internal.ads.zzcn, com.google.android.gms.internal.ads.zzjs):com.google.android.gms.internal.ads.zzjs");
    }

    public final zzss k(zzcn zzcnVar, Object obj, long j10) {
        long j11;
        int iA;
        int i10 = zzcnVar.n(obj, this.f19973a).f13166c;
        Object obj2 = this.f19984l;
        if (obj2 == null || (iA = zzcnVar.a(obj2)) == -1 || zzcnVar.d(iA, this.f19973a, false).f13166c != i10) {
            zzjr zzjrVarG = this.f19980h;
            while (true) {
                if (zzjrVarG == null) {
                    zzjr zzjrVarG2 = this.f19980h;
                    while (true) {
                        if (zzjrVarG2 != null) {
                            int iA2 = zzcnVar.a(zzjrVarG2.f19947b);
                            if (iA2 != -1 && zzcnVar.d(iA2, this.f19973a, false).f13166c == i10) {
                                j11 = zzjrVarG2.f19951f.f19961a.f11013d;
                                break;
                            }
                            zzjrVarG2 = zzjrVarG2.g();
                        } else {
                            j11 = this.f19977e;
                            this.f19977e = 1 + j11;
                            if (this.f19980h == null) {
                                this.f19984l = obj;
                                this.f19985m = j11;
                            }
                        }
                    }
                } else {
                    if (zzjrVarG.f19947b.equals(obj)) {
                        j11 = zzjrVarG.f19951f.f19961a.f11013d;
                        break;
                    }
                    zzjrVarG = zzjrVarG.g();
                }
            }
        } else {
            j11 = this.f19985m;
        }
        long j12 = j11;
        zzcnVar.n(obj, this.f19973a);
        zzcnVar.e(this.f19973a.f13166c, this.f19974b, 0L);
        int iA3 = zzcnVar.a(obj);
        Object obj3 = obj;
        while (true) {
            zzcm zzcmVar = this.f19974b;
            if (iA3 < zzcmVar.f13474m) {
                return A(zzcnVar, obj3, j10, j12, zzcmVar, this.f19973a);
            }
            zzcnVar.d(iA3, this.f19973a, true);
            this.f19973a.b();
            zzck zzckVar = this.f19973a;
            if (zzckVar.d(zzckVar.f13167d) != -1) {
                obj3 = this.f19973a.f13165b;
                Objects.requireNonNull(obj3);
            }
            iA3--;
        }
    }

    public final void l() {
        if (this.f19983k == 0) {
            return;
        }
        zzjr zzjrVarG = this.f19980h;
        zzdl.b(zzjrVarG);
        this.f19984l = zzjrVarG.f19947b;
        this.f19985m = zzjrVarG.f19951f.f19961a.f11013d;
        while (zzjrVarG != null) {
            zzjrVarG.n();
            zzjrVarG = zzjrVarG.g();
        }
        this.f19980h = null;
        this.f19982j = null;
        this.f19981i = null;
        this.f19983k = 0;
        B();
    }

    final /* synthetic */ void m(zzfqh zzfqhVar, zzss zzssVar) {
        this.f19975c.k(zzfqhVar.j(), zzssVar);
    }

    public final void n(long j10) {
        zzjr zzjrVar = this.f19982j;
        if (zzjrVar != null) {
            zzjrVar.m(j10);
        }
    }

    public final boolean o(zzsq zzsqVar) {
        zzjr zzjrVar = this.f19982j;
        return zzjrVar != null && zzjrVar.f19946a == zzsqVar;
    }

    public final boolean p(zzjr zzjrVar) {
        boolean z10 = false;
        zzdl.f(zzjrVar != null);
        if (zzjrVar.equals(this.f19982j)) {
            return false;
        }
        this.f19982j = zzjrVar;
        while (zzjrVar.g() != null) {
            zzjrVar = zzjrVar.g();
            if (zzjrVar == this.f19981i) {
                this.f19981i = this.f19980h;
                z10 = true;
            }
            zzjrVar.n();
            this.f19983k--;
        }
        this.f19982j.o(null);
        B();
        return z10;
    }

    public final boolean q() {
        zzjr zzjrVar = this.f19982j;
        if (zzjrVar != null) {
            return !zzjrVar.f19951f.f19969i && zzjrVar.r() && this.f19982j.f19951f.f19965e != -9223372036854775807L && this.f19983k < 100;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean r(com.google.android.gms.internal.ads.zzcn r17, long r18, long r20) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            com.google.android.gms.internal.ads.zzjr r2 = r0.f19980h
            r3 = 0
        L7:
            r4 = 1
            if (r2 == 0) goto L97
            com.google.android.gms.internal.ads.zzjs r5 = r2.f19951f
            r6 = 0
            if (r3 != 0) goto L16
            com.google.android.gms.internal.ads.zzjs r3 = r0.j(r1, r5)
            r7 = r18
            goto L39
        L16:
            r7 = r18
            com.google.android.gms.internal.ads.zzjs r9 = r0.w(r1, r3, r7)
            if (r9 != 0) goto L26
            boolean r1 = r0.p(r3)
            if (r1 != 0) goto L25
            return r4
        L25:
            return r6
        L26:
            long r10 = r5.f19962b
            long r12 = r9.f19962b
            int r14 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r14 != 0) goto L8f
            com.google.android.gms.internal.ads.zzss r10 = r5.f19961a
            com.google.android.gms.internal.ads.zzss r11 = r9.f19961a
            boolean r10 = r10.equals(r11)
            if (r10 == 0) goto L8f
            r3 = r9
        L39:
            long r9 = r5.f19963c
            com.google.android.gms.internal.ads.zzjs r9 = r3.a(r9)
            r2.f19951f = r9
            long r9 = r5.f19965e
            r11 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            long r13 = r3.f19965e
            if (r5 == 0) goto L86
            int r5 = (r9 > r13 ? 1 : (r9 == r13 ? 0 : -1))
            if (r5 != 0) goto L53
            goto L86
        L53:
            r2.q()
            long r7 = r3.f19965e
            int r1 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r1 != 0) goto L62
            r7 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            goto L67
        L62:
            long r9 = r2.e()
            long r7 = r7 + r9
        L67:
            com.google.android.gms.internal.ads.zzjr r1 = r0.f19981i
            if (r2 != r1) goto L7b
            com.google.android.gms.internal.ads.zzjs r1 = r2.f19951f
            boolean r1 = r1.f19966f
            r9 = -9223372036854775808
            int r1 = (r20 > r9 ? 1 : (r20 == r9 ? 0 : -1))
            if (r1 == 0) goto L79
            int r1 = (r20 > r7 ? 1 : (r20 == r7 ? 0 : -1))
            if (r1 < 0) goto L7b
        L79:
            r1 = 1
            goto L7c
        L7b:
            r1 = 0
        L7c:
            boolean r2 = r0.p(r2)
            if (r2 != 0) goto L85
            if (r1 != 0) goto L85
            return r4
        L85:
            return r6
        L86:
            com.google.android.gms.internal.ads.zzjr r3 = r2.g()
            r15 = r3
            r3 = r2
            r2 = r15
            goto L7
        L8f:
            boolean r1 = r0.p(r3)
            if (r1 != 0) goto L96
            return r4
        L96:
            return r6
        L97:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzju.r(com.google.android.gms.internal.ads.zzcn, long, long):boolean");
    }

    public final boolean s(zzcn zzcnVar, int i10) {
        this.f19978f = i10;
        return b(zzcnVar);
    }

    public final boolean t(zzcn zzcnVar, boolean z10) {
        this.f19979g = z10;
        return b(zzcnVar);
    }

    public final zzjr u(zzko[] zzkoVarArr, zzwk zzwkVar, zzwt zzwtVar, zzkg zzkgVar, zzjs zzjsVar, zzwl zzwlVar) {
        zzjr zzjrVar = this.f19982j;
        zzjr zzjrVar2 = new zzjr(zzkoVarArr, zzjrVar == null ? 1000000000000L : (zzjrVar.e() + zzjrVar.f19951f.f19965e) - zzjsVar.f19962b, zzwkVar, zzwtVar, zzkgVar, zzjsVar, zzwlVar, null);
        zzjr zzjrVar3 = this.f19982j;
        if (zzjrVar3 != null) {
            zzjrVar3.o(zzjrVar2);
        } else {
            this.f19980h = zzjrVar2;
            this.f19981i = zzjrVar2;
        }
        this.f19984l = null;
        this.f19982j = zzjrVar2;
        this.f19983k++;
        B();
        return zzjrVar2;
    }
}
