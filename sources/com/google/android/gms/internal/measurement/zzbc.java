package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbc extends zzaw {
    protected zzbc() {
        this.f23293a.add(zzbl.AND);
        this.f23293a.add(zzbl.NOT);
        this.f23293a.add(zzbl.OR);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap a(String str, zzg zzgVar, List list) {
        zzbl zzblVar = zzbl.ADD;
        int iOrdinal = zzh.e(str).ordinal();
        if (iOrdinal == 1) {
            zzh.h(zzbl.AND.name(), 2, list);
            zzap zzapVarB = zzgVar.b((zzap) list.get(0));
            return !zzapVarB.e().booleanValue() ? zzapVarB : zzgVar.b((zzap) list.get(1));
        }
        if (iOrdinal == 47) {
            zzh.h(zzbl.NOT.name(), 1, list);
            return new zzaf(Boolean.valueOf(!zzgVar.b((zzap) list.get(0)).e().booleanValue()));
        }
        if (iOrdinal != 50) {
            return super.b(str);
        }
        zzh.h(zzbl.OR.name(), 2, list);
        zzap zzapVarB2 = zzgVar.b((zzap) list.get(0));
        return zzapVarB2.e().booleanValue() ? zzapVarB2 : zzgVar.b((zzap) list.get(1));
    }
}
