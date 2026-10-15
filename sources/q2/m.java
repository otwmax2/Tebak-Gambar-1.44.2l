package q2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: RequestTracker.java */
/* JADX INFO: loaded from: classes.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<t2.c> f33852a = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<t2.c> f33853b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f33854c;

    public void a() {
        Iterator it = x2.h.h(this.f33852a).iterator();
        while (it.hasNext()) {
            ((t2.c) it.next()).clear();
        }
        this.f33853b.clear();
    }

    public void b() {
        this.f33854c = true;
        for (t2.c cVar : x2.h.h(this.f33852a)) {
            if (cVar.isRunning()) {
                cVar.e();
                this.f33853b.add(cVar);
            }
        }
    }

    public void c(t2.c cVar) {
        this.f33852a.remove(cVar);
        this.f33853b.remove(cVar);
    }

    public void d() {
        for (t2.c cVar : x2.h.h(this.f33852a)) {
            if (!cVar.i() && !cVar.isCancelled()) {
                cVar.e();
                if (this.f33854c) {
                    this.f33853b.add(cVar);
                } else {
                    cVar.h();
                }
            }
        }
    }

    public void e() {
        this.f33854c = false;
        for (t2.c cVar : x2.h.h(this.f33852a)) {
            if (!cVar.i() && !cVar.isCancelled() && !cVar.isRunning()) {
                cVar.h();
            }
        }
        this.f33853b.clear();
    }

    public void f(t2.c cVar) {
        this.f33852a.add(cVar);
        if (this.f33854c) {
            this.f33853b.add(cVar);
        } else {
            cVar.h();
        }
    }
}
