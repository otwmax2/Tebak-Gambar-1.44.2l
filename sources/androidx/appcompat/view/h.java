package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.view.g0;
import androidx.core.view.h0;
import androidx.core.view.i0;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: ViewPropertyAnimatorCompatSet.java */
/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Interpolator f569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    h0 f570d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f571e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f568b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i0 f572f = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayList<g0> f567a = new ArrayList<>();

    /* JADX INFO: compiled from: ViewPropertyAnimatorCompatSet.java */
    class a extends i0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f573a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f574b = 0;

        a() {
        }

        @Override // androidx.core.view.h0
        public void b(View view) {
            int i10 = this.f574b + 1;
            this.f574b = i10;
            if (i10 == h.this.f567a.size()) {
                h0 h0Var = h.this.f570d;
                if (h0Var != null) {
                    h0Var.b(null);
                }
                d();
            }
        }

        @Override // androidx.core.view.i0, androidx.core.view.h0
        public void c(View view) {
            if (this.f573a) {
                return;
            }
            this.f573a = true;
            h0 h0Var = h.this.f570d;
            if (h0Var != null) {
                h0Var.c(null);
            }
        }

        void d() {
            this.f574b = 0;
            this.f573a = false;
            h.this.b();
        }
    }

    public void a() {
        if (this.f571e) {
            Iterator<g0> it = this.f567a.iterator();
            while (it.hasNext()) {
                it.next().c();
            }
            this.f571e = false;
        }
    }

    void b() {
        this.f571e = false;
    }

    public h c(g0 g0Var) {
        if (!this.f571e) {
            this.f567a.add(g0Var);
        }
        return this;
    }

    public h d(g0 g0Var, g0 g0Var2) {
        this.f567a.add(g0Var);
        g0Var2.j(g0Var.d());
        this.f567a.add(g0Var2);
        return this;
    }

    public h e(long j10) {
        if (!this.f571e) {
            this.f568b = j10;
        }
        return this;
    }

    public h f(Interpolator interpolator) {
        if (!this.f571e) {
            this.f569c = interpolator;
        }
        return this;
    }

    public h g(h0 h0Var) {
        if (!this.f571e) {
            this.f570d = h0Var;
        }
        return this;
    }

    public void h() {
        if (this.f571e) {
            return;
        }
        for (g0 g0Var : this.f567a) {
            long j10 = this.f568b;
            if (j10 >= 0) {
                g0Var.f(j10);
            }
            Interpolator interpolator = this.f569c;
            if (interpolator != null) {
                g0Var.g(interpolator);
            }
            if (this.f570d != null) {
                g0Var.h(this.f572f);
            }
            g0Var.l();
        }
        this.f571e = true;
    }
}
