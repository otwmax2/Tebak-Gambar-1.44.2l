package androidx.activity;

import android.annotation.SuppressLint;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.j;
import androidx.lifecycle.l;
import androidx.lifecycle.n;
import java.util.ArrayDeque;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class OnBackPressedDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runnable f202a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.core.util.a<Boolean> f204c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private OnBackInvokedCallback f205d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private OnBackInvokedDispatcher f206e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayDeque<g> f203b = new ArrayDeque<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f207f = false;

    private class LifecycleOnBackPressedCancellable implements l, androidx.activity.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.lifecycle.j f208a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final g f209b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private androidx.activity.a f210c;

        LifecycleOnBackPressedCancellable(androidx.lifecycle.j jVar, g gVar) {
            this.f208a = jVar;
            this.f209b = gVar;
            jVar.a(this);
        }

        @Override // androidx.lifecycle.l
        public void c(n nVar, j.b bVar) {
            if (bVar == j.b.ON_START) {
                this.f210c = OnBackPressedDispatcher.this.d(this.f209b);
                return;
            }
            if (bVar != j.b.ON_STOP) {
                if (bVar == j.b.ON_DESTROY) {
                    cancel();
                }
            } else {
                androidx.activity.a aVar = this.f210c;
                if (aVar != null) {
                    aVar.cancel();
                }
            }
        }

        @Override // androidx.activity.a
        public void cancel() {
            this.f208a.c(this);
            this.f209b.e(this);
            androidx.activity.a aVar = this.f210c;
            if (aVar != null) {
                aVar.cancel();
                this.f210c = null;
            }
        }
    }

    class a implements OnBackInvokedCallback {
        a() {
        }

        @Override // android.window.OnBackInvokedCallback
        public void onBackInvoked() {
            OnBackPressedDispatcher.this.g();
        }
    }

    static class b {
        static void a(OnBackInvokedDispatcher onBackInvokedDispatcher, int i10, OnBackInvokedCallback onBackInvokedCallback) {
            onBackInvokedDispatcher.registerOnBackInvokedCallback(i10, onBackInvokedCallback);
        }

        static void b(OnBackInvokedDispatcher onBackInvokedDispatcher, OnBackInvokedCallback onBackInvokedCallback) {
            onBackInvokedDispatcher.unregisterOnBackInvokedCallback(onBackInvokedCallback);
        }
    }

    private class c implements androidx.activity.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final g f213a;

        c(g gVar) {
            this.f213a = gVar;
        }

        @Override // androidx.activity.a
        public void cancel() {
            OnBackPressedDispatcher.this.f203b.remove(this.f213a);
            this.f213a.e(this);
            if (androidx.core.os.a.d()) {
                this.f213a.g(null);
                OnBackPressedDispatcher.this.i();
            }
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f202a = runnable;
        if (androidx.core.os.a.d()) {
            this.f204c = new androidx.core.util.a() { // from class: androidx.activity.h
                @Override // androidx.core.util.a
                public final void accept(Object obj) {
                    this.f224a.f((Boolean) obj);
                }
            };
            this.f205d = new a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(Boolean bool) {
        if (androidx.core.os.a.d()) {
            i();
        }
    }

    public void b(g gVar) {
        d(gVar);
    }

    @SuppressLint({"LambdaLast"})
    public void c(n nVar, g gVar) {
        androidx.lifecycle.j lifecycle = nVar.getLifecycle();
        if (lifecycle.b() == j.c.DESTROYED) {
            return;
        }
        gVar.a(new LifecycleOnBackPressedCancellable(lifecycle, gVar));
        if (androidx.core.os.a.d()) {
            i();
            gVar.g(this.f204c);
        }
    }

    androidx.activity.a d(g gVar) {
        this.f203b.add(gVar);
        c cVar = new c(gVar);
        gVar.a(cVar);
        if (androidx.core.os.a.d()) {
            i();
            gVar.g(this.f204c);
        }
        return cVar;
    }

    public boolean e() {
        Iterator<g> itDescendingIterator = this.f203b.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            if (itDescendingIterator.next().c()) {
                return true;
            }
        }
        return false;
    }

    public void g() {
        Iterator<g> itDescendingIterator = this.f203b.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            g next = itDescendingIterator.next();
            if (next.c()) {
                next.b();
                return;
            }
        }
        Runnable runnable = this.f202a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void h(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        this.f206e = onBackInvokedDispatcher;
        i();
    }

    void i() {
        boolean zE = e();
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f206e;
        if (onBackInvokedDispatcher != null) {
            if (zE && !this.f207f) {
                b.a(onBackInvokedDispatcher, 1000000, this.f205d);
                this.f207f = true;
            } else {
                if (zE || !this.f207f) {
                    return;
                }
                b.b(onBackInvokedDispatcher, this.f205d);
                this.f207f = false;
            }
        }
    }
}
