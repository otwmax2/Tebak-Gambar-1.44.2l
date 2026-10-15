package k1;

import i1.j;
import i1.q;
import java.util.HashMap;
import java.util.Map;
import q1.p;

/* JADX INFO: compiled from: DelayedWorkTracker.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f31293d = j.f("DelayedWorkTracker");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f31294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final q f31295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, Runnable> f31296c = new HashMap();

    /* JADX INFO: renamed from: k1.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DelayedWorkTracker.java */
    class RunnableC0185a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ p f31297o;

        RunnableC0185a(p pVar) {
            this.f31297o = pVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.c().a(a.f31293d, String.format("Scheduling work %s", this.f31297o.f33778a), new Throwable[0]);
            a.this.f31294a.d(this.f31297o);
        }
    }

    public a(b bVar, q qVar) {
        this.f31294a = bVar;
        this.f31295b = qVar;
    }

    public void a(p pVar) {
        Runnable runnableRemove = this.f31296c.remove(pVar.f33778a);
        if (runnableRemove != null) {
            this.f31295b.b(runnableRemove);
        }
        RunnableC0185a runnableC0185a = new RunnableC0185a(pVar);
        this.f31296c.put(pVar.f33778a, runnableC0185a);
        this.f31295b.a(pVar.a() - System.currentTimeMillis(), runnableC0185a);
    }

    public void b(String str) {
        Runnable runnableRemove = this.f31296c.remove(str);
        if (runnableRemove != null) {
            this.f31295b.b(runnableRemove);
        }
    }
}
