package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzav extends zzaw {
    public zzav() {
        this.f23293a.add(zzbl.BITWISE_AND);
        this.f23293a.add(zzbl.BITWISE_LEFT_SHIFT);
        this.f23293a.add(zzbl.BITWISE_NOT);
        this.f23293a.add(zzbl.BITWISE_OR);
        this.f23293a.add(zzbl.BITWISE_RIGHT_SHIFT);
        this.f23293a.add(zzbl.BITWISE_UNSIGNED_RIGHT_SHIFT);
        this.f23293a.add(zzbl.BITWISE_XOR);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap a(String str, zzg zzgVar, List list) {
        zzbl zzblVar = zzbl.ADD;
        switch (zzh.e(str).ordinal()) {
            case 4:
                zzh.h(zzbl.BITWISE_AND.name(), 2, list);
                return new zzah(Double.valueOf(zzh.b(zzgVar.b((zzap) list.get(0)).f().doubleValue()) & zzh.b(zzgVar.b((zzap) list.get(1)).f().doubleValue())));
            case 5:
                zzh.h(zzbl.BITWISE_LEFT_SHIFT.name(), 2, list);
                return new zzah(Double.valueOf(zzh.b(zzgVar.b((zzap) list.get(0)).f().doubleValue()) << ((int) (zzh.d(zzgVar.b((zzap) list.get(1)).f().doubleValue()) & 31))));
            case 6:
                zzh.h(zzbl.BITWISE_NOT.name(), 1, list);
                return new zzah(Double.valueOf(zzh.b(zzgVar.b((zzap) list.get(0)).f().doubleValue()) ^ (-1)));
            case 7:
                zzh.h(zzbl.BITWISE_OR.name(), 2, list);
                return new zzah(Double.valueOf(zzh.b(zzgVar.b((zzap) list.get(0)).f().doubleValue()) | zzh.b(zzgVar.b((zzap) list.get(1)).f().doubleValue())));
            case 8:
                zzh.h(zzbl.BITWISE_RIGHT_SHIFT.name(), 2, list);
                return new zzah(Double.valueOf(zzh.b(zzgVar.b((zzap) list.get(0)).f().doubleValue()) >> ((int) (zzh.d(zzgVar.b((zzap) list.get(1)).f().doubleValue()) & 31))));
            case 9:
                zzh.h(zzbl.BITWISE_UNSIGNED_RIGHT_SHIFT.name(), 2, list);
                return new zzah(Double.valueOf(zzh.d(zzgVar.b((zzap) list.get(0)).f().doubleValue()) >>> ((int) (zzh.d(zzgVar.b((zzap) list.get(1)).f().doubleValue()) & 31))));
            case 10:
                zzh.h(zzbl.BITWISE_XOR.name(), 2, list);
                return new zzah(Double.valueOf(zzh.b(zzgVar.b((zzap) list.get(0)).f().doubleValue()) ^ zzh.b(zzgVar.b((zzap) list.get(1)).f().doubleValue())));
            default:
                return super.b(str);
        }
    }
}
