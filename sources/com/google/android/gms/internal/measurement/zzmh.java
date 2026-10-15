package com.google.android.gms.internal.measurement;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
class zzmh extends AbstractMap {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f23749o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f23752r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile zzmf f23753s;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List f23750p = Collections.emptyList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Map f23751q = Collections.emptyMap();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Map f23754t = Collections.emptyMap();

    private final int m(Comparable comparable) {
        int size = this.f23750p.size() - 1;
        int i10 = 0;
        if (size >= 0) {
            int iCompareTo = comparable.compareTo(((zzmb) this.f23750p.get(size)).c());
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        while (i10 <= size) {
            int i11 = (i10 + size) / 2;
            int iCompareTo2 = comparable.compareTo(((zzmb) this.f23750p.get(i11)).c());
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
    public final Object n(int i10) {
        p();
        Object value = ((zzmb) this.f23750p.remove(i10)).getValue();
        if (!this.f23751q.isEmpty()) {
            Iterator it = o().entrySet().iterator();
            List list = this.f23750p;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new zzmb(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return value;
    }

    private final SortedMap o() {
        p();
        if (this.f23751q.isEmpty() && !(this.f23751q instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f23751q = treeMap;
            this.f23754t = treeMap.descendingMap();
        }
        return (SortedMap) this.f23751q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        if (this.f23752r) {
            throw new UnsupportedOperationException();
        }
    }

    public void a() {
        if (this.f23752r) {
            return;
        }
        this.f23751q = this.f23751q.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f23751q);
        this.f23754t = this.f23754t.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f23754t);
        this.f23752r = true;
    }

    public final int b() {
        return this.f23750p.size();
    }

    public final Iterable c() {
        return this.f23751q.isEmpty() ? zzma.a() : this.f23751q.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        p();
        if (!this.f23750p.isEmpty()) {
            this.f23750p.clear();
        }
        if (this.f23751q.isEmpty()) {
            return;
        }
        this.f23751q.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m(comparable) >= 0 || this.f23751q.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        p();
        int iM = m(comparable);
        if (iM >= 0) {
            return ((zzmb) this.f23750p.get(iM)).setValue(obj);
        }
        p();
        if (this.f23750p.isEmpty() && !(this.f23750p instanceof ArrayList)) {
            this.f23750p = new ArrayList(this.f23749o);
        }
        int i10 = -(iM + 1);
        if (i10 >= this.f23749o) {
            return o().put(comparable, obj);
        }
        int size = this.f23750p.size();
        int i11 = this.f23749o;
        if (size == i11) {
            zzmb zzmbVar = (zzmb) this.f23750p.remove(i11 - 1);
            o().put(zzmbVar.c(), zzmbVar.getValue());
        }
        this.f23750p.add(i10, new zzmb(this, comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f23753s == null) {
            this.f23753s = new zzmf(this, null);
        }
        return this.f23753s;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzmh)) {
            return super.equals(obj);
        }
        zzmh zzmhVar = (zzmh) obj;
        int size = size();
        if (size != zzmhVar.size()) {
            return false;
        }
        int iB = b();
        if (iB != zzmhVar.b()) {
            return entrySet().equals(zzmhVar.entrySet());
        }
        for (int i10 = 0; i10 < iB; i10++) {
            if (!h(i10).equals(zzmhVar.h(i10))) {
                return false;
            }
        }
        if (iB != size) {
            return this.f23751q.equals(zzmhVar.f23751q);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iM = m(comparable);
        return iM >= 0 ? ((zzmb) this.f23750p.get(iM)).getValue() : this.f23751q.get(comparable);
    }

    public final Map.Entry h(int i10) {
        return (Map.Entry) this.f23750p.get(i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iB = b();
        int iHashCode = 0;
        for (int i10 = 0; i10 < iB; i10++) {
            iHashCode += ((zzmb) this.f23750p.get(i10)).hashCode();
        }
        return this.f23751q.size() > 0 ? iHashCode + this.f23751q.hashCode() : iHashCode;
    }

    public final boolean l() {
        return this.f23752r;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        p();
        Comparable comparable = (Comparable) obj;
        int iM = m(comparable);
        if (iM >= 0) {
            return n(iM);
        }
        if (this.f23751q.isEmpty()) {
            return null;
        }
        return this.f23751q.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f23750p.size() + this.f23751q.size();
    }
}
