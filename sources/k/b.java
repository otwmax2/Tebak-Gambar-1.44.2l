package k;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: SafeIterableMap.java */
/* JADX INFO: loaded from: classes.dex */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    c<K, V> f31262o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private c<K, V> f31263p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private WeakHashMap<f<K, V>, Boolean> f31264q = new WeakHashMap<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f31265r = 0;

    /* JADX INFO: compiled from: SafeIterableMap.java */
    static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // k.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.f31269r;
        }

        @Override // k.b.e
        c<K, V> d(c<K, V> cVar) {
            return cVar.f31268q;
        }
    }

    /* JADX INFO: renamed from: k.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SafeIterableMap.java */
    private static class C0183b<K, V> extends e<K, V> {
        C0183b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // k.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.f31268q;
        }

        @Override // k.b.e
        c<K, V> d(c<K, V> cVar) {
            return cVar.f31269r;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    static class c<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final K f31266o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final V f31267p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        c<K, V> f31268q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        c<K, V> f31269r;

        c(K k10, V v10) {
            this.f31266o = k10;
            this.f31267p = v10;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f31266o.equals(cVar.f31266o) && this.f31267p.equals(cVar.f31267p);
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f31266o;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f31267p;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f31266o.hashCode() ^ this.f31267p.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f31266o + "=" + this.f31267p;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: SafeIterableMap.java */
    public class d implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private c<K, V> f31270o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f31271p = true;

        d() {
        }

        @Override // k.b.f
        public void a(c<K, V> cVar) {
            c<K, V> cVar2 = this.f31270o;
            if (cVar == cVar2) {
                c<K, V> cVar3 = cVar2.f31269r;
                this.f31270o = cVar3;
                this.f31271p = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (this.f31271p) {
                this.f31271p = false;
                this.f31270o = b.this.f31262o;
            } else {
                c<K, V> cVar = this.f31270o;
                this.f31270o = cVar != null ? cVar.f31268q : null;
            }
            return this.f31270o;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f31271p) {
                return b.this.f31262o != null;
            }
            c<K, V> cVar = this.f31270o;
            return (cVar == null || cVar.f31268q == null) ? false : true;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    private static abstract class e<K, V> implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        c<K, V> f31273o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        c<K, V> f31274p;

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.f31273o = cVar2;
            this.f31274p = cVar;
        }

        private c<K, V> f() {
            c<K, V> cVar = this.f31274p;
            c<K, V> cVar2 = this.f31273o;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return d(cVar);
        }

        @Override // k.b.f
        public void a(c<K, V> cVar) {
            if (this.f31273o == cVar && cVar == this.f31274p) {
                this.f31274p = null;
                this.f31273o = null;
            }
            c<K, V> cVar2 = this.f31273o;
            if (cVar2 == cVar) {
                this.f31273o = b(cVar2);
            }
            if (this.f31274p == cVar) {
                this.f31274p = f();
            }
        }

        abstract c<K, V> b(c<K, V> cVar);

        abstract c<K, V> d(c<K, V> cVar);

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.f31274p;
            this.f31274p = f();
            return cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f31274p != null;
        }
    }

    /* JADX INFO: compiled from: SafeIterableMap.java */
    interface f<K, V> {
        void a(c<K, V> cVar);
    }

    public Map.Entry<K, V> c() {
        return this.f31262o;
    }

    public Iterator<Map.Entry<K, V>> descendingIterator() {
        C0183b c0183b = new C0183b(this.f31263p, this.f31262o);
        this.f31264q.put(c0183b, Boolean.FALSE);
        return c0183b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    protected c<K, V> g(K k10) {
        c<K, V> cVar = this.f31262o;
        while (cVar != null && !cVar.f31266o.equals(k10)) {
            cVar = cVar.f31268q;
        }
        return cVar;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            iHashCode += it.next().hashCode();
        }
        return iHashCode;
    }

    public b<K, V>.d i() {
        b<K, V>.d dVar = new d();
        this.f31264q.put(dVar, Boolean.FALSE);
        return dVar;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f31262o, this.f31263p);
        this.f31264q.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public Map.Entry<K, V> j() {
        return this.f31263p;
    }

    protected c<K, V> k(K k10, V v10) {
        c<K, V> cVar = new c<>(k10, v10);
        this.f31265r++;
        c<K, V> cVar2 = this.f31263p;
        if (cVar2 == null) {
            this.f31262o = cVar;
            this.f31263p = cVar;
            return cVar;
        }
        cVar2.f31268q = cVar;
        cVar.f31269r = cVar2;
        this.f31263p = cVar;
        return cVar;
    }

    public V l(K k10, V v10) {
        c<K, V> cVarG = g(k10);
        if (cVarG != null) {
            return cVarG.f31267p;
        }
        k(k10, v10);
        return null;
    }

    public V m(K k10) {
        c<K, V> cVarG = g(k10);
        if (cVarG == null) {
            return null;
        }
        this.f31265r--;
        if (!this.f31264q.isEmpty()) {
            Iterator<f<K, V>> it = this.f31264q.keySet().iterator();
            while (it.hasNext()) {
                it.next().a(cVarG);
            }
        }
        c<K, V> cVar = cVarG.f31269r;
        if (cVar != null) {
            cVar.f31268q = cVarG.f31268q;
        } else {
            this.f31262o = cVarG.f31268q;
        }
        c<K, V> cVar2 = cVarG.f31268q;
        if (cVar2 != null) {
            cVar2.f31269r = cVar;
        } else {
            this.f31263p = cVar;
        }
        cVarG.f31268q = null;
        cVarG.f31269r = null;
        return cVarG.f31267p;
    }

    public int size() {
        return this.f31265r;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
