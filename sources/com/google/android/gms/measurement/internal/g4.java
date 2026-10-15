package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzgh;
import com.google.android.gms.internal.measurement.zzoi;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class g4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f24105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f24106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzgh f24107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BitSet f24108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BitSet f24109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map f24110f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map f24111g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final /* synthetic */ l4 f24112h;

    /* synthetic */ g4(l4 l4Var, String str, zzs zzsVar) {
        this.f24112h = l4Var;
        this.f24105a = str;
        this.f24106b = true;
        this.f24108d = new BitSet();
        this.f24109e = new BitSet();
        this.f24110f = new o.a();
        this.f24111g = new o.a();
    }

    final zzfo a(int i10) {
        ArrayList arrayList;
        List listEmptyList;
        zzfn zzfnVarV = zzfo.v();
        zzfnVarV.r(i10);
        zzfnVarV.t(this.f24106b);
        zzgh zzghVar = this.f24107c;
        if (zzghVar != null) {
            zzfnVarV.u(zzghVar);
        }
        com.google.android.gms.internal.measurement.zzgg zzggVarZ = zzgh.z();
        zzggVarZ.s(zzlk.F(this.f24108d));
        zzggVarZ.u(zzlk.F(this.f24109e));
        Map map = this.f24110f;
        if (map == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(map.size());
            Iterator it = this.f24110f.keySet().iterator();
            while (it.hasNext()) {
                int iIntValue = ((Integer) it.next()).intValue();
                Long l10 = (Long) this.f24110f.get(Integer.valueOf(iIntValue));
                if (l10 != null) {
                    com.google.android.gms.internal.measurement.zzfp zzfpVarW = com.google.android.gms.internal.measurement.zzfq.w();
                    zzfpVarW.s(iIntValue);
                    zzfpVarW.r(l10.longValue());
                    arrayList2.add((com.google.android.gms.internal.measurement.zzfq) zzfpVarW.o());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            zzggVarZ.r(arrayList);
        }
        Map map2 = this.f24111g;
        if (map2 == null) {
            listEmptyList = Collections.emptyList();
        } else {
            ArrayList arrayList3 = new ArrayList(map2.size());
            for (Integer num : this.f24111g.keySet()) {
                com.google.android.gms.internal.measurement.zzgi zzgiVarX = com.google.android.gms.internal.measurement.zzgj.x();
                zzgiVarX.s(num.intValue());
                List list = (List) this.f24111g.get(num);
                if (list != null) {
                    Collections.sort(list);
                    zzgiVarX.r(list);
                }
                arrayList3.add((com.google.android.gms.internal.measurement.zzgj) zzgiVarX.o());
            }
            listEmptyList = arrayList3;
        }
        zzggVarZ.t(listEmptyList);
        zzfnVarV.s(zzggVarZ);
        return (zzfo) zzfnVarV.o();
    }

    final void c(j4 j4Var) {
        int iA = j4Var.a();
        Boolean bool = j4Var.f24173c;
        if (bool != null) {
            this.f24109e.set(iA, bool.booleanValue());
        }
        Boolean bool2 = j4Var.f24174d;
        if (bool2 != null) {
            this.f24108d.set(iA, bool2.booleanValue());
        }
        if (j4Var.f24175e != null) {
            Map map = this.f24110f;
            Integer numValueOf = Integer.valueOf(iA);
            Long l10 = (Long) map.get(numValueOf);
            long jLongValue = j4Var.f24175e.longValue() / 1000;
            if (l10 == null || jLongValue > l10.longValue()) {
                this.f24110f.put(numValueOf, Long.valueOf(jLongValue));
            }
        }
        if (j4Var.f24176f != null) {
            Map map2 = this.f24111g;
            Integer numValueOf2 = Integer.valueOf(iA);
            List arrayList = (List) map2.get(numValueOf2);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.f24111g.put(numValueOf2, arrayList);
            }
            if (j4Var.c()) {
                arrayList.clear();
            }
            zzoi.b();
            zzaf zzafVarV = this.f24112h.f24394a.v();
            String str = this.f24105a;
            zzek zzekVar = zzel.Z;
            if (zzafVarV.y(str, zzekVar) && j4Var.b()) {
                arrayList.clear();
            }
            zzoi.b();
            if (!this.f24112h.f24394a.v().y(this.f24105a, zzekVar)) {
                arrayList.add(Long.valueOf(j4Var.f24176f.longValue() / 1000));
                return;
            }
            Long lValueOf = Long.valueOf(j4Var.f24176f.longValue() / 1000);
            if (arrayList.contains(lValueOf)) {
                return;
            }
            arrayList.add(lValueOf);
        }
    }

    /* synthetic */ g4(l4 l4Var, String str, zzgh zzghVar, BitSet bitSet, BitSet bitSet2, Map map, Map map2, zzs zzsVar) {
        this.f24112h = l4Var;
        this.f24105a = str;
        this.f24108d = bitSet;
        this.f24109e = bitSet2;
        this.f24110f = map;
        this.f24111g = new o.a();
        for (Integer num : map2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.f24111g.put(num, arrayList);
        }
        this.f24106b = false;
        this.f24107c = zzghVar;
    }
}
