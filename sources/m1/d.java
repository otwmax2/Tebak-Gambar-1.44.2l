package m1;

import android.content.Context;
import i1.j;
import java.util.ArrayList;
import java.util.List;
import n1.c;
import n1.e;
import n1.f;
import n1.g;
import n1.h;
import q1.p;

/* JADX INFO: compiled from: WorkConstraintsTracker.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements c.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f32117d = j.f("WorkConstraintsTracker");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f32118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n1.c<?>[] f32119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f32120c;

    public d(Context context, s1.a aVar, c cVar) {
        Context applicationContext = context.getApplicationContext();
        this.f32118a = cVar;
        this.f32119b = new n1.c[]{new n1.a(applicationContext, aVar), new n1.b(applicationContext, aVar), new h(applicationContext, aVar), new n1.d(applicationContext, aVar), new g(applicationContext, aVar), new f(applicationContext, aVar), new e(applicationContext, aVar)};
        this.f32120c = new Object();
    }

    @Override // n1.c.a
    public void a(List<String> list) {
        synchronized (this.f32120c) {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                if (c(str)) {
                    j.c().a(f32117d, String.format("Constraints met for %s", str), new Throwable[0]);
                    arrayList.add(str);
                }
            }
            c cVar = this.f32118a;
            if (cVar != null) {
                cVar.e(arrayList);
            }
        }
    }

    @Override // n1.c.a
    public void b(List<String> list) {
        synchronized (this.f32120c) {
            c cVar = this.f32118a;
            if (cVar != null) {
                cVar.b(list);
            }
        }
    }

    public boolean c(String str) {
        synchronized (this.f32120c) {
            for (n1.c<?> cVar : this.f32119b) {
                if (cVar.d(str)) {
                    j.c().a(f32117d, String.format("Work %s constrained by %s", str, cVar.getClass().getSimpleName()), new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }

    public void d(Iterable<p> iterable) {
        synchronized (this.f32120c) {
            for (n1.c<?> cVar : this.f32119b) {
                cVar.g(null);
            }
            for (n1.c<?> cVar2 : this.f32119b) {
                cVar2.e(iterable);
            }
            for (n1.c<?> cVar3 : this.f32119b) {
                cVar3.g(this);
            }
        }
    }

    public void e() {
        synchronized (this.f32120c) {
            for (n1.c<?> cVar : this.f32119b) {
                cVar.f();
            }
        }
    }
}
