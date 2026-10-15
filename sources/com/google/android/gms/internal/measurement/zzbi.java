package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbi extends zzaw {
    protected zzbi() {
        this.f23293a.add(zzbl.ADD);
        this.f23293a.add(zzbl.DIVIDE);
        this.f23293a.add(zzbl.MODULUS);
        this.f23293a.add(zzbl.MULTIPLY);
        this.f23293a.add(zzbl.NEGATE);
        this.f23293a.add(zzbl.POST_DECREMENT);
        this.f23293a.add(zzbl.POST_INCREMENT);
        this.f23293a.add(zzbl.PRE_DECREMENT);
        this.f23293a.add(zzbl.PRE_INCREMENT);
        this.f23293a.add(zzbl.SUBTRACT);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap a(String str, zzg zzgVar, List list) {
        zzbl zzblVar = zzbl.ADD;
        int iOrdinal = zzh.e(str).ordinal();
        if (iOrdinal == 0) {
            zzh.h(zzblVar.name(), 2, list);
            zzap zzapVarB = zzgVar.b((zzap) list.get(0));
            zzap zzapVarB2 = zzgVar.b((zzap) list.get(1));
            return ((zzapVarB instanceof zzal) || (zzapVarB instanceof zzat) || (zzapVarB2 instanceof zzal) || (zzapVarB2 instanceof zzat)) ? new zzat(String.valueOf(zzapVarB.g()).concat(String.valueOf(zzapVarB2.g()))) : new zzah(Double.valueOf(zzapVarB.f().doubleValue() + zzapVarB2.f().doubleValue()));
        }
        if (iOrdinal == 21) {
            zzh.h(zzbl.DIVIDE.name(), 2, list);
            return new zzah(Double.valueOf(zzgVar.b((zzap) list.get(0)).f().doubleValue() / zzgVar.b((zzap) list.get(1)).f().doubleValue()));
        }
        if (iOrdinal == 59) {
            zzh.h(zzbl.SUBTRACT.name(), 2, list);
            return new zzah(Double.valueOf(zzgVar.b((zzap) list.get(0)).f().doubleValue() + new zzah(Double.valueOf(-zzgVar.b((zzap) list.get(1)).f().doubleValue())).f().doubleValue()));
        }
        if (iOrdinal == 52 || iOrdinal == 53) {
            zzh.h(str, 2, list);
            zzap zzapVarB3 = zzgVar.b((zzap) list.get(0));
            zzgVar.b((zzap) list.get(1));
            return zzapVarB3;
        }
        if (iOrdinal == 55 || iOrdinal == 56) {
            zzh.h(str, 1, list);
            return zzgVar.b((zzap) list.get(0));
        }
        switch (iOrdinal) {
            case 44:
                zzh.h(zzbl.MODULUS.name(), 2, list);
                return new zzah(Double.valueOf(zzgVar.b((zzap) list.get(0)).f().doubleValue() % zzgVar.b((zzap) list.get(1)).f().doubleValue()));
            case 45:
                zzh.h(zzbl.MULTIPLY.name(), 2, list);
                return new zzah(Double.valueOf(zzgVar.b((zzap) list.get(0)).f().doubleValue() * zzgVar.b((zzap) list.get(1)).f().doubleValue()));
            case 46:
                zzh.h(zzbl.NEGATE.name(), 1, list);
                return new zzah(Double.valueOf(-zzgVar.b((zzap) list.get(0)).f().doubleValue()));
            default:
                return super.b(str);
        }
    }
}
