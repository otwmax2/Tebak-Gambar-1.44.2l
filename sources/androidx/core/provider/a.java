package androidx.core.provider;

import android.graphics.Typeface;
import android.os.Handler;
import androidx.core.provider.f;
import androidx.core.provider.g;

/* JADX INFO: compiled from: CallbackWithHandler.java */
/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g.c f2288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f2289b;

    /* JADX INFO: renamed from: androidx.core.provider.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CallbackWithHandler.java */
    class RunnableC0032a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ g.c f2290o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Typeface f2291p;

        RunnableC0032a(g.c cVar, Typeface typeface) {
            this.f2290o = cVar;
            this.f2291p = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2290o.b(this.f2291p);
        }
    }

    /* JADX INFO: compiled from: CallbackWithHandler.java */
    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ g.c f2293o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ int f2294p;

        b(g.c cVar, int i10) {
            this.f2293o = cVar;
            this.f2294p = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2293o.a(this.f2294p);
        }
    }

    a(g.c cVar, Handler handler) {
        this.f2288a = cVar;
        this.f2289b = handler;
    }

    private void a(int i10) {
        this.f2289b.post(new b(this.f2288a, i10));
    }

    private void c(Typeface typeface) {
        this.f2289b.post(new RunnableC0032a(this.f2288a, typeface));
    }

    void b(f.e eVar) {
        if (eVar.a()) {
            c(eVar.f2318a);
        } else {
            a(eVar.f2319b);
        }
    }
}
