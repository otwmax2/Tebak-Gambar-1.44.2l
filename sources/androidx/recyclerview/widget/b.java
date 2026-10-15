package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: ChildHelper.java */
/* JADX INFO: loaded from: classes.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final InterfaceC0062b f3855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final a f3856b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final List<View> f3857c = new ArrayList();

    /* JADX INFO: compiled from: ChildHelper.java */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f3858a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        a f3859b;

        a() {
        }

        private void c() {
            if (this.f3859b == null) {
                this.f3859b = new a();
            }
        }

        void a(int i10) {
            if (i10 < 64) {
                this.f3858a &= (1 << i10) ^ (-1);
                return;
            }
            a aVar = this.f3859b;
            if (aVar != null) {
                aVar.a(i10 - 64);
            }
        }

        int b(int i10) {
            a aVar = this.f3859b;
            return aVar == null ? i10 >= 64 ? Long.bitCount(this.f3858a) : Long.bitCount(this.f3858a & ((1 << i10) - 1)) : i10 < 64 ? Long.bitCount(this.f3858a & ((1 << i10) - 1)) : aVar.b(i10 - 64) + Long.bitCount(this.f3858a);
        }

        boolean d(int i10) {
            if (i10 < 64) {
                return (this.f3858a & (1 << i10)) != 0;
            }
            c();
            return this.f3859b.d(i10 - 64);
        }

        void e(int i10, boolean z10) {
            if (i10 >= 64) {
                c();
                this.f3859b.e(i10 - 64, z10);
                return;
            }
            long j10 = this.f3858a;
            boolean z11 = (Long.MIN_VALUE & j10) != 0;
            long j11 = (1 << i10) - 1;
            this.f3858a = ((j10 & (j11 ^ (-1))) << 1) | (j10 & j11);
            if (z10) {
                h(i10);
            } else {
                a(i10);
            }
            if (z11 || this.f3859b != null) {
                c();
                this.f3859b.e(0, z11);
            }
        }

        boolean f(int i10) {
            if (i10 >= 64) {
                c();
                return this.f3859b.f(i10 - 64);
            }
            long j10 = 1 << i10;
            long j11 = this.f3858a;
            boolean z10 = (j11 & j10) != 0;
            long j12 = j11 & (j10 ^ (-1));
            this.f3858a = j12;
            long j13 = j10 - 1;
            this.f3858a = (j12 & j13) | Long.rotateRight((j13 ^ (-1)) & j12, 1);
            a aVar = this.f3859b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    h(63);
                }
                this.f3859b.f(0);
            }
            return z10;
        }

        void g() {
            this.f3858a = 0L;
            a aVar = this.f3859b;
            if (aVar != null) {
                aVar.g();
            }
        }

        void h(int i10) {
            if (i10 < 64) {
                this.f3858a |= 1 << i10;
            } else {
                c();
                this.f3859b.h(i10 - 64);
            }
        }

        public String toString() {
            if (this.f3859b == null) {
                return Long.toBinaryString(this.f3858a);
            }
            return this.f3859b.toString() + "xx" + Long.toBinaryString(this.f3858a);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ChildHelper.java */
    interface InterfaceC0062b {
        View a(int i10);

        void b(View view);

        int c();

        void d();

        int e(View view);

        RecyclerView.e0 f(View view);

        void g(int i10);

        void h(View view);

        void i(View view, int i10);

        void j(int i10);

        void k(View view, int i10, ViewGroup.LayoutParams layoutParams);
    }

    b(InterfaceC0062b interfaceC0062b) {
        this.f3855a = interfaceC0062b;
    }

    private int h(int i10) {
        if (i10 < 0) {
            return -1;
        }
        int iC = this.f3855a.c();
        int i11 = i10;
        while (i11 < iC) {
            int iB = i10 - (i11 - this.f3856b.b(i11));
            if (iB == 0) {
                while (this.f3856b.d(i11)) {
                    i11++;
                }
                return i11;
            }
            i11 += iB;
        }
        return -1;
    }

    private void l(View view) {
        this.f3857c.add(view);
        this.f3855a.b(view);
    }

    private boolean t(View view) {
        if (!this.f3857c.remove(view)) {
            return false;
        }
        this.f3855a.h(view);
        return true;
    }

    void a(View view, int i10, boolean z10) {
        int iC = i10 < 0 ? this.f3855a.c() : h(i10);
        this.f3856b.e(iC, z10);
        if (z10) {
            l(view);
        }
        this.f3855a.i(view, iC);
    }

    void b(View view, boolean z10) {
        a(view, -1, z10);
    }

    void c(View view, int i10, ViewGroup.LayoutParams layoutParams, boolean z10) {
        int iC = i10 < 0 ? this.f3855a.c() : h(i10);
        this.f3856b.e(iC, z10);
        if (z10) {
            l(view);
        }
        this.f3855a.k(view, iC, layoutParams);
    }

    void d(int i10) {
        int iH = h(i10);
        this.f3856b.f(iH);
        this.f3855a.g(iH);
    }

    View e(int i10) {
        int size = this.f3857c.size();
        for (int i11 = 0; i11 < size; i11++) {
            View view = this.f3857c.get(i11);
            RecyclerView.e0 e0VarF = this.f3855a.f(view);
            if (e0VarF.w() == i10 && !e0VarF.D() && !e0VarF.F()) {
                return view;
            }
        }
        return null;
    }

    View f(int i10) {
        return this.f3855a.a(h(i10));
    }

    int g() {
        return this.f3855a.c() - this.f3857c.size();
    }

    View i(int i10) {
        return this.f3855a.a(i10);
    }

    int j() {
        return this.f3855a.c();
    }

    void k(View view) {
        int iE = this.f3855a.e(view);
        if (iE >= 0) {
            this.f3856b.h(iE);
            l(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    int m(View view) {
        int iE = this.f3855a.e(view);
        if (iE == -1 || this.f3856b.d(iE)) {
            return -1;
        }
        return iE - this.f3856b.b(iE);
    }

    boolean n(View view) {
        return this.f3857c.contains(view);
    }

    void o() {
        this.f3856b.g();
        for (int size = this.f3857c.size() - 1; size >= 0; size--) {
            this.f3855a.h(this.f3857c.get(size));
            this.f3857c.remove(size);
        }
        this.f3855a.d();
    }

    void p(View view) {
        int iE = this.f3855a.e(view);
        if (iE < 0) {
            return;
        }
        if (this.f3856b.f(iE)) {
            t(view);
        }
        this.f3855a.j(iE);
    }

    void q(int i10) {
        int iH = h(i10);
        View viewA = this.f3855a.a(iH);
        if (viewA == null) {
            return;
        }
        if (this.f3856b.f(iH)) {
            t(viewA);
        }
        this.f3855a.j(iH);
    }

    boolean r(View view) {
        int iE = this.f3855a.e(view);
        if (iE == -1) {
            t(view);
            return true;
        }
        if (!this.f3856b.d(iE)) {
            return false;
        }
        this.f3856b.f(iE);
        t(view);
        this.f3855a.j(iE);
        return true;
    }

    void s(View view) {
        int iE = this.f3855a.e(view);
        if (iE < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (this.f3856b.d(iE)) {
            this.f3856b.a(iE);
            t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.f3856b.toString() + ", hidden list:" + this.f3857c.size();
    }
}
