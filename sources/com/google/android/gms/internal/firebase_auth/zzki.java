package com.google.android.gms.internal.firebase_auth;

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

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
class zzki<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f22847o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List<zzkn> f22848p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Map<K, V> f22849q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f22850r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile zzkp f22851s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Map<K, V> f22852t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private volatile zzkj f22853u;

    private zzki(int i10) {
        this.f22847o = i10;
        this.f22848p = Collections.emptyList();
        this.f22849q = Collections.emptyMap();
        this.f22852t = Collections.emptyMap();
    }

    private final int a(K k10) {
        int size = this.f22848p.size() - 1;
        if (size >= 0) {
            int iCompareTo = k10.compareTo((Comparable) this.f22848p.get(size).getKey());
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
            int iCompareTo2 = k10.compareTo((Comparable) this.f22848p.get(i11).getKey());
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

    static <FieldDescriptorType extends zzhx<FieldDescriptorType>> zzki<FieldDescriptorType, Object> b(int i10) {
        return new zzkh(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V m(int i10) {
        r();
        V v10 = (V) this.f22848p.remove(i10).getValue();
        if (!this.f22849q.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = s().entrySet().iterator();
            this.f22848p.add(new zzkn(this, it.next()));
            it.remove();
        }
        return v10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() {
        if (this.f22850r) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> s() {
        r();
        if (this.f22849q.isEmpty() && !(this.f22849q instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f22849q = treeMap;
            this.f22852t = treeMap.descendingMap();
        }
        return (SortedMap) this.f22849q;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        r();
        if (!this.f22848p.isEmpty()) {
            this.f22848p.clear();
        }
        if (this.f22849q.isEmpty()) {
            return;
        }
        this.f22849q.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f22849q.containsKey(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final V put(K k10, V v10) {
        r();
        int iA = a(k10);
        if (iA >= 0) {
            return (V) this.f22848p.get(iA).setValue(v10);
        }
        r();
        if (this.f22848p.isEmpty() && !(this.f22848p instanceof ArrayList)) {
            this.f22848p = new ArrayList(this.f22847o);
        }
        int i10 = -(iA + 1);
        if (i10 >= this.f22847o) {
            return s().put(k10, v10);
        }
        int size = this.f22848p.size();
        int i11 = this.f22847o;
        if (size == i11) {
            zzkn zzknVarRemove = this.f22848p.remove(i11 - 1);
            s().put((Comparable) zzknVarRemove.getKey(), zzknVarRemove.getValue());
        }
        this.f22848p.add(i10, new zzkn(this, k10, v10));
        return null;
    }

    public void e() {
        if (this.f22850r) {
            return;
        }
        this.f22849q = this.f22849q.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f22849q);
        this.f22852t = this.f22852t.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f22852t);
        this.f22850r = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f22851s == null) {
            this.f22851s = new zzkp(this, null);
        }
        return this.f22851s;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzki)) {
            return super.equals(obj);
        }
        zzki zzkiVar = (zzki) obj;
        int size = size();
        if (size != zzkiVar.size()) {
            return false;
        }
        int iL = l();
        if (iL != zzkiVar.l()) {
            return entrySet().equals(zzkiVar.entrySet());
        }
        for (int i10 = 0; i10 < iL; i10++) {
            if (!j(i10).equals(zzkiVar.j(i10))) {
                return false;
            }
        }
        if (iL != size) {
            return this.f22849q.equals(zzkiVar.f22849q);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? (V) this.f22848p.get(iA).getValue() : this.f22849q.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iL = l();
        int iHashCode = 0;
        for (int i10 = 0; i10 < iL; i10++) {
            iHashCode += this.f22848p.get(i10).hashCode();
        }
        return this.f22849q.size() > 0 ? iHashCode + this.f22849q.hashCode() : iHashCode;
    }

    public final Map.Entry<K, V> j(int i10) {
        return this.f22848p.get(i10);
    }

    public final boolean k() {
        return this.f22850r;
    }

    public final int l() {
        return this.f22848p.size();
    }

    public final Iterable<Map.Entry<K, V>> o() {
        return this.f22849q.isEmpty() ? zzkm.a() : this.f22849q.entrySet();
    }

    final Set<Map.Entry<K, V>> q() {
        if (this.f22853u == null) {
            this.f22853u = new zzkj(this, null);
        }
        return this.f22853u;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        r();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return m(iA);
        }
        if (this.f22849q.isEmpty()) {
            return null;
        }
        return this.f22849q.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f22848p.size() + this.f22849q.size();
    }

    /* synthetic */ zzki(int i10, zzkh zzkhVar) {
        this(i10);
    }
}
