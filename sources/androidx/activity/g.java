package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: OnBackPressedCallback.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CopyOnWriteArrayList<a> f222b = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.core.util.a<Boolean> f223c;

    public g(boolean z10) {
        this.f221a = z10;
    }

    void a(a aVar) {
        this.f222b.add(aVar);
    }

    public abstract void b();

    public final boolean c() {
        return this.f221a;
    }

    public final void d() {
        Iterator<a> it = this.f222b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    void e(a aVar) {
        this.f222b.remove(aVar);
    }

    public final void f(boolean z10) {
        this.f221a = z10;
        androidx.core.util.a<Boolean> aVar = this.f223c;
        if (aVar != null) {
            aVar.accept(Boolean.valueOf(z10));
        }
    }

    void g(androidx.core.util.a<Boolean> aVar) {
        this.f223c = aVar;
    }
}
