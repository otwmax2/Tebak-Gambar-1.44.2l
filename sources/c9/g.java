package c9;

import android.app.Activity;
import c9.a;
import com.twitter.sdk.android.core.m;
import com.twitter.sdk.android.core.n;
import java.util.Calendar;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: SessionMonitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class g<T extends m> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final b f4983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f4984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n<T> f4985c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExecutorService f4986d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h f4987e;

    /* JADX INFO: compiled from: SessionMonitor.java */
    class a extends a.b {
        a() {
        }

        @Override // c9.a.b
        public void f(Activity activity) {
            g.this.b();
        }
    }

    /* JADX INFO: compiled from: SessionMonitor.java */
    protected static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f4989a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f4990b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Calendar f4991c = Calendar.getInstance(TimeZone.getTimeZone("UTC"));

        private boolean c(long j10, long j11) {
            this.f4991c.setTimeInMillis(j10);
            int i10 = this.f4991c.get(6);
            int i11 = this.f4991c.get(1);
            this.f4991c.setTimeInMillis(j11);
            return i10 == this.f4991c.get(6) && i11 == this.f4991c.get(1);
        }

        public synchronized boolean a(long j10) {
            long j11 = this.f4990b;
            boolean z10 = j10 - j11 > 21600000;
            boolean z11 = !c(j10, j11);
            if (this.f4989a || !(z10 || z11)) {
                return false;
            }
            this.f4989a = true;
            return true;
        }

        public synchronized void b(long j10) {
            this.f4989a = false;
            this.f4990b = j10;
        }
    }

    public g(n<T> nVar, ExecutorService executorService, h<T> hVar) {
        this(nVar, new i(), executorService, new b(), hVar);
    }

    public void a(c9.a aVar) {
        aVar.a(new a());
    }

    public void b() {
        if (this.f4985c.c() != null && this.f4983a.a(this.f4984b.a())) {
            this.f4986d.submit(new Runnable() { // from class: c9.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f4982o.c();
                }
            });
        }
    }

    protected void c() {
        Iterator<T> it = this.f4985c.a().values().iterator();
        while (it.hasNext()) {
            this.f4987e.a(it.next());
        }
        this.f4983a.b(this.f4984b.a());
    }

    g(n<T> nVar, i iVar, ExecutorService executorService, b bVar, h hVar) {
        this.f4984b = iVar;
        this.f4985c = nVar;
        this.f4986d = executorService;
        this.f4983a = bVar;
        this.f4987e = hVar;
    }
}
