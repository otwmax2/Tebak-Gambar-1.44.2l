package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: SimpleItemAnimator.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class m extends RecyclerView.m {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f3985g = true;

    public final void A(RecyclerView.e0 e0Var) {
        I(e0Var);
        h(e0Var);
    }

    public final void B(RecyclerView.e0 e0Var) {
        J(e0Var);
    }

    public final void C(RecyclerView.e0 e0Var, boolean z10) {
        K(e0Var, z10);
        h(e0Var);
    }

    public final void D(RecyclerView.e0 e0Var, boolean z10) {
        L(e0Var, z10);
    }

    public final void E(RecyclerView.e0 e0Var) {
        M(e0Var);
        h(e0Var);
    }

    public final void F(RecyclerView.e0 e0Var) {
        N(e0Var);
    }

    public final void G(RecyclerView.e0 e0Var) {
        O(e0Var);
        h(e0Var);
    }

    public final void H(RecyclerView.e0 e0Var) {
        P(e0Var);
    }

    public void I(RecyclerView.e0 e0Var) {
    }

    public void J(RecyclerView.e0 e0Var) {
    }

    public void K(RecyclerView.e0 e0Var, boolean z10) {
    }

    public void L(RecyclerView.e0 e0Var, boolean z10) {
    }

    public void M(RecyclerView.e0 e0Var) {
    }

    public void N(RecyclerView.e0 e0Var) {
    }

    public void O(RecyclerView.e0 e0Var) {
    }

    public void P(RecyclerView.e0 e0Var) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean a(RecyclerView.e0 e0Var, RecyclerView.m.c cVar, RecyclerView.m.c cVar2) {
        int i10;
        int i11;
        return (cVar == null || ((i10 = cVar.f3754a) == (i11 = cVar2.f3754a) && cVar.f3755b == cVar2.f3755b)) ? w(e0Var) : y(e0Var, i10, cVar.f3755b, i11, cVar2.f3755b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean b(RecyclerView.e0 e0Var, RecyclerView.e0 e0Var2, RecyclerView.m.c cVar, RecyclerView.m.c cVar2) {
        int i10;
        int i11;
        int i12 = cVar.f3754a;
        int i13 = cVar.f3755b;
        if (e0Var2.T()) {
            int i14 = cVar.f3754a;
            i11 = cVar.f3755b;
            i10 = i14;
        } else {
            i10 = cVar2.f3754a;
            i11 = cVar2.f3755b;
        }
        return x(e0Var, e0Var2, i12, i13, i10, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean c(RecyclerView.e0 e0Var, RecyclerView.m.c cVar, RecyclerView.m.c cVar2) {
        int i10 = cVar.f3754a;
        int i11 = cVar.f3755b;
        View view = e0Var.f3727o;
        int left = cVar2 == null ? view.getLeft() : cVar2.f3754a;
        int top = cVar2 == null ? view.getTop() : cVar2.f3755b;
        if (e0Var.F() || (i10 == left && i11 == top)) {
            return z(e0Var);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return y(e0Var, i10, i11, left, top);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean d(RecyclerView.e0 e0Var, RecyclerView.m.c cVar, RecyclerView.m.c cVar2) {
        int i10 = cVar.f3754a;
        int i11 = cVar2.f3754a;
        if (i10 != i11 || cVar.f3755b != cVar2.f3755b) {
            return y(e0Var, i10, cVar.f3755b, i11, cVar2.f3755b);
        }
        E(e0Var);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean f(RecyclerView.e0 e0Var) {
        return !this.f3985g || e0Var.D();
    }

    public abstract boolean w(RecyclerView.e0 e0Var);

    public abstract boolean x(RecyclerView.e0 e0Var, RecyclerView.e0 e0Var2, int i10, int i11, int i12, int i13);

    public abstract boolean y(RecyclerView.e0 e0Var, int i10, int i11, int i12, int i13);

    public abstract boolean z(RecyclerView.e0 e0Var);
}
