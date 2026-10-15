package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class zzgtc extends AbstractMap {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f19609o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f19612r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile zzgta f19613s;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List f19610p = Collections.emptyList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Map f19611q = Collections.emptyMap();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Map f19614t = Collections.emptyMap();

    private final int m(Comparable comparable) {
        int size = this.f19610p.size() - 1;
        int i10 = 0;
        if (size >= 0) {
            int iCompareTo = comparable.compareTo(((zzgsw) this.f19610p.get(size)).c());
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        while (i10 <= size) {
            int i11 = (i10 + size) / 2;
            int iCompareTo2 = comparable.compareTo(((zzgsw) this.f19610p.get(i11)).c());
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
        Object value = ((zzgsw) this.f19610p.remove(i10)).getValue();
        if (!this.f19611q.isEmpty()) {
            Iterator it = o().entrySet().iterator();
            List list = this.f19610p;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new zzgsw(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return value;
    }

    private final SortedMap o() {
        p();
        if (this.f19611q.isEmpty() && !(this.f19611q instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f19611q = treeMap;
            this.f19614t = treeMap.descendingMap();
        }
        return (SortedMap) this.f19611q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        if (this.f19612r) {
            throw new UnsupportedOperationException();
        }
    }

    public void a() {
        if (this.f19612r) {
            return;
        }
        this.f19611q = this.f19611q.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f19611q);
        this.f19614t = this.f19614t.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f19614t);
        this.f19612r = true;
    }

    public final int b() {
        return this.f19610p.size();
    }

    public final Iterable c() {
        return this.f19611q.isEmpty() ? zzgsv.a() : this.f19611q.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        p();
        if (!this.f19610p.isEmpty()) {
            this.f19610p.clear();
        }
        if (this.f19611q.isEmpty()) {
            return;
        }
        this.f19611q.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m(comparable) >= 0 || this.f19611q.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        p();
        int iM = m(comparable);
        if (iM >= 0) {
            return ((zzgsw) this.f19610p.get(iM)).setValue(obj);
        }
        p();
        if (this.f19610p.isEmpty() && !(this.f19610p instanceof ArrayList)) {
            this.f19610p = new ArrayList(this.f19609o);
        }
        int i10 = -(iM + 1);
        if (i10 >= this.f19609o) {
            return o().put(comparable, obj);
        }
        int size = this.f19610p.size();
        int i11 = this.f19609o;
        if (size == i11) {
            zzgsw zzgswVar = (zzgsw) this.f19610p.remove(i11 - 1);
            o().put(zzgswVar.c(), zzgswVar.getValue());
        }
        this.f19610p.add(i10, new zzgsw(this, comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f19613s == null) {
            this.f19613s = new zzgta(this, null);
        }
        return this.f19613s;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgtc)) {
            return super.equals(obj);
        }
        zzgtc zzgtcVar = (zzgtc) obj;
        int size = size();
        if (size != zzgtcVar.size()) {
            return false;
        }
        int iB = b();
        if (iB != zzgtcVar.b()) {
            return entrySet().equals(zzgtcVar.entrySet());
        }
        for (int i10 = 0; i10 < iB; i10++) {
            if (!h(i10).equals(zzgtcVar.h(i10))) {
                return false;
            }
        }
        if (iB != size) {
            return this.f19611q.equals(zzgtcVar.f19611q);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iM = m(comparable);
        return iM >= 0 ? ((zzgsw) this.f19610p.get(iM)).getValue() : this.f19611q.get(comparable);
    }

    public final Map.Entry h(int i10) {
        return (Map.Entry) this.f19610p.get(i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iB = b();
        int iHashCode = 0;
        for (int i10 = 0; i10 < iB; i10++) {
            iHashCode += ((zzgsw) this.f19610p.get(i10)).hashCode();
        }
        return this.f19611q.size() > 0 ? iHashCode + this.f19611q.hashCode() : iHashCode;
    }

    public final boolean l() {
        return this.f19612r;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        p();
        Comparable comparable = (Comparable) obj;
        int iM = m(comparable);
        if (iM >= 0) {
            return n(iM);
        }
        if (this.f19611q.isEmpty()) {
            return null;
        }
        return this.f19611q.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f19610p.size() + this.f19611q.size();
    }
}
