package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
public final class zzae implements Iterable, zzap, zzal {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final SortedMap f23265o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final Map f23266p;

    public zzae() {
        this.f23265o = new TreeMap();
        this.f23266p = new TreeMap();
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final zzap I(String str) {
        zzap zzapVar;
        return "length".equals(str) ? new zzah(Double.valueOf(l())) : (!z0(str) || (zzapVar = (zzap) this.f23266p.get(str)) == null) ? zzap.f23278d : zzapVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap c(String str, zzg zzgVar, List list) {
        return ("concat".equals(str) || "every".equals(str) || "filter".equals(str) || "forEach".equals(str) || "indexOf".equals(str) || "join".equals(str) || "lastIndexOf".equals(str) || "map".equals(str) || "pop".equals(str) || "push".equals(str) || "reduce".equals(str) || "reduceRight".equals(str) || "reverse".equals(str) || "shift".equals(str) || "slice".equals(str) || "some".equals(str) || "sort".equals(str) || "splice".equals(str) || "toString".equals(str) || "unshift".equals(str)) ? zzbb.a(str, this, zzgVar, list) : zzaj.a(this, new zzat(str), zzgVar, list);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap d() {
        zzae zzaeVar = new zzae();
        for (Map.Entry entry : this.f23265o.entrySet()) {
            if (entry.getValue() instanceof zzal) {
                zzaeVar.f23265o.put((Integer) entry.getKey(), (zzap) entry.getValue());
            } else {
                zzaeVar.f23265o.put((Integer) entry.getKey(), ((zzap) entry.getValue()).d());
            }
        }
        return zzaeVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean e() {
        return Boolean.TRUE;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzae)) {
            return false;
        }
        zzae zzaeVar = (zzae) obj;
        if (l() != zzaeVar.l()) {
            return false;
        }
        if (this.f23265o.isEmpty()) {
            return zzaeVar.f23265o.isEmpty();
        }
        for (int iIntValue = ((Integer) this.f23265o.firstKey()).intValue(); iIntValue <= ((Integer) this.f23265o.lastKey()).intValue(); iIntValue++) {
            if (!m(iIntValue).equals(zzaeVar.m(iIntValue))) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double f() {
        return this.f23265o.size() == 1 ? m(0).f() : this.f23265o.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String g() {
        return n(",");
    }

    public final int hashCode() {
        return this.f23265o.hashCode() * 31;
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final void i(String str, zzap zzapVar) {
        if (zzapVar == null) {
            this.f23266p.remove(str);
        } else {
            this.f23266p.put(str, zzapVar);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new zzad(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator j() {
        return new zzac(this, this.f23265o.keySet().iterator(), this.f23266p.keySet().iterator());
    }

    public final int k() {
        return this.f23265o.size();
    }

    public final int l() {
        if (this.f23265o.isEmpty()) {
            return 0;
        }
        return ((Integer) this.f23265o.lastKey()).intValue() + 1;
    }

    public final zzap m(int i10) {
        zzap zzapVar;
        if (i10 < l()) {
            return (!u(i10) || (zzapVar = (zzap) this.f23265o.get(Integer.valueOf(i10))) == null) ? zzap.f23278d : zzapVar;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }

    public final String n(String str) {
        if (str == null) {
            str = BuildConfig.FLAVOR;
        }
        StringBuilder sb = new StringBuilder();
        if (!this.f23265o.isEmpty()) {
            for (int i10 = 0; i10 < l(); i10++) {
                zzap zzapVarM = m(i10);
                sb.append(str);
                if (!(zzapVarM instanceof zzau) && !(zzapVarM instanceof zzan)) {
                    sb.append(zzapVarM.g());
                }
            }
            sb.delete(0, str.length());
        }
        return sb.toString();
    }

    public final Iterator o() {
        return this.f23265o.keySet().iterator();
    }

    public final List p() {
        ArrayList arrayList = new ArrayList(l());
        for (int i10 = 0; i10 < l(); i10++) {
            arrayList.add(m(i10));
        }
        return arrayList;
    }

    public final void q() {
        this.f23265o.clear();
    }

    public final void r(int i10, zzap zzapVar) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Invalid value index: " + i10);
        }
        if (i10 >= l()) {
            t(i10, zzapVar);
            return;
        }
        for (int iIntValue = ((Integer) this.f23265o.lastKey()).intValue(); iIntValue >= i10; iIntValue--) {
            SortedMap sortedMap = this.f23265o;
            Integer numValueOf = Integer.valueOf(iIntValue);
            zzap zzapVar2 = (zzap) sortedMap.get(numValueOf);
            if (zzapVar2 != null) {
                t(iIntValue + 1, zzapVar2);
                this.f23265o.remove(numValueOf);
            }
        }
        t(i10, zzapVar);
    }

    public final void s(int i10) {
        int iIntValue = ((Integer) this.f23265o.lastKey()).intValue();
        if (i10 > iIntValue || i10 < 0) {
            return;
        }
        this.f23265o.remove(Integer.valueOf(i10));
        if (i10 == iIntValue) {
            SortedMap sortedMap = this.f23265o;
            int i11 = i10 - 1;
            Integer numValueOf = Integer.valueOf(i11);
            if (sortedMap.containsKey(numValueOf) || i11 < 0) {
                return;
            }
            this.f23265o.put(numValueOf, zzap.f23278d);
            return;
        }
        while (true) {
            i10++;
            if (i10 > ((Integer) this.f23265o.lastKey()).intValue()) {
                return;
            }
            SortedMap sortedMap2 = this.f23265o;
            Integer numValueOf2 = Integer.valueOf(i10);
            zzap zzapVar = (zzap) sortedMap2.get(numValueOf2);
            if (zzapVar != null) {
                this.f23265o.put(Integer.valueOf(i10 - 1), zzapVar);
                this.f23265o.remove(numValueOf2);
            }
        }
    }

    @RequiresNonNull({"elements"})
    public final void t(int i10, zzap zzapVar) {
        if (i10 > 32468) {
            throw new IllegalStateException("Array too large");
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Out of bounds index: " + i10);
        }
        if (zzapVar == null) {
            this.f23265o.remove(Integer.valueOf(i10));
        } else {
            this.f23265o.put(Integer.valueOf(i10), zzapVar);
        }
    }

    public final String toString() {
        return n(",");
    }

    public final boolean u(int i10) {
        if (i10 >= 0 && i10 <= ((Integer) this.f23265o.lastKey()).intValue()) {
            return this.f23265o.containsKey(Integer.valueOf(i10));
        }
        throw new IndexOutOfBoundsException("Out of bounds index: " + i10);
    }

    @Override // com.google.android.gms.internal.measurement.zzal
    public final boolean z0(String str) {
        return "length".equals(str) || this.f23266p.containsKey(str);
    }

    public zzae(List list) {
        this();
        if (list != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                t(i10, (zzap) list.get(i10));
            }
        }
    }
}
