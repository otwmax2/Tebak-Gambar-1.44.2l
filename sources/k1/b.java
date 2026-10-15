package k1;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import i1.j;
import i1.s;
import j1.e;
import j1.i;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import m1.c;
import m1.d;
import q1.p;
import r1.f;

/* JADX INFO: compiled from: GreedyScheduler.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements e, c, j1.b {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f31299w = j.f("GreedyScheduler");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f31300o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final i f31301p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final d f31302q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private a f31304s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f31305t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    Boolean f31307v;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Set<p> f31303r = new HashSet();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Object f31306u = new Object();

    public b(Context context, androidx.work.a aVar, s1.a aVar2, i iVar) {
        this.f31300o = context;
        this.f31301p = iVar;
        this.f31302q = new d(context, aVar2, this);
        this.f31304s = new a(this, aVar.k());
    }

    private void f() {
        this.f31307v = Boolean.valueOf(f.b(this.f31300o, this.f31301p.j()));
    }

    private void g() {
        if (this.f31305t) {
            return;
        }
        this.f31301p.n().d(this);
        this.f31305t = true;
    }

    private void h(String str) {
        synchronized (this.f31306u) {
            Iterator<p> it = this.f31303r.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                p next = it.next();
                if (next.f33778a.equals(str)) {
                    j.c().a(f31299w, String.format("Stopping tracking for %s", str), new Throwable[0]);
                    this.f31303r.remove(next);
                    this.f31302q.d(this.f31303r);
                    break;
                }
            }
        }
    }

    @Override // j1.e
    public boolean a() {
        return false;
    }

    @Override // m1.c
    public void b(List<String> list) {
        for (String str : list) {
            j.c().a(f31299w, String.format("Constraints not met: Cancelling work ID %s", str), new Throwable[0]);
            this.f31301p.y(str);
        }
    }

    @Override // j1.b
    public void c(String str, boolean z10) {
        h(str);
    }

    @Override // j1.e
    public void cancel(String str) {
        if (this.f31307v == null) {
            f();
        }
        if (!this.f31307v.booleanValue()) {
            j.c().d(f31299w, "Ignoring schedule request in non-main process", new Throwable[0]);
            return;
        }
        g();
        j.c().a(f31299w, String.format("Cancelling work ID %s", str), new Throwable[0]);
        a aVar = this.f31304s;
        if (aVar != null) {
            aVar.b(str);
        }
        this.f31301p.y(str);
    }

    @Override // j1.e
    public void d(p... pVarArr) {
        if (this.f31307v == null) {
            f();
        }
        if (!this.f31307v.booleanValue()) {
            j.c().d(f31299w, "Ignoring schedule request in a secondary process", new Throwable[0]);
            return;
        }
        g();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (p pVar : pVarArr) {
            long jA = pVar.a();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (pVar.f33779b == s.a.ENQUEUED) {
                if (jCurrentTimeMillis < jA) {
                    a aVar = this.f31304s;
                    if (aVar != null) {
                        aVar.a(pVar);
                    }
                } else if (pVar.b()) {
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 >= 23 && pVar.f33787j.h()) {
                        j.c().a(f31299w, String.format("Ignoring WorkSpec %s, Requires device idle.", pVar), new Throwable[0]);
                    } else if (i10 < 24 || !pVar.f33787j.e()) {
                        hashSet.add(pVar);
                        hashSet2.add(pVar.f33778a);
                    } else {
                        j.c().a(f31299w, String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", pVar), new Throwable[0]);
                    }
                } else {
                    j.c().a(f31299w, String.format("Starting work for %s", pVar.f33778a), new Throwable[0]);
                    this.f31301p.v(pVar.f33778a);
                }
            }
        }
        synchronized (this.f31306u) {
            if (!hashSet.isEmpty()) {
                j.c().a(f31299w, String.format("Starting tracking for [%s]", TextUtils.join(",", hashSet2)), new Throwable[0]);
                this.f31303r.addAll(hashSet);
                this.f31302q.d(this.f31303r);
            }
        }
    }

    @Override // m1.c
    public void e(List<String> list) {
        for (String str : list) {
            j.c().a(f31299w, String.format("Constraints met: Scheduling work ID %s", str), new Throwable[0]);
            this.f31301p.v(str);
        }
    }
}
