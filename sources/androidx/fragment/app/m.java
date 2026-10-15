package androidx.fragment.app;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.n;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: FragmentLifecycleCallbacksDispatcher.java */
/* JADX INFO: loaded from: classes.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CopyOnWriteArrayList<a> f3267a = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n f3268b;

    /* JADX INFO: compiled from: FragmentLifecycleCallbacksDispatcher.java */
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final n.l f3269a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean f3270b;
    }

    m(n nVar) {
        this.f3268b = nVar;
    }

    void a(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().a(fragment, bundle, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void b(Fragment fragment, boolean z10) {
        this.f3268b.t0().f();
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().b(fragment, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void c(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().c(fragment, bundle, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void d(Fragment fragment, boolean z10) {
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().d(fragment, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void e(Fragment fragment, boolean z10) {
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().e(fragment, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void f(Fragment fragment, boolean z10) {
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().f(fragment, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void g(Fragment fragment, boolean z10) {
        this.f3268b.t0().f();
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().g(fragment, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void h(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().h(fragment, bundle, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void i(Fragment fragment, boolean z10) {
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().i(fragment, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void j(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().j(fragment, bundle, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void k(Fragment fragment, boolean z10) {
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().k(fragment, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void l(Fragment fragment, boolean z10) {
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().l(fragment, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void m(Fragment fragment, View view, Bundle bundle, boolean z10) {
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().m(fragment, view, bundle, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }

    void n(Fragment fragment, boolean z10) {
        Fragment fragmentW0 = this.f3268b.w0();
        if (fragmentW0 != null) {
            fragmentW0.getParentFragmentManager().v0().n(fragment, true);
        }
        for (a aVar : this.f3267a) {
            if (!z10 || aVar.f3270b) {
                n.l lVar = aVar.f3269a;
                throw null;
            }
        }
    }
}
