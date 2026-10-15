package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: LayoutState.java */
/* JADX INFO: loaded from: classes.dex */
class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f3958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f3959c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f3960d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f3961e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f3964h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f3965i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f3957a = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f3962f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f3963g = 0;

    f() {
    }

    boolean a(RecyclerView.b0 b0Var) {
        int i10 = this.f3959c;
        return i10 >= 0 && i10 < b0Var.b();
    }

    View b(RecyclerView.w wVar) {
        View viewO = wVar.o(this.f3959c);
        this.f3959c += this.f3960d;
        return viewO;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f3958b + ", mCurrentPosition=" + this.f3959c + ", mItemDirection=" + this.f3960d + ", mLayoutDirection=" + this.f3961e + ", mStartLine=" + this.f3962f + ", mEndLine=" + this.f3963g + '}';
    }
}
