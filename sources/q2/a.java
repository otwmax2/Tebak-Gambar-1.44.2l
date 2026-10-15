package q2;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ActivityFragmentLifecycle.java */
/* JADX INFO: loaded from: classes.dex */
class a implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<h> f33832a = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f33833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33834c;

    a() {
    }

    @Override // q2.g
    public void a(h hVar) {
        this.f33832a.add(hVar);
        if (this.f33834c) {
            hVar.onDestroy();
        } else if (this.f33833b) {
            hVar.b();
        } else {
            hVar.h();
        }
    }

    void b() {
        this.f33834c = true;
        Iterator it = x2.h.h(this.f33832a).iterator();
        while (it.hasNext()) {
            ((h) it.next()).onDestroy();
        }
    }

    void c() {
        this.f33833b = true;
        Iterator it = x2.h.h(this.f33832a).iterator();
        while (it.hasNext()) {
            ((h) it.next()).b();
        }
    }

    void d() {
        this.f33833b = false;
        Iterator it = x2.h.h(this.f33832a).iterator();
        while (it.hasNext()) {
            ((h) it.next()).h();
        }
    }
}
