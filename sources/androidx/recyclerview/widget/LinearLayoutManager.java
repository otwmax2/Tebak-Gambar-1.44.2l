package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.p implements RecyclerView.a0.b {
    int A;
    int B;
    private boolean C;
    d D;
    final a E;
    private final b F;
    private int G;
    private int[] H;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f3613s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private c f3614t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    i f3615u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f3616v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f3617w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f3618x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f3619y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f3620z;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        i f3621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f3623c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f3624d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f3625e;

        a() {
            e();
        }

        void a() {
            this.f3623c = this.f3624d ? this.f3621a.i() : this.f3621a.m();
        }

        public void b(View view, int i10) {
            if (this.f3624d) {
                this.f3623c = this.f3621a.d(view) + this.f3621a.o();
            } else {
                this.f3623c = this.f3621a.g(view);
            }
            this.f3622b = i10;
        }

        public void c(View view, int i10) {
            int iO = this.f3621a.o();
            if (iO >= 0) {
                b(view, i10);
                return;
            }
            this.f3622b = i10;
            if (this.f3624d) {
                int i11 = (this.f3621a.i() - iO) - this.f3621a.d(view);
                this.f3623c = this.f3621a.i() - i11;
                if (i11 > 0) {
                    int iE = this.f3623c - this.f3621a.e(view);
                    int iM = this.f3621a.m();
                    int iMin = iE - (iM + Math.min(this.f3621a.g(view) - iM, 0));
                    if (iMin < 0) {
                        this.f3623c += Math.min(i11, -iMin);
                        return;
                    }
                    return;
                }
                return;
            }
            int iG = this.f3621a.g(view);
            int iM2 = iG - this.f3621a.m();
            this.f3623c = iG;
            if (iM2 > 0) {
                int i12 = (this.f3621a.i() - Math.min(0, (this.f3621a.i() - iO) - this.f3621a.d(view))) - (iG + this.f3621a.e(view));
                if (i12 < 0) {
                    this.f3623c -= Math.min(iM2, -i12);
                }
            }
        }

        boolean d(View view, RecyclerView.b0 b0Var) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return !qVar.c() && qVar.a() >= 0 && qVar.a() < b0Var.b();
        }

        void e() {
            this.f3622b = -1;
            this.f3623c = Integer.MIN_VALUE;
            this.f3624d = false;
            this.f3625e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f3622b + ", mCoordinate=" + this.f3623c + ", mLayoutFromEnd=" + this.f3624d + ", mValid=" + this.f3625e + '}';
        }
    }

    protected static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f3626a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f3627b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f3628c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f3629d;

        protected b() {
        }

        void a() {
            this.f3626a = 0;
            this.f3627b = false;
            this.f3628c = false;
            this.f3629d = false;
        }
    }

    static class c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3631b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f3632c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3633d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f3634e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f3635f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f3636g;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f3640k;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        boolean f3642m;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f3630a = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f3637h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f3638i = 0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f3639j = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        List<RecyclerView.e0> f3641l = null;

        c() {
        }

        private View e() {
            int size = this.f3641l.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = this.f3641l.get(i10).f3727o;
                RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
                if (!qVar.c() && this.f3633d == qVar.a()) {
                    b(view);
                    return view;
                }
            }
            return null;
        }

        public void a() {
            b(null);
        }

        public void b(View view) {
            View viewF = f(view);
            if (viewF == null) {
                this.f3633d = -1;
            } else {
                this.f3633d = ((RecyclerView.q) viewF.getLayoutParams()).a();
            }
        }

        boolean c(RecyclerView.b0 b0Var) {
            int i10 = this.f3633d;
            return i10 >= 0 && i10 < b0Var.b();
        }

        View d(RecyclerView.w wVar) {
            if (this.f3641l != null) {
                return e();
            }
            View viewO = wVar.o(this.f3633d);
            this.f3633d += this.f3634e;
            return viewO;
        }

        public View f(View view) {
            int iA;
            int size = this.f3641l.size();
            View view2 = null;
            int i10 = Integer.MAX_VALUE;
            for (int i11 = 0; i11 < size; i11++) {
                View view3 = this.f3641l.get(i11).f3727o;
                RecyclerView.q qVar = (RecyclerView.q) view3.getLayoutParams();
                if (view3 != view && !qVar.c() && (iA = (qVar.a() - this.f3633d) * this.f3634e) >= 0 && iA < i10) {
                    view2 = view3;
                    if (iA == 0) {
                        break;
                    }
                    i10 = iA;
                }
            }
            return view2;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class d implements Parcelable {
        public static final Parcelable.Creator<d> CREATOR = new a();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        int f3643o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        int f3644p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        boolean f3645q;

        class a implements Parcelable.Creator<d> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public d[] newArray(int i10) {
                return new d[i10];
            }
        }

        public d() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        boolean h() {
            return this.f3643o >= 0;
        }

        void t() {
            this.f3643o = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f3643o);
            parcel.writeInt(this.f3644p);
            parcel.writeInt(this.f3645q ? 1 : 0);
        }

        d(Parcel parcel) {
            this.f3643o = parcel.readInt();
            this.f3644p = parcel.readInt();
            this.f3645q = parcel.readInt() == 1;
        }

        public d(d dVar) {
            this.f3643o = dVar.f3643o;
            this.f3644p = dVar.f3644p;
            this.f3645q = dVar.f3645q;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    private boolean B2(RecyclerView.w wVar, RecyclerView.b0 b0Var, a aVar) {
        View viewF2;
        boolean z10 = false;
        if (J() == 0) {
            return false;
        }
        View viewV = V();
        if (viewV != null && aVar.d(viewV, b0Var)) {
            aVar.c(viewV, h0(viewV));
            return true;
        }
        boolean z11 = this.f3616v;
        boolean z12 = this.f3619y;
        if (z11 != z12 || (viewF2 = f2(wVar, b0Var, aVar.f3624d, z12)) == null) {
            return false;
        }
        aVar.b(viewF2, h0(viewF2));
        if (!b0Var.e() && L1()) {
            int iG = this.f3615u.g(viewF2);
            int iD = this.f3615u.d(viewF2);
            int iM = this.f3615u.m();
            int i10 = this.f3615u.i();
            boolean z13 = iD <= iM && iG < iM;
            if (iG >= i10 && iD > i10) {
                z10 = true;
            }
            if (z13 || z10) {
                if (aVar.f3624d) {
                    iM = i10;
                }
                aVar.f3623c = iM;
            }
        }
        return true;
    }

    private boolean C2(RecyclerView.b0 b0Var, a aVar) {
        int i10;
        if (!b0Var.e() && (i10 = this.A) != -1) {
            if (i10 >= 0 && i10 < b0Var.b()) {
                aVar.f3622b = this.A;
                d dVar = this.D;
                if (dVar != null && dVar.h()) {
                    boolean z10 = this.D.f3645q;
                    aVar.f3624d = z10;
                    if (z10) {
                        aVar.f3623c = this.f3615u.i() - this.D.f3644p;
                    } else {
                        aVar.f3623c = this.f3615u.m() + this.D.f3644p;
                    }
                    return true;
                }
                if (this.B != Integer.MIN_VALUE) {
                    boolean z11 = this.f3618x;
                    aVar.f3624d = z11;
                    if (z11) {
                        aVar.f3623c = this.f3615u.i() - this.B;
                    } else {
                        aVar.f3623c = this.f3615u.m() + this.B;
                    }
                    return true;
                }
                View viewC = C(this.A);
                if (viewC == null) {
                    if (J() > 0) {
                        aVar.f3624d = (this.A < h0(I(0))) == this.f3618x;
                    }
                    aVar.a();
                } else {
                    if (this.f3615u.e(viewC) > this.f3615u.n()) {
                        aVar.a();
                        return true;
                    }
                    if (this.f3615u.g(viewC) - this.f3615u.m() < 0) {
                        aVar.f3623c = this.f3615u.m();
                        aVar.f3624d = false;
                        return true;
                    }
                    if (this.f3615u.i() - this.f3615u.d(viewC) < 0) {
                        aVar.f3623c = this.f3615u.i();
                        aVar.f3624d = true;
                        return true;
                    }
                    aVar.f3623c = aVar.f3624d ? this.f3615u.d(viewC) + this.f3615u.o() : this.f3615u.g(viewC);
                }
                return true;
            }
            this.A = -1;
            this.B = Integer.MIN_VALUE;
        }
        return false;
    }

    private void D2(RecyclerView.w wVar, RecyclerView.b0 b0Var, a aVar) {
        if (C2(b0Var, aVar) || B2(wVar, b0Var, aVar)) {
            return;
        }
        aVar.a();
        aVar.f3622b = this.f3619y ? b0Var.b() - 1 : 0;
    }

    private void E2(int i10, int i11, boolean z10, RecyclerView.b0 b0Var) {
        int iM;
        this.f3614t.f3642m = v2();
        this.f3614t.f3635f = i10;
        int[] iArr = this.H;
        iArr[0] = 0;
        iArr[1] = 0;
        M1(b0Var, iArr);
        int iMax = Math.max(0, this.H[0]);
        int iMax2 = Math.max(0, this.H[1]);
        boolean z11 = i10 == 1;
        c cVar = this.f3614t;
        int i12 = z11 ? iMax2 : iMax;
        cVar.f3637h = i12;
        if (!z11) {
            iMax = iMax2;
        }
        cVar.f3638i = iMax;
        if (z11) {
            cVar.f3637h = i12 + this.f3615u.j();
            View viewI2 = i2();
            c cVar2 = this.f3614t;
            cVar2.f3634e = this.f3618x ? -1 : 1;
            int iH0 = h0(viewI2);
            c cVar3 = this.f3614t;
            cVar2.f3633d = iH0 + cVar3.f3634e;
            cVar3.f3631b = this.f3615u.d(viewI2);
            iM = this.f3615u.d(viewI2) - this.f3615u.i();
        } else {
            View viewJ2 = j2();
            this.f3614t.f3637h += this.f3615u.m();
            c cVar4 = this.f3614t;
            cVar4.f3634e = this.f3618x ? 1 : -1;
            int iH02 = h0(viewJ2);
            c cVar5 = this.f3614t;
            cVar4.f3633d = iH02 + cVar5.f3634e;
            cVar5.f3631b = this.f3615u.g(viewJ2);
            iM = (-this.f3615u.g(viewJ2)) + this.f3615u.m();
        }
        c cVar6 = this.f3614t;
        cVar6.f3632c = i11;
        if (z10) {
            cVar6.f3632c = i11 - iM;
        }
        cVar6.f3636g = iM;
    }

    private void F2(int i10, int i11) {
        this.f3614t.f3632c = this.f3615u.i() - i11;
        c cVar = this.f3614t;
        cVar.f3634e = this.f3618x ? -1 : 1;
        cVar.f3633d = i10;
        cVar.f3635f = 1;
        cVar.f3631b = i11;
        cVar.f3636g = Integer.MIN_VALUE;
    }

    private void G2(a aVar) {
        F2(aVar.f3622b, aVar.f3623c);
    }

    private void H2(int i10, int i11) {
        this.f3614t.f3632c = i11 - this.f3615u.m();
        c cVar = this.f3614t;
        cVar.f3633d = i10;
        cVar.f3634e = this.f3618x ? 1 : -1;
        cVar.f3635f = -1;
        cVar.f3631b = i11;
        cVar.f3636g = Integer.MIN_VALUE;
    }

    private void I2(a aVar) {
        H2(aVar.f3622b, aVar.f3623c);
    }

    private int O1(RecyclerView.b0 b0Var) {
        if (J() == 0) {
            return 0;
        }
        T1();
        return l.a(b0Var, this.f3615u, X1(!this.f3620z, true), W1(!this.f3620z, true), this, this.f3620z);
    }

    private int P1(RecyclerView.b0 b0Var) {
        if (J() == 0) {
            return 0;
        }
        T1();
        return l.b(b0Var, this.f3615u, X1(!this.f3620z, true), W1(!this.f3620z, true), this, this.f3620z, this.f3618x);
    }

    private int Q1(RecyclerView.b0 b0Var) {
        if (J() == 0) {
            return 0;
        }
        T1();
        return l.c(b0Var, this.f3615u, X1(!this.f3620z, true), W1(!this.f3620z, true), this, this.f3620z);
    }

    private View V1() {
        return b2(0, J());
    }

    private View Z1() {
        return b2(J() - 1, -1);
    }

    private View d2() {
        return this.f3618x ? V1() : Z1();
    }

    private View e2() {
        return this.f3618x ? Z1() : V1();
    }

    private int g2(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var, boolean z10) {
        int i11;
        int i12 = this.f3615u.i() - i10;
        if (i12 <= 0) {
            return 0;
        }
        int i13 = -x2(-i12, wVar, b0Var);
        int i14 = i10 + i13;
        if (!z10 || (i11 = this.f3615u.i() - i14) <= 0) {
            return i13;
        }
        this.f3615u.r(i11);
        return i11 + i13;
    }

    private int h2(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var, boolean z10) {
        int iM;
        int iM2 = i10 - this.f3615u.m();
        if (iM2 <= 0) {
            return 0;
        }
        int i11 = -x2(iM2, wVar, b0Var);
        int i12 = i10 + i11;
        if (!z10 || (iM = i12 - this.f3615u.m()) <= 0) {
            return i11;
        }
        this.f3615u.r(-iM);
        return i11 - iM;
    }

    private View i2() {
        return I(this.f3618x ? 0 : J() - 1);
    }

    private View j2() {
        return I(this.f3618x ? J() - 1 : 0);
    }

    private void p2(RecyclerView.w wVar, RecyclerView.b0 b0Var, int i10, int i11) {
        if (!b0Var.g() || J() == 0 || b0Var.e() || !L1()) {
            return;
        }
        List<RecyclerView.e0> listK = wVar.k();
        int size = listK.size();
        int iH0 = h0(I(0));
        int iE = 0;
        int iE2 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            RecyclerView.e0 e0Var = listK.get(i12);
            if (!e0Var.F()) {
                if (((e0Var.w() < iH0) != this.f3618x ? (byte) -1 : (byte) 1) == -1) {
                    iE += this.f3615u.e(e0Var.f3727o);
                } else {
                    iE2 += this.f3615u.e(e0Var.f3727o);
                }
            }
        }
        this.f3614t.f3641l = listK;
        if (iE > 0) {
            H2(h0(j2()), i10);
            c cVar = this.f3614t;
            cVar.f3637h = iE;
            cVar.f3632c = 0;
            cVar.a();
            U1(wVar, this.f3614t, b0Var, false);
        }
        if (iE2 > 0) {
            F2(h0(i2()), i11);
            c cVar2 = this.f3614t;
            cVar2.f3637h = iE2;
            cVar2.f3632c = 0;
            cVar2.a();
            U1(wVar, this.f3614t, b0Var, false);
        }
        this.f3614t.f3641l = null;
    }

    private void r2(RecyclerView.w wVar, c cVar) {
        if (!cVar.f3630a || cVar.f3642m) {
            return;
        }
        int i10 = cVar.f3636g;
        int i11 = cVar.f3638i;
        if (cVar.f3635f == -1) {
            t2(wVar, i10, i11);
        } else {
            u2(wVar, i10, i11);
        }
    }

    private void s2(RecyclerView.w wVar, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i11 <= i10) {
            while (i10 > i11) {
                n1(i10, wVar);
                i10--;
            }
        } else {
            for (int i12 = i11 - 1; i12 >= i10; i12--) {
                n1(i12, wVar);
            }
        }
    }

    private void t2(RecyclerView.w wVar, int i10, int i11) {
        int iJ = J();
        if (i10 < 0) {
            return;
        }
        int iH = (this.f3615u.h() - i10) + i11;
        if (this.f3618x) {
            for (int i12 = 0; i12 < iJ; i12++) {
                View viewI = I(i12);
                if (this.f3615u.g(viewI) < iH || this.f3615u.q(viewI) < iH) {
                    s2(wVar, 0, i12);
                    return;
                }
            }
            return;
        }
        int i13 = iJ - 1;
        for (int i14 = i13; i14 >= 0; i14--) {
            View viewI2 = I(i14);
            if (this.f3615u.g(viewI2) < iH || this.f3615u.q(viewI2) < iH) {
                s2(wVar, i13, i14);
                return;
            }
        }
    }

    private void u2(RecyclerView.w wVar, int i10, int i11) {
        if (i10 < 0) {
            return;
        }
        int i12 = i10 - i11;
        int iJ = J();
        if (!this.f3618x) {
            for (int i13 = 0; i13 < iJ; i13++) {
                View viewI = I(i13);
                if (this.f3615u.d(viewI) > i12 || this.f3615u.p(viewI) > i12) {
                    s2(wVar, 0, i13);
                    return;
                }
            }
            return;
        }
        int i14 = iJ - 1;
        for (int i15 = i14; i15 >= 0; i15--) {
            View viewI2 = I(i15);
            if (this.f3615u.d(viewI2) > i12 || this.f3615u.p(viewI2) > i12) {
                s2(wVar, i14, i15);
                return;
            }
        }
    }

    private void w2() {
        if (this.f3613s == 1 || !m2()) {
            this.f3618x = this.f3617w;
        } else {
            this.f3618x = !this.f3617w;
        }
    }

    public void A2(boolean z10) {
        g(null);
        if (this.f3619y == z10) {
            return;
        }
        this.f3619y = z10;
        t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public View C(int i10) {
        int iJ = J();
        if (iJ == 0) {
            return null;
        }
        int iH0 = i10 - h0(I(0));
        if (iH0 >= 0 && iH0 < iJ) {
            View viewI = I(iH0);
            if (h0(viewI) == i10) {
                return viewI;
            }
        }
        return super.C(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q D() {
        return new RecyclerView.q(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    boolean G1() {
        return (X() == 1073741824 || p0() == 1073741824 || !q0()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void I0(RecyclerView recyclerView, RecyclerView.w wVar) {
        super.I0(recyclerView, wVar);
        if (this.C) {
            k1(wVar);
            wVar.c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void I1(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i10) {
        g gVar = new g(recyclerView.getContext());
        gVar.p(i10);
        J1(gVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public View J0(View view, int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        int iR1;
        w2();
        if (J() == 0 || (iR1 = R1(i10)) == Integer.MIN_VALUE) {
            return null;
        }
        T1();
        E2(iR1, (int) (this.f3615u.n() * 0.33333334f), false, b0Var);
        c cVar = this.f3614t;
        cVar.f3636g = Integer.MIN_VALUE;
        cVar.f3630a = false;
        U1(wVar, cVar, b0Var, true);
        View viewE2 = iR1 == -1 ? e2() : d2();
        View viewJ2 = iR1 == -1 ? j2() : i2();
        if (!viewJ2.hasFocusable()) {
            return viewE2;
        }
        if (viewE2 == null) {
            return null;
        }
        return viewJ2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void K0(AccessibilityEvent accessibilityEvent) {
        super.K0(accessibilityEvent);
        if (J() > 0) {
            accessibilityEvent.setFromIndex(Y1());
            accessibilityEvent.setToIndex(a2());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean L1() {
        return this.D == null && this.f3616v == this.f3619y;
    }

    protected void M1(RecyclerView.b0 b0Var, int[] iArr) {
        int i10;
        int iK2 = k2(b0Var);
        if (this.f3614t.f3635f == -1) {
            i10 = 0;
        } else {
            i10 = iK2;
            iK2 = 0;
        }
        iArr[0] = iK2;
        iArr[1] = i10;
    }

    void N1(RecyclerView.b0 b0Var, c cVar, RecyclerView.p.c cVar2) {
        int i10 = cVar.f3633d;
        if (i10 < 0 || i10 >= b0Var.b()) {
            return;
        }
        cVar2.a(i10, Math.max(0, cVar.f3636g));
    }

    int R1(int i10) {
        return i10 != 1 ? i10 != 2 ? i10 != 17 ? i10 != 33 ? i10 != 66 ? (i10 == 130 && this.f3613s == 1) ? 1 : Integer.MIN_VALUE : this.f3613s == 0 ? 1 : Integer.MIN_VALUE : this.f3613s == 1 ? -1 : Integer.MIN_VALUE : this.f3613s == 0 ? -1 : Integer.MIN_VALUE : (this.f3613s != 1 && m2()) ? -1 : 1 : (this.f3613s != 1 && m2()) ? 1 : -1;
    }

    c S1() {
        return new c();
    }

    void T1() {
        if (this.f3614t == null) {
            this.f3614t = S1();
        }
    }

    int U1(RecyclerView.w wVar, c cVar, RecyclerView.b0 b0Var, boolean z10) {
        int i10 = cVar.f3632c;
        int i11 = cVar.f3636g;
        if (i11 != Integer.MIN_VALUE) {
            if (i10 < 0) {
                cVar.f3636g = i11 + i10;
            }
            r2(wVar, cVar);
        }
        int i12 = cVar.f3632c + cVar.f3637h;
        b bVar = this.F;
        while (true) {
            if ((!cVar.f3642m && i12 <= 0) || !cVar.c(b0Var)) {
                break;
            }
            bVar.a();
            o2(wVar, b0Var, cVar, bVar);
            if (!bVar.f3627b) {
                cVar.f3631b += bVar.f3626a * cVar.f3635f;
                if (!bVar.f3628c || cVar.f3641l != null || !b0Var.e()) {
                    int i13 = cVar.f3632c;
                    int i14 = bVar.f3626a;
                    cVar.f3632c = i13 - i14;
                    i12 -= i14;
                }
                int i15 = cVar.f3636g;
                if (i15 != Integer.MIN_VALUE) {
                    int i16 = i15 + bVar.f3626a;
                    cVar.f3636g = i16;
                    int i17 = cVar.f3632c;
                    if (i17 < 0) {
                        cVar.f3636g = i16 + i17;
                    }
                    r2(wVar, cVar);
                }
                if (z10 && bVar.f3629d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i10 - cVar.f3632c;
    }

    View W1(boolean z10, boolean z11) {
        return this.f3618x ? c2(0, J(), z10, z11) : c2(J() - 1, -1, z10, z11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void X0(RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        int i10;
        int i11;
        int i12;
        int i13;
        int iG2;
        int i14;
        View viewC;
        int iG;
        int i15;
        int i16 = -1;
        if (!(this.D == null && this.A == -1) && b0Var.b() == 0) {
            k1(wVar);
            return;
        }
        d dVar = this.D;
        if (dVar != null && dVar.h()) {
            this.A = this.D.f3643o;
        }
        T1();
        this.f3614t.f3630a = false;
        w2();
        View viewV = V();
        a aVar = this.E;
        if (!aVar.f3625e || this.A != -1 || this.D != null) {
            aVar.e();
            a aVar2 = this.E;
            aVar2.f3624d = this.f3618x ^ this.f3619y;
            D2(wVar, b0Var, aVar2);
            this.E.f3625e = true;
        } else if (viewV != null && (this.f3615u.g(viewV) >= this.f3615u.i() || this.f3615u.d(viewV) <= this.f3615u.m())) {
            this.E.c(viewV, h0(viewV));
        }
        c cVar = this.f3614t;
        cVar.f3635f = cVar.f3640k >= 0 ? 1 : -1;
        int[] iArr = this.H;
        iArr[0] = 0;
        iArr[1] = 0;
        M1(b0Var, iArr);
        int iMax = Math.max(0, this.H[0]) + this.f3615u.m();
        int iMax2 = Math.max(0, this.H[1]) + this.f3615u.j();
        if (b0Var.e() && (i14 = this.A) != -1 && this.B != Integer.MIN_VALUE && (viewC = C(i14)) != null) {
            if (this.f3618x) {
                i15 = this.f3615u.i() - this.f3615u.d(viewC);
                iG = this.B;
            } else {
                iG = this.f3615u.g(viewC) - this.f3615u.m();
                i15 = this.B;
            }
            int i17 = i15 - iG;
            if (i17 > 0) {
                iMax += i17;
            } else {
                iMax2 -= i17;
            }
        }
        a aVar3 = this.E;
        if (!aVar3.f3624d ? !this.f3618x : this.f3618x) {
            i16 = 1;
        }
        q2(wVar, b0Var, aVar3, i16);
        w(wVar);
        this.f3614t.f3642m = v2();
        this.f3614t.f3639j = b0Var.e();
        this.f3614t.f3638i = 0;
        a aVar4 = this.E;
        if (aVar4.f3624d) {
            I2(aVar4);
            c cVar2 = this.f3614t;
            cVar2.f3637h = iMax;
            U1(wVar, cVar2, b0Var, false);
            c cVar3 = this.f3614t;
            i11 = cVar3.f3631b;
            int i18 = cVar3.f3633d;
            int i19 = cVar3.f3632c;
            if (i19 > 0) {
                iMax2 += i19;
            }
            G2(this.E);
            c cVar4 = this.f3614t;
            cVar4.f3637h = iMax2;
            cVar4.f3633d += cVar4.f3634e;
            U1(wVar, cVar4, b0Var, false);
            c cVar5 = this.f3614t;
            i10 = cVar5.f3631b;
            int i20 = cVar5.f3632c;
            if (i20 > 0) {
                H2(i18, i11);
                c cVar6 = this.f3614t;
                cVar6.f3637h = i20;
                U1(wVar, cVar6, b0Var, false);
                i11 = this.f3614t.f3631b;
            }
        } else {
            G2(aVar4);
            c cVar7 = this.f3614t;
            cVar7.f3637h = iMax2;
            U1(wVar, cVar7, b0Var, false);
            c cVar8 = this.f3614t;
            i10 = cVar8.f3631b;
            int i21 = cVar8.f3633d;
            int i22 = cVar8.f3632c;
            if (i22 > 0) {
                iMax += i22;
            }
            I2(this.E);
            c cVar9 = this.f3614t;
            cVar9.f3637h = iMax;
            cVar9.f3633d += cVar9.f3634e;
            U1(wVar, cVar9, b0Var, false);
            c cVar10 = this.f3614t;
            i11 = cVar10.f3631b;
            int i23 = cVar10.f3632c;
            if (i23 > 0) {
                F2(i21, i10);
                c cVar11 = this.f3614t;
                cVar11.f3637h = i23;
                U1(wVar, cVar11, b0Var, false);
                i10 = this.f3614t.f3631b;
            }
        }
        if (J() > 0) {
            if (this.f3618x ^ this.f3619y) {
                int iG22 = g2(i10, wVar, b0Var, true);
                i12 = i11 + iG22;
                i13 = i10 + iG22;
                iG2 = h2(i12, wVar, b0Var, false);
            } else {
                int iH2 = h2(i11, wVar, b0Var, true);
                i12 = i11 + iH2;
                i13 = i10 + iH2;
                iG2 = g2(i13, wVar, b0Var, false);
            }
            i11 = i12 + iG2;
            i10 = i13 + iG2;
        }
        p2(wVar, b0Var, i11, i10);
        if (b0Var.e()) {
            this.E.e();
        } else {
            this.f3615u.s();
        }
        this.f3616v = this.f3619y;
    }

    View X1(boolean z10, boolean z11) {
        return this.f3618x ? c2(J() - 1, -1, z10, z11) : c2(0, J(), z10, z11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void Y0(RecyclerView.b0 b0Var) {
        super.Y0(b0Var);
        this.D = null;
        this.A = -1;
        this.B = Integer.MIN_VALUE;
        this.E.e();
    }

    public int Y1() {
        View viewC2 = c2(0, J(), false, true);
        if (viewC2 == null) {
            return -1;
        }
        return h0(viewC2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a0.b
    public PointF a(int i10) {
        if (J() == 0) {
            return null;
        }
        int i11 = (i10 < h0(I(0))) != this.f3618x ? -1 : 1;
        return this.f3613s == 0 ? new PointF(i11, 0.0f) : new PointF(0.0f, i11);
    }

    public int a2() {
        View viewC2 = c2(J() - 1, -1, false, true);
        if (viewC2 == null) {
            return -1;
        }
        return h0(viewC2);
    }

    View b2(int i10, int i11) {
        int i12;
        int i13;
        T1();
        if ((i11 > i10 ? (byte) 1 : i11 < i10 ? (byte) -1 : (byte) 0) == 0) {
            return I(i10);
        }
        if (this.f3615u.g(I(i10)) < this.f3615u.m()) {
            i12 = 16644;
            i13 = 16388;
        } else {
            i12 = 4161;
            i13 = 4097;
        }
        return this.f3613s == 0 ? this.f3763e.a(i10, i11, i12, i13) : this.f3764f.a(i10, i11, i12, i13);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void c1(Parcelable parcelable) {
        if (parcelable instanceof d) {
            d dVar = (d) parcelable;
            this.D = dVar;
            if (this.A != -1) {
                dVar.t();
            }
            t1();
        }
    }

    View c2(int i10, int i11, boolean z10, boolean z11) {
        T1();
        int i12 = z10 ? 24579 : 320;
        int i13 = z11 ? 320 : 0;
        return this.f3613s == 0 ? this.f3763e.a(i10, i11, i12, i13) : this.f3764f.a(i10, i11, i12, i13);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public Parcelable d1() {
        if (this.D != null) {
            return new d(this.D);
        }
        d dVar = new d();
        if (J() > 0) {
            T1();
            boolean z10 = this.f3616v ^ this.f3618x;
            dVar.f3645q = z10;
            if (z10) {
                View viewI2 = i2();
                dVar.f3644p = this.f3615u.i() - this.f3615u.d(viewI2);
                dVar.f3643o = h0(viewI2);
            } else {
                View viewJ2 = j2();
                dVar.f3643o = h0(viewJ2);
                dVar.f3644p = this.f3615u.g(viewJ2) - this.f3615u.m();
            }
        } else {
            dVar.t();
        }
        return dVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    android.view.View f2(androidx.recyclerview.widget.RecyclerView.w r17, androidx.recyclerview.widget.RecyclerView.b0 r18, boolean r19, boolean r20) {
        /*
            r16 = this;
            r0 = r16
            r16.T1()
            int r1 = r16.J()
            r2 = -1
            r3 = 0
            r4 = 1
            if (r20 == 0) goto L15
            int r1 = r16.J()
            int r1 = r1 - r4
            r5 = -1
            goto L18
        L15:
            r2 = r1
            r1 = 0
            r5 = 1
        L18:
            int r6 = r18.b()
            androidx.recyclerview.widget.i r7 = r0.f3615u
            int r7 = r7.m()
            androidx.recyclerview.widget.i r8 = r0.f3615u
            int r8 = r8.i()
            r9 = 0
            r10 = r9
            r11 = r10
        L2b:
            if (r1 == r2) goto L7a
            android.view.View r12 = r0.I(r1)
            int r13 = r0.h0(r12)
            androidx.recyclerview.widget.i r14 = r0.f3615u
            int r14 = r14.g(r12)
            androidx.recyclerview.widget.i r15 = r0.f3615u
            int r15 = r15.d(r12)
            if (r13 < 0) goto L78
            if (r13 >= r6) goto L78
            android.view.ViewGroup$LayoutParams r13 = r12.getLayoutParams()
            androidx.recyclerview.widget.RecyclerView$q r13 = (androidx.recyclerview.widget.RecyclerView.q) r13
            boolean r13 = r13.c()
            if (r13 == 0) goto L55
            if (r11 != 0) goto L78
            r11 = r12
            goto L78
        L55:
            if (r15 > r7) goto L5b
            if (r14 >= r7) goto L5b
            r13 = 1
            goto L5c
        L5b:
            r13 = 0
        L5c:
            if (r14 < r8) goto L62
            if (r15 <= r8) goto L62
            r14 = 1
            goto L63
        L62:
            r14 = 0
        L63:
            if (r13 != 0) goto L69
            if (r14 == 0) goto L68
            goto L69
        L68:
            return r12
        L69:
            if (r19 == 0) goto L71
            if (r14 == 0) goto L6e
            goto L73
        L6e:
            if (r9 != 0) goto L78
            goto L77
        L71:
            if (r13 == 0) goto L75
        L73:
            r10 = r12
            goto L78
        L75:
            if (r9 != 0) goto L78
        L77:
            r9 = r12
        L78:
            int r1 = r1 + r5
            goto L2b
        L7a:
            if (r9 == 0) goto L7d
            goto L82
        L7d:
            if (r10 == 0) goto L81
            r9 = r10
            goto L82
        L81:
            r9 = r11
        L82:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.f2(androidx.recyclerview.widget.RecyclerView$w, androidx.recyclerview.widget.RecyclerView$b0, boolean, boolean):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void g(String str) {
        if (this.D == null) {
            super.g(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean k() {
        return this.f3613s == 0;
    }

    @Deprecated
    protected int k2(RecyclerView.b0 b0Var) {
        if (b0Var.d()) {
            return this.f3615u.n();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean l() {
        return this.f3613s == 1;
    }

    public int l2() {
        return this.f3613s;
    }

    protected boolean m2() {
        return Z() == 1;
    }

    public boolean n2() {
        return this.f3620z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void o(int i10, int i11, RecyclerView.b0 b0Var, RecyclerView.p.c cVar) {
        if (this.f3613s != 0) {
            i10 = i11;
        }
        if (J() == 0 || i10 == 0) {
            return;
        }
        T1();
        E2(i10 > 0 ? 1 : -1, Math.abs(i10), true, b0Var);
        N1(b0Var, this.f3614t, cVar);
    }

    void o2(RecyclerView.w wVar, RecyclerView.b0 b0Var, c cVar, b bVar) {
        int i10;
        int i11;
        int i12;
        int iE0;
        int iF;
        View viewD = cVar.d(wVar);
        if (viewD == null) {
            bVar.f3627b = true;
            return;
        }
        RecyclerView.q qVar = (RecyclerView.q) viewD.getLayoutParams();
        if (cVar.f3641l == null) {
            if (this.f3618x == (cVar.f3635f == -1)) {
                d(viewD);
            } else {
                e(viewD, 0);
            }
        } else {
            if (this.f3618x == (cVar.f3635f == -1)) {
                b(viewD);
            } else {
                c(viewD, 0);
            }
        }
        A0(viewD, 0, 0);
        bVar.f3626a = this.f3615u.e(viewD);
        if (this.f3613s == 1) {
            if (m2()) {
                iF = o0() - f0();
                iE0 = iF - this.f3615u.f(viewD);
            } else {
                iE0 = e0();
                iF = this.f3615u.f(viewD) + iE0;
            }
            if (cVar.f3635f == -1) {
                int i13 = cVar.f3631b;
                i12 = i13;
                i11 = iF;
                i10 = i13 - bVar.f3626a;
            } else {
                int i14 = cVar.f3631b;
                i10 = i14;
                i11 = iF;
                i12 = bVar.f3626a + i14;
            }
        } else {
            int iG0 = g0();
            int iF2 = this.f3615u.f(viewD) + iG0;
            if (cVar.f3635f == -1) {
                int i15 = cVar.f3631b;
                i11 = i15;
                i10 = iG0;
                i12 = iF2;
                iE0 = i15 - bVar.f3626a;
            } else {
                int i16 = cVar.f3631b;
                i10 = iG0;
                i11 = bVar.f3626a + i16;
                i12 = iF2;
                iE0 = i16;
            }
        }
        z0(viewD, iE0, i10, i11, i12);
        if (qVar.c() || qVar.b()) {
            bVar.f3628c = true;
        }
        bVar.f3629d = viewD.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void p(int i10, RecyclerView.p.c cVar) {
        boolean z10;
        int i11;
        d dVar = this.D;
        if (dVar == null || !dVar.h()) {
            w2();
            z10 = this.f3618x;
            i11 = this.A;
            if (i11 == -1) {
                i11 = z10 ? i10 - 1 : 0;
            }
        } else {
            d dVar2 = this.D;
            z10 = dVar2.f3645q;
            i11 = dVar2.f3643o;
        }
        int i12 = z10 ? -1 : 1;
        for (int i13 = 0; i13 < this.G && i11 >= 0 && i11 < i10; i13++) {
            cVar.a(i11, 0);
            i11 += i12;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int q(RecyclerView.b0 b0Var) {
        return O1(b0Var);
    }

    void q2(RecyclerView.w wVar, RecyclerView.b0 b0Var, a aVar, int i10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int r(RecyclerView.b0 b0Var) {
        return P1(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int s(RecyclerView.b0 b0Var) {
        return Q1(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean s0() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int t(RecyclerView.b0 b0Var) {
        return O1(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int u(RecyclerView.b0 b0Var) {
        return P1(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int v(RecyclerView.b0 b0Var) {
        return Q1(b0Var);
    }

    boolean v2() {
        return this.f3615u.k() == 0 && this.f3615u.h() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int w1(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (this.f3613s == 1) {
            return 0;
        }
        return x2(i10, wVar, b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void x1(int i10) {
        this.A = i10;
        this.B = Integer.MIN_VALUE;
        d dVar = this.D;
        if (dVar != null) {
            dVar.t();
        }
        t1();
    }

    int x2(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (J() == 0 || i10 == 0) {
            return 0;
        }
        T1();
        this.f3614t.f3630a = true;
        int i11 = i10 > 0 ? 1 : -1;
        int iAbs = Math.abs(i10);
        E2(i11, iAbs, true, b0Var);
        c cVar = this.f3614t;
        int iU1 = cVar.f3636g + U1(wVar, cVar, b0Var, false);
        if (iU1 < 0) {
            return 0;
        }
        if (iAbs > iU1) {
            i10 = i11 * iU1;
        }
        this.f3615u.r(-i10);
        this.f3614t.f3640k = i10;
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int y1(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (this.f3613s == 0) {
            return 0;
        }
        return x2(i10, wVar, b0Var);
    }

    public void y2(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i10);
        }
        g(null);
        if (i10 != this.f3613s || this.f3615u == null) {
            i iVarB = i.b(this, i10);
            this.f3615u = iVarB;
            this.E.f3621a = iVarB;
            this.f3613s = i10;
            t1();
        }
    }

    public void z2(boolean z10) {
        g(null);
        if (z10 == this.f3617w) {
            return;
        }
        this.f3617w = z10;
        t1();
    }

    public LinearLayoutManager(Context context, int i10, boolean z10) {
        this.f3613s = 1;
        this.f3617w = false;
        this.f3618x = false;
        this.f3619y = false;
        this.f3620z = true;
        this.A = -1;
        this.B = Integer.MIN_VALUE;
        this.D = null;
        this.E = new a();
        this.F = new b();
        this.G = 2;
        this.H = new int[2];
        y2(i10);
        z2(z10);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f3613s = 1;
        this.f3617w = false;
        this.f3618x = false;
        this.f3619y = false;
        this.f3620z = true;
        this.A = -1;
        this.B = Integer.MIN_VALUE;
        this.D = null;
        this.E = new a();
        this.F = new b();
        this.G = 2;
        this.H = new int[2];
        RecyclerView.p.d dVarI0 = RecyclerView.p.i0(context, attributeSet, i10, i11);
        y2(dVarI0.f3779a);
        z2(dVarI0.f3781c);
        A2(dVarI0.f3782d);
    }
}
