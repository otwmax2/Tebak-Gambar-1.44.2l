package androidx.lifecycle;

import android.annotation.SuppressLint;
import androidx.lifecycle.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: LifecycleRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public class o extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k.a<m, a> f3549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j.c f3550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WeakReference<n> f3551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3553f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3554g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<j.c> f3555h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f3556i;

    /* JADX INFO: compiled from: LifecycleRegistry.java */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        j.c f3557a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        l f3558b;

        a(m mVar, j.c cVar) {
            this.f3558b = r.f(mVar);
            this.f3557a = cVar;
        }

        void a(n nVar, j.b bVar) {
            j.c cVarE = bVar.e();
            this.f3557a = o.k(this.f3557a, cVarE);
            this.f3558b.c(nVar, bVar);
            this.f3557a = cVarE;
        }
    }

    public o(n nVar) {
        this(nVar, true);
    }

    private void d(n nVar) {
        Iterator<Map.Entry<m, a>> itDescendingIterator = this.f3549b.descendingIterator();
        while (itDescendingIterator.hasNext() && !this.f3554g) {
            Map.Entry<m, a> next = itDescendingIterator.next();
            a value = next.getValue();
            while (value.f3557a.compareTo(this.f3550c) > 0 && !this.f3554g && this.f3549b.contains(next.getKey())) {
                j.b bVarC = j.b.c(value.f3557a);
                if (bVarC == null) {
                    throw new IllegalStateException("no event down from " + value.f3557a);
                }
                n(bVarC.e());
                value.a(nVar, bVarC);
                m();
            }
        }
    }

    private j.c e(m mVar) {
        Map.Entry<m, a> entryN = this.f3549b.n(mVar);
        j.c cVar = null;
        j.c cVar2 = entryN != null ? entryN.getValue().f3557a : null;
        if (!this.f3555h.isEmpty()) {
            cVar = this.f3555h.get(r0.size() - 1);
        }
        return k(k(this.f3550c, cVar2), cVar);
    }

    @SuppressLint({"RestrictedApi"})
    private void f(String str) {
        if (!this.f3556i || j.a.e().b()) {
            return;
        }
        throw new IllegalStateException("Method " + str + " must be called on the main thread");
    }

    private void g(n nVar) {
        k.b<m, a>.d dVarI = this.f3549b.i();
        while (dVarI.hasNext() && !this.f3554g) {
            Map.Entry next = dVarI.next();
            a aVar = (a) next.getValue();
            while (aVar.f3557a.compareTo(this.f3550c) < 0 && !this.f3554g && this.f3549b.contains((m) next.getKey())) {
                n(aVar.f3557a);
                j.b bVarF = j.b.f(aVar.f3557a);
                if (bVarF == null) {
                    throw new IllegalStateException("no event up from " + aVar.f3557a);
                }
                aVar.a(nVar, bVarF);
                m();
            }
        }
    }

    private boolean i() {
        if (this.f3549b.size() == 0) {
            return true;
        }
        j.c cVar = this.f3549b.c().getValue().f3557a;
        j.c cVar2 = this.f3549b.j().getValue().f3557a;
        return cVar == cVar2 && this.f3550c == cVar2;
    }

    static j.c k(j.c cVar, j.c cVar2) {
        return (cVar2 == null || cVar2.compareTo(cVar) >= 0) ? cVar : cVar2;
    }

    private void l(j.c cVar) {
        j.c cVar2 = this.f3550c;
        if (cVar2 == cVar) {
            return;
        }
        if (cVar2 == j.c.INITIALIZED && cVar == j.c.DESTROYED) {
            throw new IllegalStateException("no event down from " + this.f3550c);
        }
        this.f3550c = cVar;
        if (this.f3553f || this.f3552e != 0) {
            this.f3554g = true;
            return;
        }
        this.f3553f = true;
        p();
        this.f3553f = false;
        if (this.f3550c == j.c.DESTROYED) {
            this.f3549b = new k.a<>();
        }
    }

    private void m() {
        this.f3555h.remove(r0.size() - 1);
    }

    private void n(j.c cVar) {
        this.f3555h.add(cVar);
    }

    private void p() {
        n nVar = this.f3551d.get();
        if (nVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (!i()) {
            this.f3554g = false;
            if (this.f3550c.compareTo(this.f3549b.c().getValue().f3557a) < 0) {
                d(nVar);
            }
            Map.Entry<m, a> entryJ = this.f3549b.j();
            if (!this.f3554g && entryJ != null && this.f3550c.compareTo(entryJ.getValue().f3557a) > 0) {
                g(nVar);
            }
        }
        this.f3554g = false;
    }

    @Override // androidx.lifecycle.j
    public void a(m mVar) {
        n nVar;
        f("addObserver");
        j.c cVar = this.f3550c;
        j.c cVar2 = j.c.DESTROYED;
        if (cVar != cVar2) {
            cVar2 = j.c.INITIALIZED;
        }
        a aVar = new a(mVar, cVar2);
        if (this.f3549b.l(mVar, aVar) == null && (nVar = this.f3551d.get()) != null) {
            boolean z10 = this.f3552e != 0 || this.f3553f;
            j.c cVarE = e(mVar);
            this.f3552e++;
            while (aVar.f3557a.compareTo(cVarE) < 0 && this.f3549b.contains(mVar)) {
                n(aVar.f3557a);
                j.b bVarF = j.b.f(aVar.f3557a);
                if (bVarF == null) {
                    throw new IllegalStateException("no event up from " + aVar.f3557a);
                }
                aVar.a(nVar, bVarF);
                m();
                cVarE = e(mVar);
            }
            if (!z10) {
                p();
            }
            this.f3552e--;
        }
    }

    @Override // androidx.lifecycle.j
    public j.c b() {
        return this.f3550c;
    }

    @Override // androidx.lifecycle.j
    public void c(m mVar) {
        f("removeObserver");
        this.f3549b.m(mVar);
    }

    public void h(j.b bVar) {
        f("handleLifecycleEvent");
        l(bVar.e());
    }

    @Deprecated
    public void j(j.c cVar) {
        f("markState");
        o(cVar);
    }

    public void o(j.c cVar) {
        f("setCurrentState");
        l(cVar);
    }

    private o(n nVar, boolean z10) {
        this.f3549b = new k.a<>();
        this.f3552e = 0;
        this.f3553f = false;
        this.f3554g = false;
        this.f3555h = new ArrayList<>();
        this.f3551d = new WeakReference<>(nVar);
        this.f3550c = j.c.INITIALIZED;
        this.f3556i = z10;
    }
}
