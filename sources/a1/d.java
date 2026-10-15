package a1;

import android.os.Bundle;
import androidx.lifecycle.j;
import androidx.savedstate.Recreator;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: SavedStateRegistryController.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f26d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f27a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f28b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f29c;

    /* JADX INFO: compiled from: SavedStateRegistryController.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final d a(e eVar) {
            m.e(eVar, "owner");
            return new d(eVar, null);
        }
    }

    private d(e eVar) {
        this.f27a = eVar;
        this.f28b = new c();
    }

    public /* synthetic */ d(e eVar, g gVar) {
        this(eVar);
    }

    public static final d a(e eVar) {
        return f26d.a(eVar);
    }

    public final c b() {
        return this.f28b;
    }

    public final void c() {
        j lifecycle = this.f27a.getLifecycle();
        m.d(lifecycle, "owner.lifecycle");
        if (!(lifecycle.b() == j.c.INITIALIZED)) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage".toString());
        }
        lifecycle.a(new Recreator(this.f27a));
        this.f28b.e(lifecycle);
        this.f29c = true;
    }

    public final void d(Bundle bundle) {
        if (!this.f29c) {
            c();
        }
        j lifecycle = this.f27a.getLifecycle();
        m.d(lifecycle, "owner.lifecycle");
        if (!lifecycle.b().c(j.c.STARTED)) {
            this.f28b.f(bundle);
            return;
        }
        throw new IllegalStateException(("performRestore cannot be called when owner is " + lifecycle.b()).toString());
    }

    public final void e(Bundle bundle) {
        m.e(bundle, "outBundle");
        this.f28b.g(bundle);
    }
}
