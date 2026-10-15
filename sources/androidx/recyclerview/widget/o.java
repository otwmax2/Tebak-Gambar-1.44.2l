package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: compiled from: ViewBoundsCheck.java */
/* JADX INFO: loaded from: classes.dex */
class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f3991a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f3992b = new a();

    /* JADX INFO: compiled from: ViewBoundsCheck.java */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3993a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3994b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f3995c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3996d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f3997e;

        a() {
        }

        void a(int i10) {
            this.f3993a = i10 | this.f3993a;
        }

        boolean b() {
            int i10 = this.f3993a;
            if ((i10 & 7) != 0 && (i10 & (c(this.f3996d, this.f3994b) << 0)) == 0) {
                return false;
            }
            int i11 = this.f3993a;
            if ((i11 & 112) != 0 && (i11 & (c(this.f3996d, this.f3995c) << 4)) == 0) {
                return false;
            }
            int i12 = this.f3993a;
            if ((i12 & 1792) != 0 && (i12 & (c(this.f3997e, this.f3994b) << 8)) == 0) {
                return false;
            }
            int i13 = this.f3993a;
            return (i13 & 28672) == 0 || (i13 & (c(this.f3997e, this.f3995c) << 12)) != 0;
        }

        int c(int i10, int i11) {
            if (i10 > i11) {
                return 1;
            }
            return i10 == i11 ? 2 : 4;
        }

        void d() {
            this.f3993a = 0;
        }

        void e(int i10, int i11, int i12, int i13) {
            this.f3994b = i10;
            this.f3995c = i11;
            this.f3996d = i12;
            this.f3997e = i13;
        }
    }

    /* JADX INFO: compiled from: ViewBoundsCheck.java */
    interface b {
        View a(int i10);

        int b(View view);

        int c();

        int d();

        int e(View view);
    }

    o(b bVar) {
        this.f3991a = bVar;
    }

    View a(int i10, int i11, int i12, int i13) {
        int iC = this.f3991a.c();
        int iD = this.f3991a.d();
        int i14 = i11 > i10 ? 1 : -1;
        View view = null;
        while (i10 != i11) {
            View viewA = this.f3991a.a(i10);
            this.f3992b.e(iC, iD, this.f3991a.b(viewA), this.f3991a.e(viewA));
            if (i12 != 0) {
                this.f3992b.d();
                this.f3992b.a(i12);
                if (this.f3992b.b()) {
                    return viewA;
                }
            }
            if (i13 != 0) {
                this.f3992b.d();
                this.f3992b.a(i13);
                if (this.f3992b.b()) {
                    view = viewA;
                }
            }
            i10 += i14;
        }
        return view;
    }

    boolean b(View view, int i10) {
        this.f3992b.e(this.f3991a.c(), this.f3991a.d(), this.f3991a.b(view), this.f3991a.e(view));
        if (i10 == 0) {
            return false;
        }
        this.f3992b.d();
        this.f3992b.a(i10);
        return this.f3992b.b();
    }
}
