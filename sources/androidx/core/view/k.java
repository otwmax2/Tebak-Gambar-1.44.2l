package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.lifecycle.j;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: MenuHostHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runnable f2498a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList<m> f2499b = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<m, a> f2500c = new HashMap();

    /* JADX INFO: compiled from: MenuHostHelper.java */
    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final androidx.lifecycle.j f2501a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private androidx.lifecycle.l f2502b;

        a(androidx.lifecycle.j jVar, androidx.lifecycle.l lVar) {
            this.f2501a = jVar;
            this.f2502b = lVar;
            jVar.a(lVar);
        }

        void a() {
            this.f2501a.c(this.f2502b);
            this.f2502b = null;
        }
    }

    public k(Runnable runnable) {
        this.f2498a = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(m mVar, androidx.lifecycle.n nVar, j.b bVar) {
        if (bVar == j.b.ON_DESTROY) {
            l(mVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(j.c cVar, m mVar, androidx.lifecycle.n nVar, j.b bVar) {
        if (bVar == j.b.g(cVar)) {
            c(mVar);
            return;
        }
        if (bVar == j.b.ON_DESTROY) {
            l(mVar);
        } else if (bVar == j.b.c(cVar)) {
            this.f2499b.remove(mVar);
            this.f2498a.run();
        }
    }

    public void c(m mVar) {
        this.f2499b.add(mVar);
        this.f2498a.run();
    }

    public void d(final m mVar, androidx.lifecycle.n nVar) {
        c(mVar);
        androidx.lifecycle.j lifecycle = nVar.getLifecycle();
        a aVarRemove = this.f2500c.remove(mVar);
        if (aVarRemove != null) {
            aVarRemove.a();
        }
        this.f2500c.put(mVar, new a(lifecycle, new androidx.lifecycle.l() { // from class: androidx.core.view.i
            @Override // androidx.lifecycle.l
            public final void c(androidx.lifecycle.n nVar2, j.b bVar) {
                this.f2493a.f(mVar, nVar2, bVar);
            }
        }));
    }

    @SuppressLint({"LambdaLast"})
    public void e(final m mVar, androidx.lifecycle.n nVar, final j.c cVar) {
        androidx.lifecycle.j lifecycle = nVar.getLifecycle();
        a aVarRemove = this.f2500c.remove(mVar);
        if (aVarRemove != null) {
            aVarRemove.a();
        }
        this.f2500c.put(mVar, new a(lifecycle, new androidx.lifecycle.l() { // from class: androidx.core.view.j
            @Override // androidx.lifecycle.l
            public final void c(androidx.lifecycle.n nVar2, j.b bVar) {
                this.f2495a.g(cVar, mVar, nVar2, bVar);
            }
        }));
    }

    public void h(Menu menu, MenuInflater menuInflater) {
        Iterator<m> it = this.f2499b.iterator();
        while (it.hasNext()) {
            it.next().c(menu, menuInflater);
        }
    }

    public void i(Menu menu) {
        Iterator<m> it = this.f2499b.iterator();
        while (it.hasNext()) {
            it.next().b(menu);
        }
    }

    public boolean j(MenuItem menuItem) {
        Iterator<m> it = this.f2499b.iterator();
        while (it.hasNext()) {
            if (it.next().a(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void k(Menu menu) {
        Iterator<m> it = this.f2499b.iterator();
        while (it.hasNext()) {
            it.next().d(menu);
        }
    }

    public void l(m mVar) {
        this.f2499b.remove(mVar);
        a aVarRemove = this.f2500c.remove(mVar);
        if (aVarRemove != null) {
            aVarRemove.a();
        }
        this.f2498a.run();
    }
}
