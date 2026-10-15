package c7;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: LinkedTreeMap.java */
/* JADX INFO: loaded from: classes2.dex */
public final class h<K, V> extends AbstractMap<K, V> implements Serializable {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final Comparator<Comparable> f4923v = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Comparator<? super K> f4924o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    e<K, V> f4925p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f4926q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f4927r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final e<K, V> f4928s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private h<K, V>.b f4929t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private h<K, V>.c f4930u;

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    class a implements Comparator<Comparable> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    class b extends AbstractSet<Map.Entry<K, V>> {

        /* JADX INFO: compiled from: LinkedTreeMap.java */
        class a extends h<K, V>.d<Map.Entry<K, V>> {
            a() {
                super();
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                return a();
            }
        }

        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            h.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && h.this.c((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e<K, V> eVarC;
            if (!(obj instanceof Map.Entry) || (eVarC = h.this.c((Map.Entry) obj)) == null) {
                return false;
            }
            h.this.f(eVarC, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return h.this.f4926q;
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    final class c extends AbstractSet<K> {

        /* JADX INFO: compiled from: LinkedTreeMap.java */
        class a extends h<K, V>.d<K> {
            a() {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().f4944t;
            }
        }

        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            h.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return h.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return h.this.h(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return h.this.f4926q;
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    private abstract class d<T> implements Iterator<T> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        e<K, V> f4935o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        e<K, V> f4936p = null;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f4937q;

        d() {
            this.f4935o = h.this.f4928s.f4942r;
            this.f4937q = h.this.f4927r;
        }

        final e<K, V> a() {
            e<K, V> eVar = this.f4935o;
            h hVar = h.this;
            if (eVar == hVar.f4928s) {
                throw new NoSuchElementException();
            }
            if (hVar.f4927r != this.f4937q) {
                throw new ConcurrentModificationException();
            }
            this.f4935o = eVar.f4942r;
            this.f4936p = eVar;
            return eVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f4935o != h.this.f4928s;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e<K, V> eVar = this.f4936p;
            if (eVar == null) {
                throw new IllegalStateException();
            }
            h.this.f(eVar, true);
            this.f4936p = null;
            this.f4937q = h.this.f4927r;
        }
    }

    public h() {
        this(f4923v);
    }

    private boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void e(e<K, V> eVar, boolean z10) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.f4940p;
            e<K, V> eVar3 = eVar.f4941q;
            int i10 = eVar2 != null ? eVar2.f4946v : 0;
            int i11 = eVar3 != null ? eVar3.f4946v : 0;
            int i12 = i10 - i11;
            if (i12 == -2) {
                e<K, V> eVar4 = eVar3.f4940p;
                e<K, V> eVar5 = eVar3.f4941q;
                int i13 = (eVar4 != null ? eVar4.f4946v : 0) - (eVar5 != null ? eVar5.f4946v : 0);
                if (i13 == -1 || (i13 == 0 && !z10)) {
                    k(eVar);
                } else {
                    l(eVar3);
                    k(eVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 2) {
                e<K, V> eVar6 = eVar2.f4940p;
                e<K, V> eVar7 = eVar2.f4941q;
                int i14 = (eVar6 != null ? eVar6.f4946v : 0) - (eVar7 != null ? eVar7.f4946v : 0);
                if (i14 == 1 || (i14 == 0 && !z10)) {
                    l(eVar);
                } else {
                    k(eVar2);
                    l(eVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 0) {
                eVar.f4946v = i10 + 1;
                if (z10) {
                    return;
                }
            } else {
                eVar.f4946v = Math.max(i10, i11) + 1;
                if (!z10) {
                    return;
                }
            }
            eVar = eVar.f4939o;
        }
    }

    private void j(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.f4939o;
        eVar.f4939o = null;
        if (eVar2 != null) {
            eVar2.f4939o = eVar3;
        }
        if (eVar3 == null) {
            this.f4925p = eVar2;
        } else if (eVar3.f4940p == eVar) {
            eVar3.f4940p = eVar2;
        } else {
            eVar3.f4941q = eVar2;
        }
    }

    private void k(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f4940p;
        e<K, V> eVar3 = eVar.f4941q;
        e<K, V> eVar4 = eVar3.f4940p;
        e<K, V> eVar5 = eVar3.f4941q;
        eVar.f4941q = eVar4;
        if (eVar4 != null) {
            eVar4.f4939o = eVar;
        }
        j(eVar, eVar3);
        eVar3.f4940p = eVar;
        eVar.f4939o = eVar3;
        int iMax = Math.max(eVar2 != null ? eVar2.f4946v : 0, eVar4 != null ? eVar4.f4946v : 0) + 1;
        eVar.f4946v = iMax;
        eVar3.f4946v = Math.max(iMax, eVar5 != null ? eVar5.f4946v : 0) + 1;
    }

    private void l(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f4940p;
        e<K, V> eVar3 = eVar.f4941q;
        e<K, V> eVar4 = eVar2.f4940p;
        e<K, V> eVar5 = eVar2.f4941q;
        eVar.f4940p = eVar5;
        if (eVar5 != null) {
            eVar5.f4939o = eVar;
        }
        j(eVar, eVar2);
        eVar2.f4941q = eVar;
        eVar.f4939o = eVar2;
        int iMax = Math.max(eVar3 != null ? eVar3.f4946v : 0, eVar5 != null ? eVar5.f4946v : 0) + 1;
        eVar.f4946v = iMax;
        eVar2.f4946v = Math.max(iMax, eVar4 != null ? eVar4.f4946v : 0) + 1;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    e<K, V> b(K k10, boolean z10) {
        int iCompareTo;
        e<K, V> eVar;
        Comparator<? super K> comparator = this.f4924o;
        e<K, V> eVar2 = this.f4925p;
        if (eVar2 != null) {
            Comparable comparable = comparator == f4923v ? (Comparable) k10 : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(eVar2.f4944t) : comparator.compare(k10, eVar2.f4944t);
                if (iCompareTo == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = iCompareTo < 0 ? eVar2.f4940p : eVar2.f4941q;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z10) {
            return null;
        }
        e<K, V> eVar4 = this.f4928s;
        if (eVar2 != null) {
            eVar = new e<>(eVar2, k10, eVar4, eVar4.f4943s);
            if (iCompareTo < 0) {
                eVar2.f4940p = eVar;
            } else {
                eVar2.f4941q = eVar;
            }
            e(eVar2, true);
        } else {
            if (comparator == f4923v && !(k10 instanceof Comparable)) {
                throw new ClassCastException(k10.getClass().getName() + " is not Comparable");
            }
            eVar = new e<>(eVar2, k10, eVar4, eVar4.f4943s);
            this.f4925p = eVar;
        }
        this.f4926q++;
        this.f4927r++;
        return eVar;
    }

    e<K, V> c(Map.Entry<?, ?> entry) {
        e<K, V> eVarD = d(entry.getKey());
        if (eVarD != null && a(eVarD.f4945u, entry.getValue())) {
            return eVarD;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f4925p = null;
        this.f4926q = 0;
        this.f4927r++;
        e<K, V> eVar = this.f4928s;
        eVar.f4943s = eVar;
        eVar.f4942r = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return d(obj) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    e<K, V> d(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return b(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        h<K, V>.b bVar = this.f4929t;
        if (bVar != null) {
            return bVar;
        }
        h<K, V>.b bVar2 = new b();
        this.f4929t = bVar2;
        return bVar2;
    }

    void f(e<K, V> eVar, boolean z10) {
        int i10;
        if (z10) {
            e<K, V> eVar2 = eVar.f4943s;
            eVar2.f4942r = eVar.f4942r;
            eVar.f4942r.f4943s = eVar2;
        }
        e<K, V> eVar3 = eVar.f4940p;
        e<K, V> eVar4 = eVar.f4941q;
        e<K, V> eVar5 = eVar.f4939o;
        int i11 = 0;
        if (eVar3 == null || eVar4 == null) {
            if (eVar3 != null) {
                j(eVar, eVar3);
                eVar.f4940p = null;
            } else if (eVar4 != null) {
                j(eVar, eVar4);
                eVar.f4941q = null;
            } else {
                j(eVar, null);
            }
            e(eVar5, false);
            this.f4926q--;
            this.f4927r++;
            return;
        }
        e<K, V> eVarB = eVar3.f4946v > eVar4.f4946v ? eVar3.b() : eVar4.a();
        f(eVarB, false);
        e<K, V> eVar6 = eVar.f4940p;
        if (eVar6 != null) {
            i10 = eVar6.f4946v;
            eVarB.f4940p = eVar6;
            eVar6.f4939o = eVarB;
            eVar.f4940p = null;
        } else {
            i10 = 0;
        }
        e<K, V> eVar7 = eVar.f4941q;
        if (eVar7 != null) {
            i11 = eVar7.f4946v;
            eVarB.f4941q = eVar7;
            eVar7.f4939o = eVarB;
            eVar.f4941q = null;
        }
        eVarB.f4946v = Math.max(i10, i11) + 1;
        j(eVar, eVarB);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        e<K, V> eVarD = d(obj);
        if (eVarD != null) {
            return eVarD.f4945u;
        }
        return null;
    }

    e<K, V> h(Object obj) {
        e<K, V> eVarD = d(obj);
        if (eVarD != null) {
            f(eVarD, true);
        }
        return eVarD;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        h<K, V>.c cVar = this.f4930u;
        if (cVar != null) {
            return cVar;
        }
        h<K, V>.c cVar2 = new c();
        this.f4930u = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        Objects.requireNonNull(k10, "key == null");
        e<K, V> eVarB = b(k10, true);
        V v11 = eVarB.f4945u;
        eVarB.f4945u = v10;
        return v11;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        e<K, V> eVarH = h(obj);
        if (eVarH != null) {
            return eVarH.f4945u;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f4926q;
    }

    public h(Comparator<? super K> comparator) {
        this.f4926q = 0;
        this.f4927r = 0;
        this.f4928s = new e<>();
        this.f4924o = comparator == null ? f4923v : comparator;
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    static final class e<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        e<K, V> f4939o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        e<K, V> f4940p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        e<K, V> f4941q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        e<K, V> f4942r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        e<K, V> f4943s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final K f4944t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        V f4945u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        int f4946v;

        e() {
            this.f4944t = null;
            this.f4943s = this;
            this.f4942r = this;
        }

        public e<K, V> a() {
            e<K, V> eVar = this;
            for (e<K, V> eVar2 = this.f4940p; eVar2 != null; eVar2 = eVar2.f4940p) {
                eVar = eVar2;
            }
            return eVar;
        }

        public e<K, V> b() {
            e<K, V> eVar = this;
            for (e<K, V> eVar2 = this.f4941q; eVar2 != null; eVar2 = eVar2.f4941q) {
                eVar = eVar2;
            }
            return eVar;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k10 = this.f4944t;
            if (k10 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k10.equals(entry.getKey())) {
                return false;
            }
            V v10 = this.f4945u;
            if (v10 == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v10.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f4944t;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f4945u;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k10 = this.f4944t;
            int iHashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f4945u;
            return iHashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            V v11 = this.f4945u;
            this.f4945u = v10;
            return v11;
        }

        public String toString() {
            return this.f4944t + "=" + this.f4945u;
        }

        e(e<K, V> eVar, K k10, e<K, V> eVar2, e<K, V> eVar3) {
            this.f4939o = eVar;
            this.f4944t = k10;
            this.f4946v = 1;
            this.f4942r = eVar2;
            this.f4943s = eVar3;
            eVar3.f4942r = this;
            eVar2.f4943s = this;
        }
    }
}
