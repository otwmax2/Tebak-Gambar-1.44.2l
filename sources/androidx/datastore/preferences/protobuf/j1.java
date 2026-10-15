package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.u;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: SmallSortedMap.java */
/* JADX INFO: loaded from: classes.dex */
class j1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f2757o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List<j1<K, V>.e> f2758p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Map<K, V> f2759q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f2760r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile j1<K, V>.g f2761s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Map<K, V> f2762t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private volatile j1<K, V>.c f2763u;

    /* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
    /* JADX INFO: compiled from: SmallSortedMap.java */
    static class a<FieldDescriptorType> extends j1<FieldDescriptorType, Object> {
        a(int i10) {
            super(i10, null);
        }

        @Override // androidx.datastore.preferences.protobuf.j1, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return super.put((u.b) obj, obj2);
        }

        @Override // androidx.datastore.preferences.protobuf.j1
        public void r() {
            if (!q()) {
                for (int i10 = 0; i10 < m(); i10++) {
                    Map.Entry<FieldDescriptorType, Object> entryL = l(i10);
                    if (((u.b) entryL.getKey()).w()) {
                        entryL.setValue(Collections.unmodifiableList((List) entryL.getValue()));
                    }
                }
                for (Map.Entry<FieldDescriptorType, Object> entry : o()) {
                    if (((u.b) entry.getKey()).w()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.r();
        }
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    private class c extends j1<K, V>.g {
        private c() {
            super(j1.this, null);
        }

        @Override // androidx.datastore.preferences.protobuf.j1.g, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new b(j1.this, null);
        }

        /* synthetic */ c(j1 j1Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Iterator<Object> f2768a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final Iterable<Object> f2769b = new b();

        /* JADX INFO: compiled from: SmallSortedMap.java */
        static class a implements Iterator<Object> {
            a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: compiled from: SmallSortedMap.java */
        static class b implements Iterable<Object> {
            b() {
            }

            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return d.f2768a;
            }
        }

        static <T> Iterable<T> b() {
            return (Iterable<T>) f2769b;
        }
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    private class e implements Map.Entry<K, V>, Comparable<j1<K, V>.e> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final K f2770o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private V f2771p;

        e(j1 j1Var, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        private boolean e(Object obj, Object obj2) {
            return obj == null ? obj2 == null : obj.equals(obj2);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compareTo(j1<K, V>.e eVar) {
            return getKey().compareTo(eVar.getKey());
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return e(this.f2770o, entry.getKey()) && e(this.f2771p, entry.getValue());
        }

        @Override // java.util.Map.Entry
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public K getKey() {
            return this.f2770o;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f2771p;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k10 = this.f2770o;
            int iHashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f2771p;
            return iHashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            j1.this.h();
            V v11 = this.f2771p;
            this.f2771p = v10;
            return v11;
        }

        public String toString() {
            return this.f2770o + "=" + this.f2771p;
        }

        e(K k10, V v10) {
            this.f2770o = k10;
            this.f2771p = v10;
        }
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    private class g extends AbstractSet<Map.Entry<K, V>> {
        private g() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean add(Map.Entry<K, V> entry) {
            if (contains(entry)) {
                return false;
            }
            j1.this.put(entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            j1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = j1.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new f(j1.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            j1.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return j1.this.size();
        }

        /* synthetic */ g(j1 j1Var, a aVar) {
            this();
        }
    }

    /* synthetic */ j1(int i10, a aVar) {
        this(i10);
    }

    private int f(K k10) {
        int size = this.f2758p.size() - 1;
        if (size >= 0) {
            int iCompareTo = k10.compareTo(this.f2758p.get(size).getKey());
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        int i10 = 0;
        while (i10 <= size) {
            int i11 = (i10 + size) / 2;
            int iCompareTo2 = k10.compareTo(this.f2758p.get(i11).getKey());
            if (iCompareTo2 < 0) {
                size = i11 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i11;
                }
                i10 = i11 + 1;
            }
        }
        return -(i10 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f2760r) {
            throw new UnsupportedOperationException();
        }
    }

    private void k() {
        h();
        if (!this.f2758p.isEmpty() || (this.f2758p instanceof ArrayList)) {
            return;
        }
        this.f2758p = new ArrayList(this.f2757o);
    }

    private SortedMap<K, V> p() {
        h();
        if (this.f2759q.isEmpty() && !(this.f2759q instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f2759q = treeMap;
            this.f2762t = treeMap.descendingMap();
        }
        return (SortedMap) this.f2759q;
    }

    static <FieldDescriptorType extends u.b<FieldDescriptorType>> j1<FieldDescriptorType, Object> s(int i10) {
        return new a(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V u(int i10) {
        h();
        V value = this.f2758p.remove(i10).getValue();
        if (!this.f2759q.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = p().entrySet().iterator();
            this.f2758p.add(new e(this, it.next()));
            it.remove();
        }
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        h();
        if (!this.f2758p.isEmpty()) {
            this.f2758p.clear();
        }
        if (this.f2759q.isEmpty()) {
            return;
        }
        this.f2759q.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return f(comparable) >= 0 || this.f2759q.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f2761s == null) {
            this.f2761s = new g(this, null);
        }
        return this.f2761s;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j1)) {
            return super.equals(obj);
        }
        j1 j1Var = (j1) obj;
        int size = size();
        if (size != j1Var.size()) {
            return false;
        }
        int iM = m();
        if (iM != j1Var.m()) {
            return entrySet().equals(j1Var.entrySet());
        }
        for (int i10 = 0; i10 < iM; i10++) {
            if (!l(i10).equals(j1Var.l(i10))) {
                return false;
            }
        }
        if (iM != size) {
            return this.f2759q.equals(j1Var.f2759q);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iF = f(comparable);
        return iF >= 0 ? this.f2758p.get(iF).getValue() : this.f2759q.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iM = m();
        int iHashCode = 0;
        for (int i10 = 0; i10 < iM; i10++) {
            iHashCode += this.f2758p.get(i10).hashCode();
        }
        return n() > 0 ? iHashCode + this.f2759q.hashCode() : iHashCode;
    }

    Set<Map.Entry<K, V>> j() {
        if (this.f2763u == null) {
            this.f2763u = new c(this, null);
        }
        return this.f2763u;
    }

    public Map.Entry<K, V> l(int i10) {
        return this.f2758p.get(i10);
    }

    public int m() {
        return this.f2758p.size();
    }

    public int n() {
        return this.f2759q.size();
    }

    public Iterable<Map.Entry<K, V>> o() {
        return this.f2759q.isEmpty() ? d.b() : this.f2759q.entrySet();
    }

    public boolean q() {
        return this.f2760r;
    }

    public void r() {
        if (this.f2760r) {
            return;
        }
        this.f2759q = this.f2759q.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f2759q);
        this.f2762t = this.f2762t.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f2762t);
        this.f2760r = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        h();
        Comparable comparable = (Comparable) obj;
        int iF = f(comparable);
        if (iF >= 0) {
            return u(iF);
        }
        if (this.f2759q.isEmpty()) {
            return null;
        }
        return this.f2759q.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f2758p.size() + this.f2759q.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public V put(K k10, V v10) {
        h();
        int iF = f(k10);
        if (iF >= 0) {
            return this.f2758p.get(iF).setValue(v10);
        }
        k();
        int i10 = -(iF + 1);
        if (i10 >= this.f2757o) {
            return p().put(k10, v10);
        }
        int size = this.f2758p.size();
        int i11 = this.f2757o;
        if (size == i11) {
            j1<K, V>.e eVarRemove = this.f2758p.remove(i11 - 1);
            p().put(eVarRemove.getKey(), eVarRemove.getValue());
        }
        this.f2758p.add(i10, new e(k10, v10));
        return null;
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    private class b implements Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f2764o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private Iterator<Map.Entry<K, V>> f2765p;

        private b() {
            this.f2764o = j1.this.f2758p.size();
        }

        private Iterator<Map.Entry<K, V>> a() {
            if (this.f2765p == null) {
                this.f2765p = j1.this.f2762t.entrySet().iterator();
            }
            return this.f2765p;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (a().hasNext()) {
                return a().next();
            }
            List list = j1.this.f2758p;
            int i10 = this.f2764o - 1;
            this.f2764o = i10;
            return (Map.Entry) list.get(i10);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i10 = this.f2764o;
            return (i10 > 0 && i10 <= j1.this.f2758p.size()) || a().hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /* synthetic */ b(j1 j1Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: SmallSortedMap.java */
    private class f implements Iterator<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f2773o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f2774p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private Iterator<Map.Entry<K, V>> f2775q;

        private f() {
            this.f2773o = -1;
        }

        private Iterator<Map.Entry<K, V>> a() {
            if (this.f2775q == null) {
                this.f2775q = j1.this.f2759q.entrySet().iterator();
            }
            return this.f2775q;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            this.f2774p = true;
            int i10 = this.f2773o + 1;
            this.f2773o = i10;
            return i10 < j1.this.f2758p.size() ? (Map.Entry) j1.this.f2758p.get(this.f2773o) : a().next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f2773o + 1 >= j1.this.f2758p.size()) {
                return !j1.this.f2759q.isEmpty() && a().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f2774p) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f2774p = false;
            j1.this.h();
            if (this.f2773o >= j1.this.f2758p.size()) {
                a().remove();
                return;
            }
            j1 j1Var = j1.this;
            int i10 = this.f2773o;
            this.f2773o = i10 - 1;
            j1Var.u(i10);
        }

        /* synthetic */ f(j1 j1Var, a aVar) {
            this();
        }
    }

    private j1(int i10) {
        this.f2757o = i10;
        this.f2758p = Collections.emptyList();
        this.f2759q = Collections.emptyMap();
        this.f2762t = Collections.emptyMap();
    }
}
