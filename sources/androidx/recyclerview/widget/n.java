package androidx.recyclerview.widget;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: SnapHelper.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class n extends RecyclerView.s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    RecyclerView f3986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Scroller f3987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RecyclerView.u f3988c = new a();

    /* JADX INFO: compiled from: SnapHelper.java */
    class a extends RecyclerView.u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f3989a = false;

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void a(RecyclerView recyclerView, int i10) {
            super.a(recyclerView, i10);
            if (i10 == 0 && this.f3989a) {
                this.f3989a = false;
                n.this.j();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void b(RecyclerView recyclerView, int i10, int i11) {
            if (i10 == 0 && i11 == 0) {
                return;
            }
            this.f3989a = true;
        }
    }

    private void e() {
        this.f3986a.Y0(this.f3988c);
        this.f3986a.setOnFlingListener(null);
    }

    private void h() throws IllegalStateException {
        if (this.f3986a.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.f3986a.k(this.f3988c);
        this.f3986a.setOnFlingListener(this);
    }

    private boolean i(RecyclerView.p pVar, int i10, int i11) {
        RecyclerView.a0 a0VarD;
        int iG;
        if (!(pVar instanceof RecyclerView.a0.b) || (a0VarD = d(pVar)) == null || (iG = g(pVar, i10, i11)) == -1) {
            return false;
        }
        a0VarD.p(iG);
        pVar.J1(a0VarD);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public boolean a(int i10, int i11) {
        RecyclerView.p layoutManager = this.f3986a.getLayoutManager();
        if (layoutManager == null || this.f3986a.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.f3986a.getMinFlingVelocity();
        return (Math.abs(i11) > minFlingVelocity || Math.abs(i10) > minFlingVelocity) && i(layoutManager, i10, i11);
    }

    public void b(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.f3986a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            e();
        }
        this.f3986a = recyclerView;
        if (recyclerView != null) {
            h();
            this.f3987b = new Scroller(this.f3986a.getContext(), new DecelerateInterpolator());
            j();
        }
    }

    public abstract int[] c(RecyclerView.p pVar, View view);

    protected abstract RecyclerView.a0 d(RecyclerView.p pVar);

    public abstract View f(RecyclerView.p pVar);

    public abstract int g(RecyclerView.p pVar, int i10, int i11);

    void j() {
        RecyclerView.p layoutManager;
        View viewF;
        RecyclerView recyclerView = this.f3986a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewF = f(layoutManager)) == null) {
            return;
        }
        int[] iArrC = c(layoutManager, viewF);
        if (iArrC[0] == 0 && iArrC[1] == 0) {
            return;
        }
        this.f3986a.l1(iArrC[0], iArrC[1]);
    }
}
