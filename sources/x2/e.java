package x2;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: LruCache.java */
/* JADX INFO: loaded from: classes.dex */
public class e<T, Y> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f36250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f36251c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashMap<T, Y> f36249a = new LinkedHashMap<>(100, 0.75f, true);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f36252d = 0;

    public e(int i10) {
        this.f36251c = i10;
        this.f36250b = i10;
    }

    private void f() {
        m(this.f36250b);
    }

    public void d() {
        m(0);
    }

    public Y g(T t10) {
        return this.f36249a.get(t10);
    }

    public int h() {
        return this.f36252d;
    }

    protected int i(Y y10) {
        return 1;
    }

    protected void j(T t10, Y y10) {
    }

    public Y k(T t10, Y y10) {
        if (i(y10) >= this.f36250b) {
            j(t10, y10);
            return null;
        }
        Y yPut = this.f36249a.put(t10, y10);
        if (y10 != null) {
            this.f36252d += i(y10);
        }
        if (yPut != null) {
            this.f36252d -= i(yPut);
        }
        f();
        return yPut;
    }

    public Y l(T t10) {
        Y yRemove = this.f36249a.remove(t10);
        if (yRemove != null) {
            this.f36252d -= i(yRemove);
        }
        return yRemove;
    }

    protected void m(int i10) {
        while (this.f36252d > i10) {
            Map.Entry<T, Y> next = this.f36249a.entrySet().iterator().next();
            Y value = next.getValue();
            this.f36252d -= i(value);
            T key = next.getKey();
            this.f36249a.remove(key);
            j(key, value);
        }
    }
}
