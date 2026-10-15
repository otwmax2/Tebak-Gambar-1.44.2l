package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: PagerSnapHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class j extends n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i f3978d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i f3979e;

    /* JADX INFO: compiled from: PagerSnapHelper.java */
    class a extends g {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.g, androidx.recyclerview.widget.RecyclerView.a0
        protected void o(View view, RecyclerView.b0 b0Var, RecyclerView.a0.a aVar) {
            j jVar = j.this;
            int[] iArrC = jVar.c(jVar.f3986a.getLayoutManager(), view);
            int i10 = iArrC[0];
            int i11 = iArrC[1];
            int iW = w(Math.max(Math.abs(i10), Math.abs(i11)));
            if (iW > 0) {
                aVar.d(i10, i11, iW, this.f3967j);
            }
        }

        @Override // androidx.recyclerview.widget.g
        protected float v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.g
        protected int x(int i10) {
            return Math.min(100, super.x(i10));
        }
    }

    private int k(View view, i iVar) {
        return (iVar.g(view) + (iVar.e(view) / 2)) - (iVar.m() + (iVar.n() / 2));
    }

    private View l(RecyclerView.p pVar, i iVar) {
        int iJ = pVar.J();
        View view = null;
        if (iJ == 0) {
            return null;
        }
        int iM = iVar.m() + (iVar.n() / 2);
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < iJ; i11++) {
            View viewI = pVar.I(i11);
            int iAbs = Math.abs((iVar.g(viewI) + (iVar.e(viewI) / 2)) - iM);
            if (iAbs < i10) {
                view = viewI;
                i10 = iAbs;
            }
        }
        return view;
    }

    private i m(RecyclerView.p pVar) {
        i iVar = this.f3979e;
        if (iVar == null || iVar.f3975a != pVar) {
            this.f3979e = i.a(pVar);
        }
        return this.f3979e;
    }

    private i n(RecyclerView.p pVar) {
        if (pVar.l()) {
            return o(pVar);
        }
        if (pVar.k()) {
            return m(pVar);
        }
        return null;
    }

    private i o(RecyclerView.p pVar) {
        i iVar = this.f3978d;
        if (iVar == null || iVar.f3975a != pVar) {
            this.f3978d = i.c(pVar);
        }
        return this.f3978d;
    }

    private boolean p(RecyclerView.p pVar, int i10, int i11) {
        return pVar.k() ? i10 > 0 : i11 > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean q(RecyclerView.p pVar) {
        PointF pointFA;
        int iY = pVar.Y();
        if (!(pVar instanceof RecyclerView.a0.b) || (pointFA = ((RecyclerView.a0.b) pVar).a(iY - 1)) == null) {
            return false;
        }
        return pointFA.x < 0.0f || pointFA.y < 0.0f;
    }

    @Override // androidx.recyclerview.widget.n
    public int[] c(RecyclerView.p pVar, View view) {
        int[] iArr = new int[2];
        if (pVar.k()) {
            iArr[0] = k(view, m(pVar));
        } else {
            iArr[0] = 0;
        }
        if (pVar.l()) {
            iArr[1] = k(view, o(pVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.n
    protected RecyclerView.a0 d(RecyclerView.p pVar) {
        if (pVar instanceof RecyclerView.a0.b) {
            return new a(this.f3986a.getContext());
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.n
    public View f(RecyclerView.p pVar) {
        if (pVar.l()) {
            return l(pVar, o(pVar));
        }
        if (pVar.k()) {
            return l(pVar, m(pVar));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.n
    public int g(RecyclerView.p pVar, int i10, int i11) {
        i iVarN;
        int iY = pVar.Y();
        if (iY == 0 || (iVarN = n(pVar)) == null) {
            return -1;
        }
        int i12 = Integer.MIN_VALUE;
        int i13 = Integer.MAX_VALUE;
        int iJ = pVar.J();
        View view = null;
        View view2 = null;
        for (int i14 = 0; i14 < iJ; i14++) {
            View viewI = pVar.I(i14);
            if (viewI != null) {
                int iK = k(viewI, iVarN);
                if (iK <= 0 && iK > i12) {
                    view2 = viewI;
                    i12 = iK;
                }
                if (iK >= 0 && iK < i13) {
                    view = viewI;
                    i13 = iK;
                }
            }
        }
        boolean zP = p(pVar, i10, i11);
        if (zP && view != null) {
            return pVar.h0(view);
        }
        if (!zP && view2 != null) {
            return pVar.h0(view2);
        }
        if (zP) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int iH0 = pVar.h0(view) + (q(pVar) == zP ? -1 : 1);
        if (iH0 < 0 || iH0 >= iY) {
            return -1;
        }
        return iH0;
    }
}
