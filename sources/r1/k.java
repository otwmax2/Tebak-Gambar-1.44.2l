package r1;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.ListenableWorker;
import q1.p;

/* JADX INFO: compiled from: WorkForegroundRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public class k implements Runnable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static final String f34184u = i1.j.f("WorkForegroundRunnable");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final androidx.work.impl.utils.futures.c<Void> f34185o = androidx.work.impl.utils.futures.c.u();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final Context f34186p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final p f34187q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final ListenableWorker f34188r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final i1.f f34189s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final s1.a f34190t;

    /* JADX INFO: compiled from: WorkForegroundRunnable.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ androidx.work.impl.utils.futures.c f34191o;

        a(androidx.work.impl.utils.futures.c cVar) {
            this.f34191o = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f34191o.s(k.this.f34188r.getForegroundInfoAsync());
        }
    }

    /* JADX INFO: compiled from: WorkForegroundRunnable.java */
    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ androidx.work.impl.utils.futures.c f34193o;

        b(androidx.work.impl.utils.futures.c cVar) {
            this.f34193o = cVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            try {
                i1.e eVar = (i1.e) this.f34193o.get();
                if (eVar == null) {
                    throw new IllegalStateException(String.format("Worker was marked important (%s) but did not provide ForegroundInfo", k.this.f34187q.f33780c));
                }
                i1.j.c().a(k.f34184u, String.format("Updating notification for %s", k.this.f34187q.f33780c), new Throwable[0]);
                k.this.f34188r.setRunInForeground(true);
                k kVar = k.this;
                kVar.f34185o.s(kVar.f34189s.a(kVar.f34186p, kVar.f34188r.getId(), eVar));
            } catch (Throwable th) {
                k.this.f34185o.r(th);
            }
        }
    }

    @SuppressLint({"LambdaLast"})
    public k(Context context, p pVar, ListenableWorker listenableWorker, i1.f fVar, s1.a aVar) {
        this.f34186p = context;
        this.f34187q = pVar;
        this.f34188r = listenableWorker;
        this.f34189s = fVar;
        this.f34190t = aVar;
    }

    public a5.a<Void> a() {
        return this.f34185o;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"UnsafeExperimentalUsageError"})
    public void run() {
        if (!this.f34187q.f33794q || androidx.core.os.a.c()) {
            this.f34185o.q(null);
            return;
        }
        androidx.work.impl.utils.futures.c cVarU = androidx.work.impl.utils.futures.c.u();
        this.f34190t.a().execute(new a(cVarU));
        cVarU.e(new b(cVarU), this.f34190t.a());
    }
}
