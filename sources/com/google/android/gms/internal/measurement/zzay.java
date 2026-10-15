package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzay extends zzaw {
    public zzay() {
        this.f23293a.add(zzbl.EQUALS);
        this.f23293a.add(zzbl.GREATER_THAN);
        this.f23293a.add(zzbl.GREATER_THAN_EQUALS);
        this.f23293a.add(zzbl.IDENTITY_EQUALS);
        this.f23293a.add(zzbl.IDENTITY_NOT_EQUALS);
        this.f23293a.add(zzbl.LESS_THAN);
        this.f23293a.add(zzbl.LESS_THAN_EQUALS);
        this.f23293a.add(zzbl.NOT_EQUALS);
    }

    private static boolean c(zzap zzapVar, zzap zzapVar2) {
        if (zzapVar.getClass().equals(zzapVar2.getClass())) {
            if ((zzapVar instanceof zzau) || (zzapVar instanceof zzan)) {
                return true;
            }
            return zzapVar instanceof zzah ? (Double.isNaN(zzapVar.f().doubleValue()) || Double.isNaN(zzapVar2.f().doubleValue()) || zzapVar.f().doubleValue() != zzapVar2.f().doubleValue()) ? false : true : zzapVar instanceof zzat ? zzapVar.g().equals(zzapVar2.g()) : zzapVar instanceof zzaf ? zzapVar.e().equals(zzapVar2.e()) : zzapVar == zzapVar2;
        }
        if (((zzapVar instanceof zzau) || (zzapVar instanceof zzan)) && ((zzapVar2 instanceof zzau) || (zzapVar2 instanceof zzan))) {
            return true;
        }
        boolean z10 = zzapVar instanceof zzah;
        if (z10 && (zzapVar2 instanceof zzat)) {
            return c(zzapVar, new zzah(zzapVar2.f()));
        }
        boolean z11 = zzapVar instanceof zzat;
        if (z11 && (zzapVar2 instanceof zzah)) {
            return c(new zzah(zzapVar.f()), zzapVar2);
        }
        if (zzapVar instanceof zzaf) {
            return c(new zzah(zzapVar.f()), zzapVar2);
        }
        if (zzapVar2 instanceof zzaf) {
            return c(zzapVar, new zzah(zzapVar2.f()));
        }
        if ((z11 || z10) && (zzapVar2 instanceof zzal)) {
            return c(zzapVar, new zzat(zzapVar2.g()));
        }
        if ((zzapVar instanceof zzal) && ((zzapVar2 instanceof zzat) || (zzapVar2 instanceof zzah))) {
            return c(new zzat(zzapVar.g()), zzapVar2);
        }
        return false;
    }

    private static boolean d(zzap zzapVar, zzap zzapVar2) {
        if (zzapVar instanceof zzal) {
            zzapVar = new zzat(zzapVar.g());
        }
        if (zzapVar2 instanceof zzal) {
            zzapVar2 = new zzat(zzapVar2.g());
        }
        if ((zzapVar instanceof zzat) && (zzapVar2 instanceof zzat)) {
            return zzapVar.g().compareTo(zzapVar2.g()) < 0;
        }
        double dDoubleValue = zzapVar.f().doubleValue();
        double dDoubleValue2 = zzapVar2.f().doubleValue();
        return (Double.isNaN(dDoubleValue) || Double.isNaN(dDoubleValue2) || (dDoubleValue == 0.0d && dDoubleValue2 == 0.0d) || ((dDoubleValue == 0.0d && dDoubleValue2 == 0.0d) || Double.compare(dDoubleValue, dDoubleValue2) >= 0)) ? false : true;
    }

    private static boolean e(zzap zzapVar, zzap zzapVar2) {
        if (zzapVar instanceof zzal) {
            zzapVar = new zzat(zzapVar.g());
        }
        if (zzapVar2 instanceof zzal) {
            zzapVar2 = new zzat(zzapVar2.g());
        }
        return (((zzapVar instanceof zzat) && (zzapVar2 instanceof zzat)) || !(Double.isNaN(zzapVar.f().doubleValue()) || Double.isNaN(zzapVar2.f().doubleValue()))) && !d(zzapVar2, zzapVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap a(String str, zzg zzgVar, List list) {
        boolean zC;
        boolean zC2;
        zzh.h(zzh.e(str).name(), 2, list);
        zzap zzapVarB = zzgVar.b((zzap) list.get(0));
        zzap zzapVarB2 = zzgVar.b((zzap) list.get(1));
        int iOrdinal = zzh.e(str).ordinal();
        if (iOrdinal != 23) {
            if (iOrdinal == 48) {
                zC2 = c(zzapVarB, zzapVarB2);
            } else if (iOrdinal == 42) {
                zC = d(zzapVarB, zzapVarB2);
            } else if (iOrdinal != 43) {
                switch (iOrdinal) {
                    case 37:
                        zC = d(zzapVarB2, zzapVarB);
                        break;
                    case 38:
                        zC = e(zzapVarB2, zzapVarB);
                        break;
                    case 39:
                        zC = zzh.l(zzapVarB, zzapVarB2);
                        break;
                    case 40:
                        zC2 = zzh.l(zzapVarB, zzapVarB2);
                        break;
                    default:
                        return super.b(str);
                }
            } else {
                zC = e(zzapVarB, zzapVarB2);
            }
            zC = !zC2;
        } else {
            zC = c(zzapVarB, zzapVarB2);
        }
        return zC ? zzap.f23283i : zzap.f23284j;
    }
}
