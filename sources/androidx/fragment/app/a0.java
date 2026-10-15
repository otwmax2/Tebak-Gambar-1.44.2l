package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.lifecycle.h0;
import androidx.lifecycle.j;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;

/* JADX INFO: compiled from: FragmentViewLifecycleOwner.java */
/* JADX INFO: loaded from: classes.dex */
class a0 implements androidx.lifecycle.i, a1.e, m0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Fragment f3136o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final l0 f3137p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private h0.b f3138q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private androidx.lifecycle.o f3139r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private a1.d f3140s = null;

    a0(Fragment fragment, l0 l0Var) {
        this.f3136o = fragment;
        this.f3137p = l0Var;
    }

    void a(j.b bVar) {
        this.f3139r.h(bVar);
    }

    void b() {
        if (this.f3139r == null) {
            this.f3139r = new androidx.lifecycle.o(this);
            this.f3140s = a1.d.a(this);
        }
    }

    boolean c() {
        return this.f3139r != null;
    }

    void d(Bundle bundle) {
        this.f3140s.d(bundle);
    }

    void e(Bundle bundle) {
        this.f3140s.e(bundle);
    }

    void f(j.c cVar) {
        this.f3139r.o(cVar);
    }

    @Override // androidx.lifecycle.i
    public /* synthetic */ s0.a getDefaultViewModelCreationExtras() {
        return androidx.lifecycle.h.a(this);
    }

    @Override // androidx.lifecycle.i
    public h0.b getDefaultViewModelProviderFactory() {
        h0.b defaultViewModelProviderFactory = this.f3136o.getDefaultViewModelProviderFactory();
        if (!defaultViewModelProviderFactory.equals(this.f3136o.mDefaultFactory)) {
            this.f3138q = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        if (this.f3138q == null) {
            Application application = null;
            Context applicationContext = this.f3136o.requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            this.f3138q = new androidx.lifecycle.d0(application, this, this.f3136o.getArguments());
        }
        return this.f3138q;
    }

    @Override // androidx.lifecycle.n
    public androidx.lifecycle.j getLifecycle() {
        b();
        return this.f3139r;
    }

    @Override // a1.e
    public a1.c getSavedStateRegistry() {
        b();
        return this.f3140s.b();
    }

    @Override // androidx.lifecycle.m0
    public l0 getViewModelStore() {
        b();
        return this.f3137p;
    }
}
