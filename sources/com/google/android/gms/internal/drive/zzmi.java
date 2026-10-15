package com.google.android.gms.internal.drive;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
class zzmi<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f22281o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List<zzmp> f22282p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Map<K, V> f22283q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f22284r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile zzmr f22285s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Map<K, V> f22286t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private volatile zzml f22287u;

    private zzmi(int i10) {
        this.f22281o = i10;
        this.f22282p = Collections.emptyList();
        this.f22283q = Collections.emptyMap();
        this.f22286t = Collections.emptyMap();
    }

    private final int b(K k10) {
        int size = this.f22282p.size() - 1;
        if (size >= 0) {
            int iCompareTo = k10.compareTo((Comparable) this.f22282p.get(size).getKey());
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
            int iCompareTo2 = k10.compareTo((Comparable) this.f22282p.get(i11).getKey());
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

    static <FieldDescriptorType extends zzkd<FieldDescriptorType>> zzmi<FieldDescriptorType, Object> f(int i10) {
        return new zzmj(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V j(int i10) {
        r();
        V v10 = (V) this.f22282p.remove(i10).getValue();
        if (!this.f22283q.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = s().entrySet().iterator();
            this.f22282p.add(new zzmp(this, it.next()));
            it.remove();
        }
        return v10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() {
        if (this.f22284r) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> s() {
        r();
        if (this.f22283q.isEmpty() && !(this.f22283q instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f22283q = treeMap;
            this.f22286t = treeMap.descendingMap();
        }
        return (SortedMap) this.f22283q;
    }

    public final boolean a() {
        return this.f22284r;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        r();
        if (!this.f22282p.isEmpty()) {
            this.f22282p.clear();
        }
        if (this.f22283q.isEmpty()) {
            return;
        }
        this.f22283q.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return b(comparable) >= 0 || this.f22283q.containsKey(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final V put(K k10, V v10) {
        r();
        int iB = b(k10);
        if (iB >= 0) {
            return (V) this.f22282p.get(iB).setValue(v10);
        }
        r();
        if (this.f22282p.isEmpty() && !(this.f22282p instanceof ArrayList)) {
            this.f22282p = new ArrayList(this.f22281o);
        }
        int i10 = -(iB + 1);
        if (i10 >= this.f22281o) {
            return s().put(k10, v10);
        }
        int size = this.f22282p.size();
        int i11 = this.f22281o;
        if (size == i11) {
            zzmp zzmpVarRemove = this.f22282p.remove(i11 - 1);
            s().put((Comparable) zzmpVarRemove.getKey(), zzmpVarRemove.getValue());
        }
        this.f22282p.add(i10, new zzmp(this, k10, v10));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f22285s == null) {
            this.f22285s = new zzmr(this, null);
        }
        return this.f22285s;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzmi)) {
            return super.equals(obj);
        }
        zzmi zzmiVar = (zzmi) obj;
        int size = size();
        if (size != zzmiVar.size()) {
            return false;
        }
        int iO = o();
        if (iO != zzmiVar.o()) {
            return entrySet().equals(zzmiVar.entrySet());
        }
        for (int i10 = 0; i10 < iO; i10++) {
            if (!h(i10).equals(zzmiVar.h(i10))) {
                return false;
            }
        }
        if (iO != size) {
            return this.f22283q.equals(zzmiVar.f22283q);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iB = b(comparable);
        return iB >= 0 ? (V) this.f22282p.get(iB).getValue() : this.f22283q.get(comparable);
    }

    public final Map.Entry<K, V> h(int i10) {
        return this.f22282p.get(i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iO = o();
        int iHashCode = 0;
        for (int i10 = 0; i10 < iO; i10++) {
            iHashCode += this.f22282p.get(i10).hashCode();
        }
        return this.f22283q.size() > 0 ? iHashCode + this.f22283q.hashCode() : iHashCode;
    }

    public void l() {
        if (this.f22284r) {
            return;
        }
        this.f22283q = this.f22283q.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f22283q);
        this.f22286t = this.f22286t.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f22286t);
        this.f22284r = true;
    }

    public final int o() {
        return this.f22282p.size();
    }

    public final Iterable<Map.Entry<K, V>> p() {
        return this.f22283q.isEmpty() ? zzmm.a() : this.f22283q.entrySet();
    }

    final Set<Map.Entry<K, V>> q() {
        if (this.f22287u == null) {
            this.f22287u = new zzml(this, null);
        }
        return this.f22287u;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        r();
        Comparable comparable = (Comparable) obj;
        int iB = b(comparable);
        if (iB >= 0) {
            return j(iB);
        }
        if (this.f22283q.isEmpty()) {
            return null;
        }
        return this.f22283q.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f22282p.size() + this.f22283q.size();
    }

    /* synthetic */ zzmi(int i10, zzmj zzmjVar) {
        this(i10);
    }
}
