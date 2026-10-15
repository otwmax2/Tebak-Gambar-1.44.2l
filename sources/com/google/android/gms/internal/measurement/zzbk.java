package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbk extends zzaw {
    protected zzbk() {
        this.f23293a.add(zzbl.ASSIGN);
        this.f23293a.add(zzbl.CONST);
        this.f23293a.add(zzbl.CREATE_ARRAY);
        this.f23293a.add(zzbl.CREATE_OBJECT);
        this.f23293a.add(zzbl.EXPRESSION_LIST);
        this.f23293a.add(zzbl.GET);
        this.f23293a.add(zzbl.GET_INDEX);
        this.f23293a.add(zzbl.GET_PROPERTY);
        this.f23293a.add(zzbl.NULL);
        this.f23293a.add(zzbl.SET_PROPERTY);
        this.f23293a.add(zzbl.TYPEOF);
        this.f23293a.add(zzbl.UNDEFINED);
        this.f23293a.add(zzbl.VAR);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap a(String str, zzg zzgVar, List list) {
        String str2;
        zzbl zzblVar = zzbl.ADD;
        int iOrdinal = zzh.e(str).ordinal();
        int i10 = 0;
        if (iOrdinal == 3) {
            zzh.h(zzbl.ASSIGN.name(), 2, list);
            zzap zzapVarB = zzgVar.b((zzap) list.get(0));
            if (!(zzapVarB instanceof zzat)) {
                throw new IllegalArgumentException(String.format("Expected string for assign var. got %s", zzapVarB.getClass().getCanonicalName()));
            }
            if (!zzgVar.h(zzapVarB.g())) {
                throw new IllegalArgumentException(String.format("Attempting to assign undefined value %s", zzapVarB.g()));
            }
            zzap zzapVarB2 = zzgVar.b((zzap) list.get(1));
            zzgVar.g(zzapVarB.g(), zzapVarB2);
            return zzapVarB2;
        }
        if (iOrdinal == 14) {
            zzh.i(zzbl.CONST.name(), 2, list);
            if (list.size() % 2 != 0) {
                throw new IllegalArgumentException(String.format("CONST requires an even number of arguments, found %s", Integer.valueOf(list.size())));
            }
            for (int i11 = 0; i11 < list.size() - 1; i11 += 2) {
                zzap zzapVarB3 = zzgVar.b((zzap) list.get(i11));
                if (!(zzapVarB3 instanceof zzat)) {
                    throw new IllegalArgumentException(String.format("Expected string for const name. got %s", zzapVarB3.getClass().getCanonicalName()));
                }
                zzgVar.f(zzapVarB3.g(), zzgVar.b((zzap) list.get(i11 + 1)));
            }
            return zzap.f23278d;
        }
        if (iOrdinal == 24) {
            zzh.i(zzbl.EXPRESSION_LIST.name(), 1, list);
            zzap zzapVarB4 = zzap.f23278d;
            while (i10 < list.size()) {
                zzapVarB4 = zzgVar.b((zzap) list.get(i10));
                if (zzapVarB4 instanceof zzag) {
                    throw new IllegalStateException("ControlValue cannot be in an expression list");
                }
                i10++;
            }
            return zzapVarB4;
        }
        if (iOrdinal == 33) {
            zzh.h(zzbl.GET.name(), 1, list);
            zzap zzapVarB5 = zzgVar.b((zzap) list.get(0));
            if (zzapVarB5 instanceof zzat) {
                return zzgVar.d(zzapVarB5.g());
            }
            throw new IllegalArgumentException(String.format("Expected string for get var. got %s", zzapVarB5.getClass().getCanonicalName()));
        }
        if (iOrdinal == 49) {
            zzh.h(zzbl.NULL.name(), 0, list);
            return zzap.f23279e;
        }
        if (iOrdinal == 58) {
            zzh.h(zzbl.SET_PROPERTY.name(), 3, list);
            zzap zzapVarB6 = zzgVar.b((zzap) list.get(0));
            zzap zzapVarB7 = zzgVar.b((zzap) list.get(1));
            zzap zzapVarB8 = zzgVar.b((zzap) list.get(2));
            if (zzapVarB6 == zzap.f23278d || zzapVarB6 == zzap.f23279e) {
                throw new IllegalStateException(String.format("Can't set property %s of %s", zzapVarB7.g(), zzapVarB6.g()));
            }
            if ((zzapVarB6 instanceof zzae) && (zzapVarB7 instanceof zzah)) {
                ((zzae) zzapVarB6).t(zzapVarB7.f().intValue(), zzapVarB8);
            } else if (zzapVarB6 instanceof zzal) {
                ((zzal) zzapVarB6).i(zzapVarB7.g(), zzapVarB8);
            }
            return zzapVarB8;
        }
        if (iOrdinal == 17) {
            if (list.isEmpty()) {
                return new zzae();
            }
            zzae zzaeVar = new zzae();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzap zzapVarB9 = zzgVar.b((zzap) it.next());
                if (zzapVarB9 instanceof zzag) {
                    throw new IllegalStateException("Failed to evaluate array element");
                }
                zzaeVar.t(i10, zzapVarB9);
                i10++;
            }
            return zzaeVar;
        }
        if (iOrdinal == 18) {
            if (list.isEmpty()) {
                return new zzam();
            }
            if (list.size() % 2 != 0) {
                throw new IllegalArgumentException(String.format("CREATE_OBJECT requires an even number of arguments, found %s", Integer.valueOf(list.size())));
            }
            zzam zzamVar = new zzam();
            while (i10 < list.size() - 1) {
                zzap zzapVarB10 = zzgVar.b((zzap) list.get(i10));
                zzap zzapVarB11 = zzgVar.b((zzap) list.get(i10 + 1));
                if ((zzapVarB10 instanceof zzag) || (zzapVarB11 instanceof zzag)) {
                    throw new IllegalStateException("Failed to evaluate map entry");
                }
                zzamVar.i(zzapVarB10.g(), zzapVarB11);
                i10 += 2;
            }
            return zzamVar;
        }
        if (iOrdinal == 35 || iOrdinal == 36) {
            zzh.h(zzbl.GET_PROPERTY.name(), 2, list);
            zzap zzapVarB12 = zzgVar.b((zzap) list.get(0));
            zzap zzapVarB13 = zzgVar.b((zzap) list.get(1));
            if ((zzapVarB12 instanceof zzae) && zzh.k(zzapVarB13)) {
                return ((zzae) zzapVarB12).m(zzapVarB13.f().intValue());
            }
            if (zzapVarB12 instanceof zzal) {
                return ((zzal) zzapVarB12).I(zzapVarB13.g());
            }
            if (zzapVarB12 instanceof zzat) {
                if ("length".equals(zzapVarB13.g())) {
                    return new zzah(Double.valueOf(zzapVarB12.g().length()));
                }
                if (zzh.k(zzapVarB13) && zzapVarB13.f().doubleValue() < zzapVarB12.g().length()) {
                    return new zzat(String.valueOf(zzapVarB12.g().charAt(zzapVarB13.f().intValue())));
                }
            }
            return zzap.f23278d;
        }
        switch (iOrdinal) {
            case 62:
                zzh.h(zzbl.TYPEOF.name(), 1, list);
                zzap zzapVarB14 = zzgVar.b((zzap) list.get(0));
                if (zzapVarB14 instanceof zzau) {
                    str2 = "undefined";
                } else if (zzapVarB14 instanceof zzaf) {
                    str2 = "boolean";
                } else if (zzapVarB14 instanceof zzah) {
                    str2 = "number";
                } else if (zzapVarB14 instanceof zzat) {
                    str2 = "string";
                } else if (zzapVarB14 instanceof zzao) {
                    str2 = "function";
                } else {
                    if ((zzapVarB14 instanceof zzaq) || (zzapVarB14 instanceof zzag)) {
                        throw new IllegalArgumentException(String.format("Unsupported value type %s in typeof", zzapVarB14));
                    }
                    str2 = "object";
                }
                return new zzat(str2);
            case 63:
                zzh.h(zzbl.UNDEFINED.name(), 0, list);
                return zzap.f23278d;
            case 64:
                zzh.i(zzbl.VAR.name(), 1, list);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    zzap zzapVarB15 = zzgVar.b((zzap) it2.next());
                    if (!(zzapVarB15 instanceof zzat)) {
                        throw new IllegalArgumentException(String.format("Expected string for var name. got %s", zzapVarB15.getClass().getCanonicalName()));
                    }
                    zzgVar.e(zzapVarB15.g(), zzap.f23278d);
                }
                return zzap.f23278d;
            default:
                return super.b(str);
        }
    }
}
