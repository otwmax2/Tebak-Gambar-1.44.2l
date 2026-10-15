package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.accessibility.c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    boolean I;
    int J;
    int[] K;
    View[] L;
    final SparseIntArray M;
    final SparseIntArray N;
    c O;
    final Rect P;
    private boolean Q;

    public static final class a extends c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int e(int i10, int i11) {
            return i10 % i11;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i10) {
            return 1;
        }
    }

    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final SparseIntArray f3609a = new SparseIntArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final SparseIntArray f3610b = new SparseIntArray();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f3611c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f3612d = false;

        static int a(SparseIntArray sparseIntArray, int i10) {
            int size = sparseIntArray.size() - 1;
            int i11 = 0;
            while (i11 <= size) {
                int i12 = (i11 + size) >>> 1;
                if (sparseIntArray.keyAt(i12) < i10) {
                    i11 = i12 + 1;
                } else {
                    size = i12 - 1;
                }
            }
            int i13 = i11 - 1;
            if (i13 < 0 || i13 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i13);
        }

        int b(int i10, int i11) {
            if (!this.f3612d) {
                return d(i10, i11);
            }
            int i12 = this.f3610b.get(i10, -1);
            if (i12 != -1) {
                return i12;
            }
            int iD = d(i10, i11);
            this.f3610b.put(i10, iD);
            return iD;
        }

        int c(int i10, int i11) {
            if (!this.f3611c) {
                return e(i10, i11);
            }
            int i12 = this.f3609a.get(i10, -1);
            if (i12 != -1) {
                return i12;
            }
            int iE = e(i10, i11);
            this.f3609a.put(i10, iE);
            return iE;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
        /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int d(int r7, int r8) {
            /*
                r6 = this;
                boolean r0 = r6.f3612d
                r1 = 0
                if (r0 == 0) goto L24
                android.util.SparseIntArray r0 = r6.f3610b
                int r0 = a(r0, r7)
                r2 = -1
                if (r0 == r2) goto L24
                android.util.SparseIntArray r2 = r6.f3610b
                int r2 = r2.get(r0)
                int r3 = r0 + 1
                int r4 = r6.c(r0, r8)
                int r0 = r6.f(r0)
                int r4 = r4 + r0
                if (r4 != r8) goto L27
                int r2 = r2 + 1
                goto L26
            L24:
                r2 = 0
                r3 = 0
            L26:
                r4 = 0
            L27:
                int r0 = r6.f(r7)
            L2b:
                if (r3 >= r7) goto L40
                int r5 = r6.f(r3)
                int r4 = r4 + r5
                if (r4 != r8) goto L38
                int r2 = r2 + 1
                r4 = 0
                goto L3d
            L38:
                if (r4 <= r8) goto L3d
                int r2 = r2 + 1
                r4 = r5
            L3d:
                int r3 = r3 + 1
                goto L2b
            L40:
                int r4 = r4 + r0
                if (r4 <= r8) goto L45
                int r2 = r2 + 1
            L45:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.c.d(int, int):int");
        }

        public abstract int e(int i10, int i11);

        public abstract int f(int i10);

        public void g() {
            this.f3610b.clear();
        }

        public void h() {
            this.f3609a.clear();
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.I = false;
        this.J = -1;
        this.M = new SparseIntArray();
        this.N = new SparseIntArray();
        this.O = new a();
        this.P = new Rect();
        a3(RecyclerView.p.i0(context, attributeSet, i10, i11).f3780b);
    }

    private void J2(RecyclerView.w wVar, RecyclerView.b0 b0Var, int i10, boolean z10) {
        int i11;
        int i12;
        int i13 = 0;
        int i14 = -1;
        if (z10) {
            i14 = i10;
            i11 = 0;
            i12 = 1;
        } else {
            i11 = i10 - 1;
            i12 = -1;
        }
        while (i11 != i14) {
            View view = this.L[i11];
            b bVar = (b) view.getLayoutParams();
            int iW2 = W2(wVar, b0Var, h0(view));
            bVar.f3608f = iW2;
            bVar.f3607e = i13;
            i13 += iW2;
            i11 += i12;
        }
    }

    private void K2() {
        int iJ = J();
        for (int i10 = 0; i10 < iJ; i10++) {
            b bVar = (b) I(i10).getLayoutParams();
            int iA = bVar.a();
            this.M.put(iA, bVar.f());
            this.N.put(iA, bVar.e());
        }
    }

    private void L2(int i10) {
        this.K = M2(this.K, this.J, i10);
    }

    static int[] M2(int[] iArr, int i10, int i11) {
        int i12;
        if (iArr == null || iArr.length != i10 + 1 || iArr[iArr.length - 1] != i11) {
            iArr = new int[i10 + 1];
        }
        int i13 = 0;
        iArr[0] = 0;
        int i14 = i11 / i10;
        int i15 = i11 % i10;
        int i16 = 0;
        for (int i17 = 1; i17 <= i10; i17++) {
            i13 += i15;
            if (i13 <= 0 || i10 - i13 >= i15) {
                i12 = i14;
            } else {
                i12 = i14 + 1;
                i13 -= i10;
            }
            i16 += i12;
            iArr[i17] = i16;
        }
        return iArr;
    }

    private void N2() {
        this.M.clear();
        this.N.clear();
    }

    private int O2(RecyclerView.b0 b0Var) {
        if (J() != 0 && b0Var.b() != 0) {
            T1();
            boolean zN2 = n2();
            View viewX1 = X1(!zN2, true);
            View viewW1 = W1(!zN2, true);
            if (viewX1 != null && viewW1 != null) {
                int iB = this.O.b(h0(viewX1), this.J);
                int iB2 = this.O.b(h0(viewW1), this.J);
                int iMax = this.f3618x ? Math.max(0, ((this.O.b(b0Var.b() - 1, this.J) + 1) - Math.max(iB, iB2)) - 1) : Math.max(0, Math.min(iB, iB2));
                if (zN2) {
                    return Math.round((iMax * (Math.abs(this.f3615u.d(viewW1) - this.f3615u.g(viewX1)) / ((this.O.b(h0(viewW1), this.J) - this.O.b(h0(viewX1), this.J)) + 1))) + (this.f3615u.m() - this.f3615u.g(viewX1)));
                }
                return iMax;
            }
        }
        return 0;
    }

    private int P2(RecyclerView.b0 b0Var) {
        if (J() != 0 && b0Var.b() != 0) {
            T1();
            View viewX1 = X1(!n2(), true);
            View viewW1 = W1(!n2(), true);
            if (viewX1 != null && viewW1 != null) {
                if (!n2()) {
                    return this.O.b(b0Var.b() - 1, this.J) + 1;
                }
                int iD = this.f3615u.d(viewW1) - this.f3615u.g(viewX1);
                int iB = this.O.b(h0(viewX1), this.J);
                return (int) ((iD / ((this.O.b(h0(viewW1), this.J) - iB) + 1)) * (this.O.b(b0Var.b() - 1, this.J) + 1));
            }
        }
        return 0;
    }

    private void Q2(RecyclerView.w wVar, RecyclerView.b0 b0Var, LinearLayoutManager.a aVar, int i10) {
        boolean z10 = i10 == 1;
        int iV2 = V2(wVar, b0Var, aVar.f3622b);
        if (z10) {
            while (iV2 > 0) {
                int i11 = aVar.f3622b;
                if (i11 <= 0) {
                    return;
                }
                int i12 = i11 - 1;
                aVar.f3622b = i12;
                iV2 = V2(wVar, b0Var, i12);
            }
            return;
        }
        int iB = b0Var.b() - 1;
        int i13 = aVar.f3622b;
        while (i13 < iB) {
            int i14 = i13 + 1;
            int iV22 = V2(wVar, b0Var, i14);
            if (iV22 <= iV2) {
                break;
            }
            i13 = i14;
            iV2 = iV22;
        }
        aVar.f3622b = i13;
    }

    private void R2() {
        View[] viewArr = this.L;
        if (viewArr == null || viewArr.length != this.J) {
            this.L = new View[this.J];
        }
    }

    private int U2(RecyclerView.w wVar, RecyclerView.b0 b0Var, int i10) {
        if (!b0Var.e()) {
            return this.O.b(i10, this.J);
        }
        int iF = wVar.f(i10);
        if (iF != -1) {
            return this.O.b(iF, this.J);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i10);
        return 0;
    }

    private int V2(RecyclerView.w wVar, RecyclerView.b0 b0Var, int i10) {
        if (!b0Var.e()) {
            return this.O.c(i10, this.J);
        }
        int i11 = this.N.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        int iF = wVar.f(i10);
        if (iF != -1) {
            return this.O.c(iF, this.J);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i10);
        return 0;
    }

    private int W2(RecyclerView.w wVar, RecyclerView.b0 b0Var, int i10) {
        if (!b0Var.e()) {
            return this.O.f(i10);
        }
        int i11 = this.M.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        int iF = wVar.f(i10);
        if (iF != -1) {
            return this.O.f(iF);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i10);
        return 1;
    }

    private void X2(float f10, int i10) {
        L2(Math.max(Math.round(f10 * this.J), i10));
    }

    private void Y2(View view, int i10, boolean z10) {
        int iK;
        int iK2;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.f3784b;
        int i11 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar).topMargin + ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        int i12 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar).leftMargin + ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        int iS2 = S2(bVar.f3607e, bVar.f3608f);
        if (this.f3613s == 1) {
            iK2 = RecyclerView.p.K(iS2, i10, i12, ((ViewGroup.MarginLayoutParams) bVar).width, false);
            iK = RecyclerView.p.K(this.f3615u.n(), X(), i11, ((ViewGroup.MarginLayoutParams) bVar).height, true);
        } else {
            int iK3 = RecyclerView.p.K(iS2, i10, i11, ((ViewGroup.MarginLayoutParams) bVar).height, false);
            int iK4 = RecyclerView.p.K(this.f3615u.n(), p0(), i12, ((ViewGroup.MarginLayoutParams) bVar).width, true);
            iK = iK3;
            iK2 = iK4;
        }
        Z2(view, iK2, iK, z10);
    }

    private void Z2(View view, int i10, int i11, boolean z10) {
        RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
        if (z10 ? H1(view, i10, i11, qVar) : F1(view, i10, i11, qVar)) {
            view.measure(i10, i11);
        }
    }

    private void b3() {
        int iW;
        int iG0;
        if (l2() == 1) {
            iW = o0() - f0();
            iG0 = e0();
        } else {
            iW = W() - d0();
            iG0 = g0();
        }
        L2(iW - iG0);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void A2(boolean z10) {
        if (z10) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.A2(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void C1(Rect rect, int i10, int i11) {
        int iN;
        int iN2;
        if (this.K == null) {
            super.C1(rect, i10, i11);
        }
        int iE0 = e0() + f0();
        int iG0 = g0() + d0();
        if (this.f3613s == 1) {
            iN2 = RecyclerView.p.n(i11, rect.height() + iG0, b0());
            int[] iArr = this.K;
            iN = RecyclerView.p.n(i10, iArr[iArr.length - 1] + iE0, c0());
        } else {
            iN = RecyclerView.p.n(i10, rect.width() + iE0, c0());
            int[] iArr2 = this.K;
            iN2 = RecyclerView.p.n(i11, iArr2[iArr2.length - 1] + iG0, b0());
        }
        B1(iN, iN2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q D() {
        return this.f3613s == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q E(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q F(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d6, code lost:
    
        if (r13 == (r2 > r15)) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0107  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.view.View J0(android.view.View r24, int r25, androidx.recyclerview.widget.RecyclerView.w r26, androidx.recyclerview.widget.RecyclerView.b0 r27) {
        /*
            Method dump skipped, instruction units count: 337
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.J0(android.view.View, int, androidx.recyclerview.widget.RecyclerView$w, androidx.recyclerview.widget.RecyclerView$b0):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public boolean L1() {
        return this.D == null && !this.I;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int N(RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (this.f3613s == 1) {
            return this.J;
        }
        if (b0Var.b() < 1) {
            return 0;
        }
        return U2(wVar, b0Var, b0Var.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void N1(RecyclerView.b0 b0Var, LinearLayoutManager.c cVar, RecyclerView.p.c cVar2) {
        int iF = this.J;
        for (int i10 = 0; i10 < this.J && cVar.c(b0Var) && iF > 0; i10++) {
            int i11 = cVar.f3633d;
            cVar2.a(i11, Math.max(0, cVar.f3636g));
            iF -= this.O.f(i11);
            cVar.f3633d += cVar.f3634e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void P0(RecyclerView.w wVar, RecyclerView.b0 b0Var, View view, androidx.core.view.accessibility.c cVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.O0(view, cVar);
            return;
        }
        b bVar = (b) layoutParams;
        int iU2 = U2(wVar, b0Var, bVar.a());
        if (this.f3613s == 0) {
            cVar.a0(c.C0039c.a(bVar.e(), bVar.f(), iU2, 1, false, false));
        } else {
            cVar.a0(c.C0039c.a(iU2, 1, bVar.e(), bVar.f(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void R0(RecyclerView recyclerView, int i10, int i11) {
        this.O.h();
        this.O.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void S0(RecyclerView recyclerView) {
        this.O.h();
        this.O.g();
    }

    int S2(int i10, int i11) {
        if (this.f3613s != 1 || !m2()) {
            int[] iArr = this.K;
            return iArr[i11 + i10] - iArr[i10];
        }
        int[] iArr2 = this.K;
        int i12 = this.J;
        return iArr2[i12 - i10] - iArr2[(i12 - i10) - i11];
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void T0(RecyclerView recyclerView, int i10, int i11, int i12) {
        this.O.h();
        this.O.g();
    }

    public int T2() {
        return this.J;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void U0(RecyclerView recyclerView, int i10, int i11) {
        this.O.h();
        this.O.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void W0(RecyclerView recyclerView, int i10, int i11, Object obj) {
        this.O.h();
        this.O.g();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public void X0(RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (b0Var.e()) {
            K2();
        }
        super.X0(wVar, b0Var);
        N2();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public void Y0(RecyclerView.b0 b0Var) {
        super.Y0(b0Var);
        this.I = false;
    }

    public void a3(int i10) {
        if (i10 == this.J) {
            return;
        }
        this.I = true;
        if (i10 >= 1) {
            this.J = i10;
            this.O.h();
            t1();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i10);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    View f2(RecyclerView.w wVar, RecyclerView.b0 b0Var, boolean z10, boolean z11) {
        int iJ;
        int iJ2 = J();
        int i10 = -1;
        int i11 = 1;
        if (z11) {
            iJ = J() - 1;
            i11 = -1;
        } else {
            i10 = iJ2;
            iJ = 0;
        }
        int iB = b0Var.b();
        T1();
        int iM = this.f3615u.m();
        int i12 = this.f3615u.i();
        View view = null;
        View view2 = null;
        while (iJ != i10) {
            View viewI = I(iJ);
            int iH0 = h0(viewI);
            if (iH0 >= 0 && iH0 < iB && V2(wVar, b0Var, iH0) == 0) {
                if (((RecyclerView.q) viewI.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = viewI;
                    }
                } else {
                    if (this.f3615u.g(viewI) < i12 && this.f3615u.d(viewI) >= iM) {
                        return viewI;
                    }
                    if (view == null) {
                        view = viewI;
                    }
                }
            }
            iJ += i11;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int k0(RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (this.f3613s == 0) {
            return this.J;
        }
        if (b0Var.b() < 1) {
            return 0;
        }
        return U2(wVar, b0Var, b0Var.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean m(RecyclerView.q qVar) {
        return qVar instanceof b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v19 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void o2(RecyclerView.w wVar, RecyclerView.b0 b0Var, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int iF;
        int iF2;
        int iF3;
        int iK;
        int iK2;
        View viewD;
        int iL = this.f3615u.l();
        ?? r52 = 0;
        boolean z10 = iL != 1073741824;
        int i15 = J() > 0 ? this.K[this.J] : 0;
        if (z10) {
            b3();
        }
        boolean z11 = cVar.f3634e == 1;
        int iV2 = this.J;
        if (!z11) {
            iV2 = V2(wVar, b0Var, cVar.f3633d) + W2(wVar, b0Var, cVar.f3633d);
        }
        int i16 = 0;
        while (i16 < this.J && cVar.c(b0Var) && iV2 > 0) {
            int i17 = cVar.f3633d;
            int iW2 = W2(wVar, b0Var, i17);
            if (iW2 > this.J) {
                throw new IllegalArgumentException("Item at position " + i17 + " requires " + iW2 + " spans but GridLayoutManager has only " + this.J + " spans.");
            }
            iV2 -= iW2;
            if (iV2 < 0 || (viewD = cVar.d(wVar)) == null) {
                break;
            }
            this.L[i16] = viewD;
            i16++;
        }
        if (i16 == 0) {
            bVar.f3627b = true;
            return;
        }
        float f10 = 0.0f;
        J2(wVar, b0Var, i16, z11);
        int i18 = 0;
        int i19 = 0;
        while (i18 < i16) {
            View view = this.L[i18];
            if (cVar.f3641l == null) {
                if (z11) {
                    d(view);
                } else {
                    e(view, r52);
                }
            } else if (z11) {
                b(view);
            } else {
                c(view, r52);
            }
            j(view, this.P);
            Y2(view, iL, r52);
            int iE = this.f3615u.e(view);
            if (iE > i19) {
                i19 = iE;
            }
            float f11 = (this.f3615u.f(view) * 1.0f) / ((b) view.getLayoutParams()).f3608f;
            if (f11 > f10) {
                f10 = f11;
            }
            i18++;
            r52 = 0;
        }
        if (z10) {
            X2(f10, i15);
            i19 = 0;
            for (int i20 = 0; i20 < i16; i20++) {
                View view2 = this.L[i20];
                Y2(view2, 1073741824, true);
                int iE2 = this.f3615u.e(view2);
                if (iE2 > i19) {
                    i19 = iE2;
                }
            }
        }
        for (int i21 = 0; i21 < i16; i21++) {
            View view3 = this.L[i21];
            if (this.f3615u.e(view3) != i19) {
                b bVar2 = (b) view3.getLayoutParams();
                Rect rect = bVar2.f3784b;
                int i22 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar2).topMargin + ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin;
                int i23 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar2).leftMargin + ((ViewGroup.MarginLayoutParams) bVar2).rightMargin;
                int iS2 = S2(bVar2.f3607e, bVar2.f3608f);
                if (this.f3613s == 1) {
                    iK2 = RecyclerView.p.K(iS2, 1073741824, i23, ((ViewGroup.MarginLayoutParams) bVar2).width, false);
                    iK = View.MeasureSpec.makeMeasureSpec(i19 - i22, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i19 - i23, 1073741824);
                    iK = RecyclerView.p.K(iS2, 1073741824, i22, ((ViewGroup.MarginLayoutParams) bVar2).height, false);
                    iK2 = iMakeMeasureSpec;
                }
                Z2(view3, iK2, iK, true);
            }
        }
        int i24 = 0;
        bVar.f3626a = i19;
        if (this.f3613s == 1) {
            if (cVar.f3635f == -1) {
                i12 = cVar.f3631b;
                i13 = i12 - i19;
            } else {
                int i25 = cVar.f3631b;
                i13 = i25;
                i12 = i19 + i25;
            }
            i10 = 0;
            i11 = 0;
        } else if (cVar.f3635f == -1) {
            int i26 = cVar.f3631b;
            i11 = i26 - i19;
            i13 = 0;
            i10 = i26;
            i12 = 0;
        } else {
            int i27 = cVar.f3631b;
            i10 = i19 + i27;
            i11 = i27;
            i12 = 0;
            i13 = 0;
        }
        while (i24 < i16) {
            View view4 = this.L[i24];
            b bVar3 = (b) view4.getLayoutParams();
            if (this.f3613s == 1) {
                if (m2()) {
                    int iE0 = e0() + this.K[this.J - bVar3.f3607e];
                    iF3 = i12;
                    iF = iE0;
                    iF2 = iE0 - this.f3615u.f(view4);
                } else {
                    int iE02 = e0() + this.K[bVar3.f3607e];
                    iF3 = i12;
                    iF2 = iE02;
                    iF = this.f3615u.f(view4) + iE02;
                }
                i14 = i13;
            } else {
                int iG0 = g0() + this.K[bVar3.f3607e];
                i14 = iG0;
                iF = i10;
                iF2 = i11;
                iF3 = this.f3615u.f(view4) + iG0;
            }
            z0(view4, iF2, i14, iF, iF3);
            if (bVar3.c() || bVar3.b()) {
                bVar.f3628c = true;
            }
            bVar.f3629d |= view4.hasFocusable();
            i24++;
            i12 = iF3;
            i10 = iF;
            i11 = iF2;
            i13 = i14;
        }
        Arrays.fill(this.L, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void q2(RecyclerView.w wVar, RecyclerView.b0 b0Var, LinearLayoutManager.a aVar, int i10) {
        super.q2(wVar, b0Var, aVar, i10);
        b3();
        if (b0Var.b() > 0 && !b0Var.e()) {
            Q2(wVar, b0Var, aVar, i10);
        }
        R2();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int r(RecyclerView.b0 b0Var) {
        return this.Q ? O2(b0Var) : super.r(b0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int s(RecyclerView.b0 b0Var) {
        return this.Q ? P2(b0Var) : super.s(b0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int u(RecyclerView.b0 b0Var) {
        return this.Q ? O2(b0Var) : super.u(b0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int v(RecyclerView.b0 b0Var) {
        return this.Q ? P2(b0Var) : super.v(b0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int w1(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        b3();
        R2();
        return super.w1(i10, wVar, b0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int y1(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        b3();
        R2();
        return super.y1(i10, wVar, b0Var);
    }

    public static class b extends RecyclerView.q {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f3607e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f3608f;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3607e = -1;
            this.f3608f = 0;
        }

        public int e() {
            return this.f3607e;
        }

        public int f() {
            return this.f3608f;
        }

        public b(int i10, int i11) {
            super(i10, i11);
            this.f3607e = -1;
            this.f3608f = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3607e = -1;
            this.f3608f = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3607e = -1;
            this.f3608f = 0;
        }
    }

    public GridLayoutManager(Context context, int i10) {
        super(context);
        this.I = false;
        this.J = -1;
        this.M = new SparseIntArray();
        this.N = new SparseIntArray();
        this.O = new a();
        this.P = new Rect();
        a3(i10);
    }

    public GridLayoutManager(Context context, int i10, int i11, boolean z10) {
        super(context, i11, z10);
        this.I = false;
        this.J = -1;
        this.M = new SparseIntArray();
        this.N = new SparseIntArray();
        this.O = new a();
        this.P = new Rect();
        a3(i10);
    }
}
