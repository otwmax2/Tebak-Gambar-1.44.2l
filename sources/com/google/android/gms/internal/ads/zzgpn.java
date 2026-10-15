package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgpn implements zzgsh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgpm f19414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f19415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f19416c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f19417d = 0;

    private zzgpn(zzgpm zzgpmVar) {
        zzgqw.f(zzgpmVar, "input");
        this.f19414a = zzgpmVar;
        zzgpmVar.f19413c = this;
    }

    private final void L(Object obj, zzgsp zzgspVar, zzgpy zzgpyVar) throws IOException {
        int i10 = this.f19416c;
        this.f19416c = ((this.f19415b >>> 3) << 3) | 4;
        try {
            zzgspVar.i(obj, this, zzgpyVar);
            if (this.f19415b == this.f19416c) {
            } else {
                throw zzgqy.g();
            }
        } finally {
            this.f19416c = i10;
        }
    }

    private final void N(Object obj, zzgsp zzgspVar, zzgpy zzgpyVar) throws IOException {
        int iS = this.f19414a.s();
        zzgpm zzgpmVar = this.f19414a;
        if (zzgpmVar.f19411a >= zzgpmVar.f19412b) {
            throw new zzgqy("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iL = zzgpmVar.l(iS);
        this.f19414a.f19411a++;
        zzgspVar.i(obj, this, zzgpyVar);
        this.f19414a.B(0);
        r5.f19411a--;
        this.f19414a.a(iL);
    }

    private final void O(int i10) throws IOException {
        if (this.f19414a.k() != i10) {
            throw zzgqy.j();
        }
    }

    private final void P(int i10) throws IOException {
        if ((this.f19415b & 7) != i10) {
            throw zzgqy.a();
        }
    }

    private static final void Q(int i10) throws IOException {
        if ((i10 & 3) != 0) {
            throw zzgqy.g();
        }
    }

    private static final void R(int i10) throws IOException {
        if ((i10 & 7) != 0) {
            throw zzgqy.g();
        }
    }

    public static zzgpn S(zzgpm zzgpmVar) {
        zzgpn zzgpnVar = zzgpmVar.f19413c;
        return zzgpnVar != null ? zzgpnVar : new zzgpn(zzgpmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void A(Object obj, zzgsp zzgspVar, zzgpy zzgpyVar) throws IOException {
        P(2);
        N(obj, zzgspVar, zzgpyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void B(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgrl)) {
            int i10 = this.f19415b & 7;
            if (i10 == 0) {
                do {
                    list.add(Long.valueOf(this.f19414a.w()));
                    if (this.f19414a.b()) {
                        return;
                    } else {
                        iR = this.f19414a.r();
                    }
                } while (iR == this.f19415b);
                this.f19417d = iR;
                return;
            }
            if (i10 != 2) {
                throw zzgqy.a();
            }
            int iK = this.f19414a.k() + this.f19414a.s();
            do {
                list.add(Long.valueOf(this.f19414a.w()));
            } while (this.f19414a.k() < iK);
            O(iK);
            return;
        }
        zzgrl zzgrlVar = (zzgrl) list;
        int i11 = this.f19415b & 7;
        if (i11 == 0) {
            do {
                zzgrlVar.j(this.f19414a.w());
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR2 = this.f19414a.r();
                }
            } while (iR2 == this.f19415b);
            this.f19417d = iR2;
            return;
        }
        if (i11 != 2) {
            throw zzgqy.a();
        }
        int iK2 = this.f19414a.k() + this.f19414a.s();
        do {
            zzgrlVar.j(this.f19414a.w());
        } while (this.f19414a.k() < iK2);
        O(iK2);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void C(List list, zzgsp zzgspVar, zzgpy zzgpyVar) throws IOException {
        int iR;
        int i10 = this.f19415b;
        if ((i10 & 7) != 2) {
            throw zzgqy.a();
        }
        do {
            Object objB = zzgspVar.b();
            N(objB, zzgspVar, zzgpyVar);
            zzgspVar.e(objB);
            list.add(objB);
            if (this.f19414a.b() || this.f19417d != 0) {
                return;
            } else {
                iR = this.f19414a.r();
            }
        } while (iR == i10);
        this.f19417d = iR;
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void D(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgrl)) {
            int i10 = this.f19415b & 7;
            if (i10 == 1) {
                do {
                    list.add(Long.valueOf(this.f19414a.t()));
                    if (this.f19414a.b()) {
                        return;
                    } else {
                        iR = this.f19414a.r();
                    }
                } while (iR == this.f19415b);
                this.f19417d = iR;
                return;
            }
            if (i10 != 2) {
                throw zzgqy.a();
            }
            int iS = this.f19414a.s();
            R(iS);
            int iK = this.f19414a.k() + iS;
            do {
                list.add(Long.valueOf(this.f19414a.t()));
            } while (this.f19414a.k() < iK);
            return;
        }
        zzgrl zzgrlVar = (zzgrl) list;
        int i11 = this.f19415b & 7;
        if (i11 == 1) {
            do {
                zzgrlVar.j(this.f19414a.t());
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR2 = this.f19414a.r();
                }
            } while (iR2 == this.f19415b);
            this.f19417d = iR2;
            return;
        }
        if (i11 != 2) {
            throw zzgqy.a();
        }
        int iS2 = this.f19414a.s();
        R(iS2);
        int iK2 = this.f19414a.k() + iS2;
        do {
            zzgrlVar.j(this.f19414a.t());
        } while (this.f19414a.k() < iK2);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void E(Object obj, zzgsp zzgspVar, zzgpy zzgpyVar) throws IOException {
        P(3);
        L(obj, zzgspVar, zzgpyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void F(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgqn)) {
            int i10 = this.f19415b & 7;
            if (i10 == 0) {
                do {
                    list.add(Integer.valueOf(this.f19414a.q()));
                    if (this.f19414a.b()) {
                        return;
                    } else {
                        iR = this.f19414a.r();
                    }
                } while (iR == this.f19415b);
                this.f19417d = iR;
                return;
            }
            if (i10 != 2) {
                throw zzgqy.a();
            }
            int iK = this.f19414a.k() + this.f19414a.s();
            do {
                list.add(Integer.valueOf(this.f19414a.q()));
            } while (this.f19414a.k() < iK);
            O(iK);
            return;
        }
        zzgqn zzgqnVar = (zzgqn) list;
        int i11 = this.f19415b & 7;
        if (i11 == 0) {
            do {
                zzgqnVar.j0(this.f19414a.q());
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR2 = this.f19414a.r();
                }
            } while (iR2 == this.f19415b);
            this.f19417d = iR2;
            return;
        }
        if (i11 != 2) {
            throw zzgqy.a();
        }
        int iK2 = this.f19414a.k() + this.f19414a.s();
        do {
            zzgqnVar.j0(this.f19414a.q());
        } while (this.f19414a.k() < iK2);
        O(iK2);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void G(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgqn)) {
            int i10 = this.f19415b & 7;
            if (i10 == 0) {
                do {
                    list.add(Integer.valueOf(this.f19414a.s()));
                    if (this.f19414a.b()) {
                        return;
                    } else {
                        iR = this.f19414a.r();
                    }
                } while (iR == this.f19415b);
                this.f19417d = iR;
                return;
            }
            if (i10 != 2) {
                throw zzgqy.a();
            }
            int iK = this.f19414a.k() + this.f19414a.s();
            do {
                list.add(Integer.valueOf(this.f19414a.s()));
            } while (this.f19414a.k() < iK);
            O(iK);
            return;
        }
        zzgqn zzgqnVar = (zzgqn) list;
        int i11 = this.f19415b & 7;
        if (i11 == 0) {
            do {
                zzgqnVar.j0(this.f19414a.s());
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR2 = this.f19414a.r();
                }
            } while (iR2 == this.f19415b);
            this.f19417d = iR2;
            return;
        }
        if (i11 != 2) {
            throw zzgqy.a();
        }
        int iK2 = this.f19414a.k() + this.f19414a.s();
        do {
            zzgqnVar.j0(this.f19414a.s());
        } while (this.f19414a.k() < iK2);
        O(iK2);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void H(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgos)) {
            int i10 = this.f19415b & 7;
            if (i10 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f19414a.c()));
                    if (this.f19414a.b()) {
                        return;
                    } else {
                        iR = this.f19414a.r();
                    }
                } while (iR == this.f19415b);
                this.f19417d = iR;
                return;
            }
            if (i10 != 2) {
                throw zzgqy.a();
            }
            int iK = this.f19414a.k() + this.f19414a.s();
            do {
                list.add(Boolean.valueOf(this.f19414a.c()));
            } while (this.f19414a.k() < iK);
            O(iK);
            return;
        }
        zzgos zzgosVar = (zzgos) list;
        int i11 = this.f19415b & 7;
        if (i11 == 0) {
            do {
                zzgosVar.g(this.f19414a.c());
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR2 = this.f19414a.r();
                }
            } while (iR2 == this.f19415b);
            this.f19417d = iR2;
            return;
        }
        if (i11 != 2) {
            throw zzgqy.a();
        }
        int iK2 = this.f19414a.k() + this.f19414a.s();
        do {
            zzgosVar.g(this.f19414a.c());
        } while (this.f19414a.k() < iK2);
        O(iK2);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void I(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgqf)) {
            int i10 = this.f19415b & 7;
            if (i10 == 2) {
                int iS = this.f19414a.s();
                Q(iS);
                int iK = this.f19414a.k() + iS;
                do {
                    list.add(Float.valueOf(this.f19414a.j()));
                } while (this.f19414a.k() < iK);
                return;
            }
            if (i10 != 5) {
                throw zzgqy.a();
            }
            do {
                list.add(Float.valueOf(this.f19414a.j()));
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR = this.f19414a.r();
                }
            } while (iR == this.f19415b);
            this.f19417d = iR;
            return;
        }
        zzgqf zzgqfVar = (zzgqf) list;
        int i11 = this.f19415b & 7;
        if (i11 == 2) {
            int iS2 = this.f19414a.s();
            Q(iS2);
            int iK2 = this.f19414a.k() + iS2;
            do {
                zzgqfVar.g(this.f19414a.j());
            } while (this.f19414a.k() < iK2);
            return;
        }
        if (i11 != 5) {
            throw zzgqy.a();
        }
        do {
            zzgqfVar.g(this.f19414a.j());
            if (this.f19414a.b()) {
                return;
            } else {
                iR2 = this.f19414a.r();
            }
        } while (iR2 == this.f19415b);
        this.f19417d = iR2;
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final boolean J() throws IOException {
        P(0);
        return this.f19414a.c();
    }

    public final void K(List list, boolean z10) throws IOException {
        int iR;
        int iR2;
        if ((this.f19415b & 7) != 2) {
            throw zzgqy.a();
        }
        if (!(list instanceof zzgre) || z10) {
            do {
                list.add(z10 ? q() : p());
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR = this.f19414a.r();
                }
            } while (iR == this.f19415b);
            this.f19417d = iR;
            return;
        }
        zzgre zzgreVar = (zzgre) list;
        do {
            zzgreVar.U0(n());
            if (this.f19414a.b()) {
                return;
            } else {
                iR2 = this.f19414a.r();
            }
        } while (iR2 == this.f19415b);
        this.f19417d = iR2;
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final boolean M() throws IOException {
        int i10;
        if (this.f19414a.b() || (i10 = this.f19415b) == this.f19416c) {
            return false;
        }
        return this.f19414a.d(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final int a() throws IOException {
        int iR = this.f19417d;
        if (iR != 0) {
            this.f19415b = iR;
            this.f19417d = 0;
        } else {
            iR = this.f19414a.r();
            this.f19415b = iR;
        }
        if (iR == 0 || iR == this.f19416c) {
            return Integer.MAX_VALUE;
        }
        return iR >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final int b() throws IOException {
        P(0);
        return this.f19414a.m();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final int c() throws IOException {
        P(5);
        return this.f19414a.n();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final int d() {
        return this.f19415b;
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final int e() throws IOException {
        P(0);
        return this.f19414a.o();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final int f() throws IOException {
        P(5);
        return this.f19414a.p();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final int g() throws IOException {
        P(0);
        return this.f19414a.q();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final int h() throws IOException {
        P(0);
        return this.f19414a.s();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final long i() throws IOException {
        P(1);
        return this.f19414a.t();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final long j() throws IOException {
        P(0);
        return this.f19414a.u();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final long k() throws IOException {
        P(0);
        return this.f19414a.w();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final long l() throws IOException {
        P(1);
        return this.f19414a.v();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final long m() throws IOException {
        P(0);
        return this.f19414a.x();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final zzgpe n() throws IOException {
        P(2);
        return this.f19414a.y();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void o(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgqn)) {
            int i10 = this.f19415b & 7;
            if (i10 == 0) {
                do {
                    list.add(Integer.valueOf(this.f19414a.m()));
                    if (this.f19414a.b()) {
                        return;
                    } else {
                        iR = this.f19414a.r();
                    }
                } while (iR == this.f19415b);
                this.f19417d = iR;
                return;
            }
            if (i10 != 2) {
                throw zzgqy.a();
            }
            int iK = this.f19414a.k() + this.f19414a.s();
            do {
                list.add(Integer.valueOf(this.f19414a.m()));
            } while (this.f19414a.k() < iK);
            O(iK);
            return;
        }
        zzgqn zzgqnVar = (zzgqn) list;
        int i11 = this.f19415b & 7;
        if (i11 == 0) {
            do {
                zzgqnVar.j0(this.f19414a.m());
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR2 = this.f19414a.r();
                }
            } while (iR2 == this.f19415b);
            this.f19417d = iR2;
            return;
        }
        if (i11 != 2) {
            throw zzgqy.a();
        }
        int iK2 = this.f19414a.k() + this.f19414a.s();
        do {
            zzgqnVar.j0(this.f19414a.m());
        } while (this.f19414a.k() < iK2);
        O(iK2);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final String p() throws IOException {
        P(2);
        return this.f19414a.z();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final String q() throws IOException {
        P(2);
        return this.f19414a.A();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void r(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgrl)) {
            int i10 = this.f19415b & 7;
            if (i10 == 0) {
                do {
                    list.add(Long.valueOf(this.f19414a.u()));
                    if (this.f19414a.b()) {
                        return;
                    } else {
                        iR = this.f19414a.r();
                    }
                } while (iR == this.f19415b);
                this.f19417d = iR;
                return;
            }
            if (i10 != 2) {
                throw zzgqy.a();
            }
            int iK = this.f19414a.k() + this.f19414a.s();
            do {
                list.add(Long.valueOf(this.f19414a.u()));
            } while (this.f19414a.k() < iK);
            O(iK);
            return;
        }
        zzgrl zzgrlVar = (zzgrl) list;
        int i11 = this.f19415b & 7;
        if (i11 == 0) {
            do {
                zzgrlVar.j(this.f19414a.u());
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR2 = this.f19414a.r();
                }
            } while (iR2 == this.f19415b);
            this.f19417d = iR2;
            return;
        }
        if (i11 != 2) {
            throw zzgqy.a();
        }
        int iK2 = this.f19414a.k() + this.f19414a.s();
        do {
            zzgrlVar.j(this.f19414a.u());
        } while (this.f19414a.k() < iK2);
        O(iK2);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void s(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgrl)) {
            int i10 = this.f19415b & 7;
            if (i10 == 0) {
                do {
                    list.add(Long.valueOf(this.f19414a.x()));
                    if (this.f19414a.b()) {
                        return;
                    } else {
                        iR = this.f19414a.r();
                    }
                } while (iR == this.f19415b);
                this.f19417d = iR;
                return;
            }
            if (i10 != 2) {
                throw zzgqy.a();
            }
            int iK = this.f19414a.k() + this.f19414a.s();
            do {
                list.add(Long.valueOf(this.f19414a.x()));
            } while (this.f19414a.k() < iK);
            O(iK);
            return;
        }
        zzgrl zzgrlVar = (zzgrl) list;
        int i11 = this.f19415b & 7;
        if (i11 == 0) {
            do {
                zzgrlVar.j(this.f19414a.x());
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR2 = this.f19414a.r();
                }
            } while (iR2 == this.f19415b);
            this.f19417d = iR2;
            return;
        }
        if (i11 != 2) {
            throw zzgqy.a();
        }
        int iK2 = this.f19414a.k() + this.f19414a.s();
        do {
            zzgrlVar.j(this.f19414a.x());
        } while (this.f19414a.k() < iK2);
        O(iK2);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void t(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgpv)) {
            int i10 = this.f19415b & 7;
            if (i10 == 1) {
                do {
                    list.add(Double.valueOf(this.f19414a.i()));
                    if (this.f19414a.b()) {
                        return;
                    } else {
                        iR = this.f19414a.r();
                    }
                } while (iR == this.f19415b);
                this.f19417d = iR;
                return;
            }
            if (i10 != 2) {
                throw zzgqy.a();
            }
            int iS = this.f19414a.s();
            R(iS);
            int iK = this.f19414a.k() + iS;
            do {
                list.add(Double.valueOf(this.f19414a.i()));
            } while (this.f19414a.k() < iK);
            return;
        }
        zzgpv zzgpvVar = (zzgpv) list;
        int i11 = this.f19415b & 7;
        if (i11 == 1) {
            do {
                zzgpvVar.g(this.f19414a.i());
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR2 = this.f19414a.r();
                }
            } while (iR2 == this.f19415b);
            this.f19417d = iR2;
            return;
        }
        if (i11 != 2) {
            throw zzgqy.a();
        }
        int iS2 = this.f19414a.s();
        R(iS2);
        int iK2 = this.f19414a.k() + iS2;
        do {
            zzgpvVar.g(this.f19414a.i());
        } while (this.f19414a.k() < iK2);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void u(List list) throws IOException {
        int iR;
        if ((this.f19415b & 7) != 2) {
            throw zzgqy.a();
        }
        do {
            list.add(n());
            if (this.f19414a.b()) {
                return;
            } else {
                iR = this.f19414a.r();
            }
        } while (iR == this.f19415b);
        this.f19417d = iR;
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void v(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgqn)) {
            int i10 = this.f19415b & 7;
            if (i10 == 0) {
                do {
                    list.add(Integer.valueOf(this.f19414a.o()));
                    if (this.f19414a.b()) {
                        return;
                    } else {
                        iR = this.f19414a.r();
                    }
                } while (iR == this.f19415b);
                this.f19417d = iR;
                return;
            }
            if (i10 != 2) {
                throw zzgqy.a();
            }
            int iK = this.f19414a.k() + this.f19414a.s();
            do {
                list.add(Integer.valueOf(this.f19414a.o()));
            } while (this.f19414a.k() < iK);
            O(iK);
            return;
        }
        zzgqn zzgqnVar = (zzgqn) list;
        int i11 = this.f19415b & 7;
        if (i11 == 0) {
            do {
                zzgqnVar.j0(this.f19414a.o());
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR2 = this.f19414a.r();
                }
            } while (iR2 == this.f19415b);
            this.f19417d = iR2;
            return;
        }
        if (i11 != 2) {
            throw zzgqy.a();
        }
        int iK2 = this.f19414a.k() + this.f19414a.s();
        do {
            zzgqnVar.j0(this.f19414a.o());
        } while (this.f19414a.k() < iK2);
        O(iK2);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    @Deprecated
    public final void w(List list, zzgsp zzgspVar, zzgpy zzgpyVar) throws IOException {
        int iR;
        int i10 = this.f19415b;
        if ((i10 & 7) != 3) {
            throw zzgqy.a();
        }
        do {
            Object objB = zzgspVar.b();
            L(objB, zzgspVar, zzgpyVar);
            zzgspVar.e(objB);
            list.add(objB);
            if (this.f19414a.b() || this.f19417d != 0) {
                return;
            } else {
                iR = this.f19414a.r();
            }
        } while (iR == i10);
        this.f19417d = iR;
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void x(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgrl)) {
            int i10 = this.f19415b & 7;
            if (i10 == 1) {
                do {
                    list.add(Long.valueOf(this.f19414a.v()));
                    if (this.f19414a.b()) {
                        return;
                    } else {
                        iR = this.f19414a.r();
                    }
                } while (iR == this.f19415b);
                this.f19417d = iR;
                return;
            }
            if (i10 != 2) {
                throw zzgqy.a();
            }
            int iS = this.f19414a.s();
            R(iS);
            int iK = this.f19414a.k() + iS;
            do {
                list.add(Long.valueOf(this.f19414a.v()));
            } while (this.f19414a.k() < iK);
            return;
        }
        zzgrl zzgrlVar = (zzgrl) list;
        int i11 = this.f19415b & 7;
        if (i11 == 1) {
            do {
                zzgrlVar.j(this.f19414a.v());
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR2 = this.f19414a.r();
                }
            } while (iR2 == this.f19415b);
            this.f19417d = iR2;
            return;
        }
        if (i11 != 2) {
            throw zzgqy.a();
        }
        int iS2 = this.f19414a.s();
        R(iS2);
        int iK2 = this.f19414a.k() + iS2;
        do {
            zzgrlVar.j(this.f19414a.v());
        } while (this.f19414a.k() < iK2);
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void y(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgqn)) {
            int i10 = this.f19415b & 7;
            if (i10 == 2) {
                int iS = this.f19414a.s();
                Q(iS);
                int iK = this.f19414a.k() + iS;
                do {
                    list.add(Integer.valueOf(this.f19414a.p()));
                } while (this.f19414a.k() < iK);
                return;
            }
            if (i10 != 5) {
                throw zzgqy.a();
            }
            do {
                list.add(Integer.valueOf(this.f19414a.p()));
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR = this.f19414a.r();
                }
            } while (iR == this.f19415b);
            this.f19417d = iR;
            return;
        }
        zzgqn zzgqnVar = (zzgqn) list;
        int i11 = this.f19415b & 7;
        if (i11 == 2) {
            int iS2 = this.f19414a.s();
            Q(iS2);
            int iK2 = this.f19414a.k() + iS2;
            do {
                zzgqnVar.j0(this.f19414a.p());
            } while (this.f19414a.k() < iK2);
            return;
        }
        if (i11 != 5) {
            throw zzgqy.a();
        }
        do {
            zzgqnVar.j0(this.f19414a.p());
            if (this.f19414a.b()) {
                return;
            } else {
                iR2 = this.f19414a.r();
            }
        } while (iR2 == this.f19415b);
        this.f19417d = iR2;
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final void z(List list) throws IOException {
        int iR;
        int iR2;
        if (!(list instanceof zzgqn)) {
            int i10 = this.f19415b & 7;
            if (i10 == 2) {
                int iS = this.f19414a.s();
                Q(iS);
                int iK = this.f19414a.k() + iS;
                do {
                    list.add(Integer.valueOf(this.f19414a.n()));
                } while (this.f19414a.k() < iK);
                return;
            }
            if (i10 != 5) {
                throw zzgqy.a();
            }
            do {
                list.add(Integer.valueOf(this.f19414a.n()));
                if (this.f19414a.b()) {
                    return;
                } else {
                    iR = this.f19414a.r();
                }
            } while (iR == this.f19415b);
            this.f19417d = iR;
            return;
        }
        zzgqn zzgqnVar = (zzgqn) list;
        int i11 = this.f19415b & 7;
        if (i11 == 2) {
            int iS2 = this.f19414a.s();
            Q(iS2);
            int iK2 = this.f19414a.k() + iS2;
            do {
                zzgqnVar.j0(this.f19414a.n());
            } while (this.f19414a.k() < iK2);
            return;
        }
        if (i11 != 5) {
            throw zzgqy.a();
        }
        do {
            zzgqnVar.j0(this.f19414a.n());
            if (this.f19414a.b()) {
                return;
            } else {
                iR2 = this.f19414a.r();
            }
        } while (iR2 == this.f19415b);
        this.f19417d = iR2;
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final double zza() throws IOException {
        P(1);
        return this.f19414a.i();
    }

    @Override // com.google.android.gms.internal.ads.zzgsh
    public final float zzb() throws IOException {
        P(5);
        return this.f19414a.j();
    }
}
