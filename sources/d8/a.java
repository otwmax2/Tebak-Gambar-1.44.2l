package d8;

import a8.f;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import d8.b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import z7.a;

/* JADX INFO: loaded from: classes2.dex */
public class a implements a.InterfaceC0310a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static a f28740g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Handler f28741h = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static Handler f28742i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Runnable f28743j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Runnable f28744k = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28746b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f28750f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<e> f28745a = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d8.b f28748d = new d8.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private z7.b f28747c = new z7.b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d8.c f28749e = new d8.c(new e8.c());

    /* JADX INFO: renamed from: d8.a$a, reason: collision with other inner class name */
    class RunnableC0146a implements Runnable {
        RunnableC0146a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f28749e.c();
        }
    }

    static class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.p().q();
        }
    }

    static class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.f28742i != null) {
                a.f28742i.post(a.f28743j);
                a.f28742i.postDelayed(a.f28744k, 200L);
            }
        }
    }

    public interface d extends e {
        void b(int i10, long j10);
    }

    public interface e {
        void a(int i10, long j10);
    }

    a() {
    }

    private void d(long j10) {
        if (this.f28745a.size() > 0) {
            for (e eVar : this.f28745a) {
                eVar.a(this.f28746b, TimeUnit.NANOSECONDS.toMillis(j10));
                if (eVar instanceof d) {
                    ((d) eVar).b(this.f28746b, j10);
                }
            }
        }
    }

    private void e(View view, z7.a aVar, JSONObject jSONObject, d8.d dVar) {
        aVar.b(view, jSONObject, this, dVar == d8.d.PARENT_VIEW);
    }

    private void f(String str, View view, JSONObject jSONObject) {
        z7.a aVarB = this.f28747c.b();
        String strB = this.f28748d.b(str);
        if (strB != null) {
            JSONObject jSONObjectA = aVarB.a(view);
            a8.b.f(jSONObjectA, str);
            a8.b.k(jSONObjectA, strB);
            a8.b.h(jSONObject, jSONObjectA);
        }
    }

    private boolean g(View view, JSONObject jSONObject) {
        String strA = this.f28748d.a(view);
        if (strA == null) {
            return false;
        }
        a8.b.f(jSONObject, strA);
        this.f28748d.m();
        return true;
    }

    private void i(View view, JSONObject jSONObject) {
        b.a aVarG = this.f28748d.g(view);
        if (aVarG != null) {
            a8.b.e(jSONObject, aVarG);
        }
    }

    public static a p() {
        return f28740g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        r();
        l();
        s();
    }

    private void r() {
        this.f28746b = 0;
        this.f28750f = a8.d.a();
    }

    private void s() {
        d(a8.d.a() - this.f28750f);
    }

    private void t() {
        if (f28742i == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f28742i = handler;
            handler.post(f28743j);
            f28742i.postDelayed(f28744k, 200L);
        }
    }

    private void u() {
        Handler handler = f28742i;
        if (handler != null) {
            handler.removeCallbacks(f28744k);
            f28742i = null;
        }
    }

    @Override // z7.a.InterfaceC0310a
    public void a(View view, z7.a aVar, JSONObject jSONObject) {
        d8.d dVarI;
        if (f.d(view) && (dVarI = this.f28748d.i(view)) != d8.d.UNDERLYING_VIEW) {
            JSONObject jSONObjectA = aVar.a(view);
            a8.b.h(jSONObject, jSONObjectA);
            if (!g(view, jSONObjectA)) {
                i(view, jSONObjectA);
                e(view, aVar, jSONObjectA, dVarI);
            }
            this.f28746b++;
        }
    }

    public void c() {
        t();
    }

    public void h() {
        k();
        this.f28745a.clear();
        f28741h.post(new RunnableC0146a());
    }

    public void k() {
        u();
    }

    void l() {
        this.f28748d.j();
        long jA = a8.d.a();
        z7.a aVarA = this.f28747c.a();
        if (this.f28748d.h().size() > 0) {
            for (String str : this.f28748d.h()) {
                JSONObject jSONObjectA = aVarA.a(null);
                f(str, this.f28748d.f(str), jSONObjectA);
                a8.b.d(jSONObjectA);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(str);
                this.f28749e.e(jSONObjectA, hashSet, jA);
            }
        }
        if (this.f28748d.c().size() > 0) {
            JSONObject jSONObjectA2 = aVarA.a(null);
            e(null, aVarA, jSONObjectA2, d8.d.PARENT_VIEW);
            a8.b.d(jSONObjectA2);
            this.f28749e.d(jSONObjectA2, this.f28748d.c(), jA);
        } else {
            this.f28749e.c();
        }
        this.f28748d.l();
    }
}
