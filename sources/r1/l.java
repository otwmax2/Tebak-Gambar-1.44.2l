package r1;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import i1.s;
import java.util.UUID;
import q1.q;

/* JADX INFO: compiled from: WorkForegroundUpdater.java */
/* JADX INFO: loaded from: classes.dex */
public class l implements i1.f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f34195d = i1.j.f("WMFgUpdater");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s1.a f34196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final p1.a f34197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final q f34198c;

    /* JADX INFO: compiled from: WorkForegroundUpdater.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ androidx.work.impl.utils.futures.c f34199o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ UUID f34200p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ i1.e f34201q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ Context f34202r;

        a(androidx.work.impl.utils.futures.c cVar, UUID uuid, i1.e eVar, Context context) {
            this.f34199o = cVar;
            this.f34200p = uuid;
            this.f34201q = eVar;
            this.f34202r = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!this.f34199o.isCancelled()) {
                    String string = this.f34200p.toString();
                    s.a aVarM = l.this.f34198c.m(string);
                    if (aVarM == null || aVarM.c()) {
                        throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                    }
                    l.this.f34197b.b(string, this.f34201q);
                    this.f34202r.startService(androidx.work.impl.foreground.a.a(this.f34202r, string, this.f34201q));
                }
                this.f34199o.q(null);
            } catch (Throwable th) {
                this.f34199o.r(th);
            }
        }
    }

    public l(WorkDatabase workDatabase, p1.a aVar, s1.a aVar2) {
        this.f34197b = aVar;
        this.f34196a = aVar2;
        this.f34198c = workDatabase.L();
    }

    @Override // i1.f
    public a5.a<Void> a(Context context, UUID uuid, i1.e eVar) {
        androidx.work.impl.utils.futures.c cVarU = androidx.work.impl.utils.futures.c.u();
        this.f34196a.b(new a(cVarU, uuid, eVar, context));
        return cVarU;
    }
}
