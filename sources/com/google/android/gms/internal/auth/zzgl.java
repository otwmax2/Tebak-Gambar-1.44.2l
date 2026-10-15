package com.google.android.gms.internal.auth;

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

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
class zzgl<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f21561o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f21564r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile zzgk f21565s;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List<zzgi> f21562p = Collections.emptyList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Map<K, V> f21563q = Collections.emptyMap();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Map<K, V> f21566t = Collections.emptyMap();

    private final int m(K k10) {
        int size = this.f21562p.size() - 1;
        int i10 = 0;
        if (size >= 0) {
            int iCompareTo = k10.compareTo(this.f21562p.get(size).c());
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        while (i10 <= size) {
            int i11 = (i10 + size) / 2;
            int iCompareTo2 = k10.compareTo(this.f21562p.get(i11).c());
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
    public final V n(int i10) {
        p();
        V v10 = (V) this.f21562p.remove(i10).getValue();
        if (!this.f21563q.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = o().entrySet().iterator();
            List<zzgi> list = this.f21562p;
            Map.Entry<K, V> next = it.next();
            list.add(new zzgi(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v10;
    }

    private final SortedMap<K, V> o() {
        p();
        if (this.f21563q.isEmpty() && !(this.f21563q instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f21563q = treeMap;
            this.f21566t = treeMap.descendingMap();
        }
        return (SortedMap) this.f21563q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        if (this.f21564r) {
            throw new UnsupportedOperationException();
        }
    }

    public void a() {
        if (this.f21564r) {
            return;
        }
        this.f21563q = this.f21563q.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f21563q);
        this.f21566t = this.f21566t.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f21566t);
        this.f21564r = true;
    }

    public final int b() {
        return this.f21562p.size();
    }

    public final Iterable<Map.Entry<K, V>> c() {
        return this.f21563q.isEmpty() ? zzgh.a() : this.f21563q.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        p();
        if (!this.f21562p.isEmpty()) {
            this.f21562p.clear();
        }
        if (this.f21563q.isEmpty()) {
            return;
        }
        this.f21563q.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m(comparable) >= 0 || this.f21563q.containsKey(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final V put(K k10, V v10) {
        p();
        int iM = m(k10);
        if (iM >= 0) {
            return (V) this.f21562p.get(iM).setValue(v10);
        }
        p();
        if (this.f21562p.isEmpty() && !(this.f21562p instanceof ArrayList)) {
            this.f21562p = new ArrayList(this.f21561o);
        }
        int i10 = -(iM + 1);
        if (i10 >= this.f21561o) {
            return o().put(k10, v10);
        }
        int size = this.f21562p.size();
        int i11 = this.f21561o;
        if (size == i11) {
            zzgi zzgiVarRemove = this.f21562p.remove(i11 - 1);
            o().put(zzgiVarRemove.c(), zzgiVarRemove.getValue());
        }
        this.f21562p.add(i10, new zzgi(this, k10, v10));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f21565s == null) {
            this.f21565s = new zzgk(this, null);
        }
        return this.f21565s;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgl)) {
            return super.equals(obj);
        }
        zzgl zzglVar = (zzgl) obj;
        int size = size();
        if (size != zzglVar.size()) {
            return false;
        }
        int iB = b();
        if (iB != zzglVar.b()) {
            return entrySet().equals(zzglVar.entrySet());
        }
        for (int i10 = 0; i10 < iB; i10++) {
            if (!h(i10).equals(zzglVar.h(i10))) {
                return false;
            }
        }
        if (iB != size) {
            return this.f21563q.equals(zzglVar.f21563q);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iM = m(comparable);
        return iM >= 0 ? (V) this.f21562p.get(iM).getValue() : this.f21563q.get(comparable);
    }

    public final Map.Entry<K, V> h(int i10) {
        return this.f21562p.get(i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iB = b();
        int iHashCode = 0;
        for (int i10 = 0; i10 < iB; i10++) {
            iHashCode += this.f21562p.get(i10).hashCode();
        }
        return this.f21563q.size() > 0 ? iHashCode + this.f21563q.hashCode() : iHashCode;
    }

    public final boolean l() {
        return this.f21564r;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        p();
        Comparable comparable = (Comparable) obj;
        int iM = m(comparable);
        if (iM >= 0) {
            return n(iM);
        }
        if (this.f21563q.isEmpty()) {
            return null;
        }
        return this.f21563q.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f21562p.size() + this.f21563q.size();
    }
}
