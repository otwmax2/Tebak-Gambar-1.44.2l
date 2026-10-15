package o1;

import android.content.Context;
import i1.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: ConstraintTracker.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f32887f = j.f("ConstraintTracker");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final s1.a f32888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Context f32889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f32890c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<m1.a<T>> f32891d = new LinkedHashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    T f32892e;

    /* JADX INFO: compiled from: ConstraintTracker.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ List f32893o;

        a(List list) {
            this.f32893o = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f32893o.iterator();
            while (it.hasNext()) {
                ((m1.a) it.next()).a(d.this.f32892e);
            }
        }
    }

    d(Context context, s1.a aVar) {
        this.f32889b = context.getApplicationContext();
        this.f32888a = aVar;
    }

    public void a(m1.a<T> aVar) {
        synchronized (this.f32890c) {
            if (this.f32891d.add(aVar)) {
                if (this.f32891d.size() == 1) {
                    this.f32892e = b();
                    j.c().a(f32887f, String.format("%s: initial state = %s", getClass().getSimpleName(), this.f32892e), new Throwable[0]);
                    e();
                }
                aVar.a(this.f32892e);
            }
        }
    }

    public abstract T b();

    public void c(m1.a<T> aVar) {
        synchronized (this.f32890c) {
            if (this.f32891d.remove(aVar) && this.f32891d.isEmpty()) {
                f();
            }
        }
    }

    public void d(T t10) {
        synchronized (this.f32890c) {
            T t11 = this.f32892e;
            if (t11 != t10 && (t11 == null || !t11.equals(t10))) {
                this.f32892e = t10;
                this.f32888a.a().execute(new a(new ArrayList(this.f32891d)));
            }
        }
    }

    public abstract void e();

    public abstract void f();
}
