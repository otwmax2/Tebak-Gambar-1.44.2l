package n1;

import java.util.ArrayList;
import java.util.List;
import q1.p;

/* JADX INFO: compiled from: ConstraintController.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c<T> implements m1.a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<String> f32367a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private T f32368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o1.d<T> f32369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f32370d;

    /* JADX INFO: compiled from: ConstraintController.java */
    public interface a {
        void a(List<String> list);

        void b(List<String> list);
    }

    c(o1.d<T> dVar) {
        this.f32369c = dVar;
    }

    private void h(a aVar, T t10) {
        if (this.f32367a.isEmpty() || aVar == null) {
            return;
        }
        if (t10 == null || c(t10)) {
            aVar.b(this.f32367a);
        } else {
            aVar.a(this.f32367a);
        }
    }

    @Override // m1.a
    public void a(T t10) {
        this.f32368b = t10;
        h(this.f32370d, t10);
    }

    abstract boolean b(p pVar);

    abstract boolean c(T t10);

    public boolean d(String str) {
        T t10 = this.f32368b;
        return t10 != null && c(t10) && this.f32367a.contains(str);
    }

    public void e(Iterable<p> iterable) {
        this.f32367a.clear();
        for (p pVar : iterable) {
            if (b(pVar)) {
                this.f32367a.add(pVar.f33778a);
            }
        }
        if (this.f32367a.isEmpty()) {
            this.f32369c.c(this);
        } else {
            this.f32369c.a(this);
        }
        h(this.f32370d, this.f32368b);
    }

    public void f() {
        if (this.f32367a.isEmpty()) {
            return;
        }
        this.f32367a.clear();
        this.f32369c.c(this);
    }

    public void g(a aVar) {
        if (this.f32370d != aVar) {
            this.f32370d = aVar;
            h(aVar, this.f32368b);
        }
    }
}
