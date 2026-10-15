package ua;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: IdentityCollection.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f35645b = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Object> f35646a = new ArrayList();

    public a() {
        e(null);
    }

    public boolean a(int i10) {
        return i10 < this.f35646a.size();
    }

    public <T> T b(int i10) {
        return (T) this.f35646a.get(i10);
    }

    public int c(Object obj) {
        for (int i10 = 0; i10 < this.f35646a.size(); i10++) {
            if (this.f35646a.get(i10) == obj) {
                return i10;
            }
        }
        return -1;
    }

    public boolean d(int i10) {
        return this.f35646a.get(i10) == f35645b;
    }

    public int e(Object obj) {
        this.f35646a.add(obj);
        return this.f35646a.size() - 1;
    }

    public void f(int i10, Object obj) {
        if (this.f35646a.size() > i10) {
            this.f35646a.remove(i10);
        }
        this.f35646a.add(i10, obj);
    }

    public int g() {
        return e(f35645b);
    }
}
