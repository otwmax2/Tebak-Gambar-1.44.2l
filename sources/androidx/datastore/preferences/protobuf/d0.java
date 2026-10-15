package androidx.datastore.preferences.protobuf;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: LazyField.java */
/* JADX INFO: loaded from: classes.dex */
public class d0 extends e0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final r0 f2675f;

    /* JADX INFO: compiled from: LazyField.java */
    static class b<K> implements Map.Entry<K, Object> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private Map.Entry<K, d0> f2676o;

        public d0 a() {
            return this.f2676o.getValue();
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f2676o.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            d0 value = this.f2676o.getValue();
            if (value == null) {
                return null;
            }
            return value.f();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof r0) {
                return this.f2676o.getValue().d((r0) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }

        private b(Map.Entry<K, d0> entry) {
            this.f2676o = entry;
        }
    }

    /* JADX INFO: compiled from: LazyField.java */
    static class c<K> implements Iterator<Map.Entry<K, Object>> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private Iterator<Map.Entry<K, Object>> f2677o;

        public c(Iterator<Map.Entry<K, Object>> it) {
            this.f2677o = it;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.f2677o.next();
            return next.getValue() instanceof d0 ? new b(next) : next;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2677o.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f2677o.remove();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.e0
    public boolean equals(Object obj) {
        return f().equals(obj);
    }

    public r0 f() {
        return c(this.f2675f);
    }

    @Override // androidx.datastore.preferences.protobuf.e0
    public int hashCode() {
        return f().hashCode();
    }

    public String toString() {
        return f().toString();
    }
}
