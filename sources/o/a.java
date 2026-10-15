package o;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: ArrayMap.java */
/* JADX INFO: loaded from: classes.dex */
public class a<K, V> extends g<K, V> implements Map<K, V> {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    f<K, V> f32805v;

    /* JADX INFO: renamed from: o.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ArrayMap.java */
    class C0209a extends f<K, V> {
        C0209a() {
        }

        @Override // o.f
        protected void a() {
            a.this.clear();
        }

        @Override // o.f
        protected Object b(int i10, int i11) {
            return a.this.f32854p[(i10 << 1) + i11];
        }

        @Override // o.f
        protected Map<K, V> c() {
            return a.this;
        }

        @Override // o.f
        protected int d() {
            return a.this.f32855q;
        }

        @Override // o.f
        protected int e(Object obj) {
            return a.this.f(obj);
        }

        @Override // o.f
        protected int f(Object obj) {
            return a.this.j(obj);
        }

        @Override // o.f
        protected void g(K k10, V v10) {
            a.this.put(k10, v10);
        }

        @Override // o.f
        protected void h(int i10) {
            a.this.m(i10);
        }

        @Override // o.f
        protected V i(int i10, V v10) {
            return a.this.n(i10, v10);
        }
    }

    public a() {
    }

    private f<K, V> p() {
        if (this.f32805v == null) {
            this.f32805v = new C0209a();
        }
        return this.f32805v;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return p().l();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return p().m();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        c(this.f32855q + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean q(Collection<?> collection) {
        return f.p(this, collection);
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return p().n();
    }

    public a(int i10) {
        super(i10);
    }

    public a(g gVar) {
        super(gVar);
    }
}
