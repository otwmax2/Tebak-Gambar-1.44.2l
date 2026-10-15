package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzao extends zzai {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected final List f23275q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected final List f23276r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected zzg f23277s;

    private zzao(zzao zzaoVar) {
        super(zzaoVar.f23271o);
        ArrayList arrayList = new ArrayList(zzaoVar.f23275q.size());
        this.f23275q = arrayList;
        arrayList.addAll(zzaoVar.f23275q);
        ArrayList arrayList2 = new ArrayList(zzaoVar.f23276r.size());
        this.f23276r = arrayList2;
        arrayList2.addAll(zzaoVar.f23276r);
        this.f23277s = zzaoVar.f23277s;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap a(zzg zzgVar, List list) {
        zzg zzgVarA = this.f23277s.a();
        for (int i10 = 0; i10 < this.f23275q.size(); i10++) {
            if (i10 < list.size()) {
                zzgVarA.e((String) this.f23275q.get(i10), zzgVar.b((zzap) list.get(i10)));
            } else {
                zzgVarA.e((String) this.f23275q.get(i10), zzap.f23278d);
            }
        }
        for (zzap zzapVar : this.f23276r) {
            zzap zzapVarB = zzgVarA.b(zzapVar);
            if (zzapVarB instanceof zzaq) {
                zzapVarB = zzgVarA.b(zzapVar);
            }
            if (zzapVarB instanceof zzag) {
                return ((zzag) zzapVarB).a();
            }
        }
        return zzap.f23278d;
    }

    @Override // com.google.android.gms.internal.measurement.zzai, com.google.android.gms.internal.measurement.zzap
    public final zzap d() {
        return new zzao(this);
    }

    public zzao(String str, List list, List list2, zzg zzgVar) {
        super(str);
        this.f23275q = new ArrayList();
        this.f23277s = zzgVar;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.f23275q.add(((zzap) it.next()).g());
            }
        }
        this.f23276r = new ArrayList(list2);
    }
}
