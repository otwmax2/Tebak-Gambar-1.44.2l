package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: ViewModel.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class g0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Map<String, Object> f3521o = new HashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Set<Closeable> f3522p = new LinkedHashSet();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private volatile boolean f3523q = false;

    private static void f(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    final void e() {
        this.f3523q = true;
        Map<String, Object> map = this.f3521o;
        if (map != null) {
            synchronized (map) {
                Iterator<Object> it = this.f3521o.values().iterator();
                while (it.hasNext()) {
                    f(it.next());
                }
            }
        }
        Set<Closeable> set = this.f3522p;
        if (set != null) {
            synchronized (set) {
                Iterator<Closeable> it2 = this.f3522p.iterator();
                while (it2.hasNext()) {
                    f(it2.next());
                }
            }
        }
        h();
    }

    <T> T g(String str) {
        T t10;
        Map<String, Object> map = this.f3521o;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t10 = (T) this.f3521o.get(str);
        }
        return t10;
    }

    protected void h() {
    }

    <T> T i(String str, T t10) {
        Object obj;
        synchronized (this.f3521o) {
            obj = this.f3521o.get(str);
            if (obj == null) {
                this.f3521o.put(str, t10);
            }
        }
        if (obj != null) {
            t10 = (T) obj;
        }
        if (this.f3523q) {
            f(t10);
        }
        return t10;
    }
}
