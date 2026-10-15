package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbh extends zzaw {
    protected zzbh() {
        this.f23293a.add(zzbl.FOR_IN);
        this.f23293a.add(zzbl.FOR_IN_CONST);
        this.f23293a.add(zzbl.FOR_IN_LET);
        this.f23293a.add(zzbl.FOR_LET);
        this.f23293a.add(zzbl.FOR_OF);
        this.f23293a.add(zzbl.FOR_OF_CONST);
        this.f23293a.add(zzbl.FOR_OF_LET);
        this.f23293a.add(zzbl.WHILE);
    }

    private static zzap c(zzbf zzbfVar, Iterator it, zzap zzapVar) {
        if (it != null) {
            while (it.hasNext()) {
                zzap zzapVarC = zzbfVar.a((zzap) it.next()).c((zzae) zzapVar);
                if (zzapVarC instanceof zzag) {
                    zzag zzagVar = (zzag) zzapVarC;
                    if ("break".equals(zzagVar.b())) {
                        return zzap.f23278d;
                    }
                    if ("return".equals(zzagVar.b())) {
                        return zzagVar;
                    }
                }
            }
        }
        return zzap.f23278d;
    }

    private static zzap d(zzbf zzbfVar, zzap zzapVar, zzap zzapVar2) {
        return c(zzbfVar, zzapVar.j(), zzapVar2);
    }

    private static zzap e(zzbf zzbfVar, zzap zzapVar, zzap zzapVar2) {
        if (zzapVar instanceof Iterable) {
            return c(zzbfVar, ((Iterable) zzapVar).iterator(), zzapVar2);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap a(String str, zzg zzgVar, List list) {
        zzbl zzblVar = zzbl.ADD;
        int iOrdinal = zzh.e(str).ordinal();
        if (iOrdinal == 65) {
            zzh.h(zzbl.WHILE.name(), 4, list);
            zzap zzapVar = (zzap) list.get(0);
            zzap zzapVar2 = (zzap) list.get(1);
            zzap zzapVar3 = (zzap) list.get(2);
            zzap zzapVarB = zzgVar.b((zzap) list.get(3));
            if (zzgVar.b(zzapVar3).e().booleanValue()) {
                zzap zzapVarC = zzgVar.c((zzae) zzapVarB);
                if (zzapVarC instanceof zzag) {
                    zzag zzagVar = (zzag) zzapVarC;
                    if ("break".equals(zzagVar.b())) {
                        return zzap.f23278d;
                    }
                    if ("return".equals(zzagVar.b())) {
                        return zzagVar;
                    }
                }
            }
            while (zzgVar.b(zzapVar).e().booleanValue()) {
                zzap zzapVarC2 = zzgVar.c((zzae) zzapVarB);
                if (zzapVarC2 instanceof zzag) {
                    zzag zzagVar2 = (zzag) zzapVarC2;
                    if ("break".equals(zzagVar2.b())) {
                        return zzap.f23278d;
                    }
                    if ("return".equals(zzagVar2.b())) {
                        return zzagVar2;
                    }
                }
                zzgVar.b(zzapVar2);
            }
            return zzap.f23278d;
        }
        switch (iOrdinal) {
            case 26:
                zzh.h(zzbl.FOR_IN.name(), 3, list);
                if (!(list.get(0) instanceof zzat)) {
                    throw new IllegalArgumentException("Variable name in FOR_IN must be a string");
                }
                String strG = ((zzap) list.get(0)).g();
                return d(new zzbg(zzgVar, strG), zzgVar.b((zzap) list.get(1)), zzgVar.b((zzap) list.get(2)));
            case 27:
                zzh.h(zzbl.FOR_IN_CONST.name(), 3, list);
                if (!(list.get(0) instanceof zzat)) {
                    throw new IllegalArgumentException("Variable name in FOR_IN_CONST must be a string");
                }
                String strG2 = ((zzap) list.get(0)).g();
                return d(new zzbd(zzgVar, strG2), zzgVar.b((zzap) list.get(1)), zzgVar.b((zzap) list.get(2)));
            case 28:
                zzh.h(zzbl.FOR_IN_LET.name(), 3, list);
                if (!(list.get(0) instanceof zzat)) {
                    throw new IllegalArgumentException("Variable name in FOR_IN_LET must be a string");
                }
                String strG3 = ((zzap) list.get(0)).g();
                return d(new zzbe(zzgVar, strG3), zzgVar.b((zzap) list.get(1)), zzgVar.b((zzap) list.get(2)));
            case 29:
                zzh.h(zzbl.FOR_LET.name(), 4, list);
                zzap zzapVarB2 = zzgVar.b((zzap) list.get(0));
                if (!(zzapVarB2 instanceof zzae)) {
                    throw new IllegalArgumentException("Initializer variables in FOR_LET must be an ArrayList");
                }
                zzae zzaeVar = (zzae) zzapVarB2;
                zzap zzapVar4 = (zzap) list.get(1);
                zzap zzapVar5 = (zzap) list.get(2);
                zzap zzapVarB3 = zzgVar.b((zzap) list.get(3));
                zzg zzgVarA = zzgVar.a();
                for (int i10 = 0; i10 < zzaeVar.l(); i10++) {
                    String strG4 = zzaeVar.m(i10).g();
                    zzgVarA.g(strG4, zzgVar.d(strG4));
                }
                while (zzgVar.b(zzapVar4).e().booleanValue()) {
                    zzap zzapVarC3 = zzgVar.c((zzae) zzapVarB3);
                    if (zzapVarC3 instanceof zzag) {
                        zzag zzagVar3 = (zzag) zzapVarC3;
                        if ("break".equals(zzagVar3.b())) {
                            return zzap.f23278d;
                        }
                        if ("return".equals(zzagVar3.b())) {
                            return zzagVar3;
                        }
                    }
                    zzg zzgVarA2 = zzgVar.a();
                    for (int i11 = 0; i11 < zzaeVar.l(); i11++) {
                        String strG5 = zzaeVar.m(i11).g();
                        zzgVarA2.g(strG5, zzgVarA.d(strG5));
                    }
                    zzgVarA2.b(zzapVar5);
                    zzgVarA = zzgVarA2;
                }
                return zzap.f23278d;
            case 30:
                zzh.h(zzbl.FOR_OF.name(), 3, list);
                if (!(list.get(0) instanceof zzat)) {
                    throw new IllegalArgumentException("Variable name in FOR_OF must be a string");
                }
                String strG6 = ((zzap) list.get(0)).g();
                return e(new zzbg(zzgVar, strG6), zzgVar.b((zzap) list.get(1)), zzgVar.b((zzap) list.get(2)));
            case 31:
                zzh.h(zzbl.FOR_OF_CONST.name(), 3, list);
                if (!(list.get(0) instanceof zzat)) {
                    throw new IllegalArgumentException("Variable name in FOR_OF_CONST must be a string");
                }
                String strG7 = ((zzap) list.get(0)).g();
                return e(new zzbd(zzgVar, strG7), zzgVar.b((zzap) list.get(1)), zzgVar.b((zzap) list.get(2)));
            case 32:
                zzh.h(zzbl.FOR_OF_LET.name(), 3, list);
                if (!(list.get(0) instanceof zzat)) {
                    throw new IllegalArgumentException("Variable name in FOR_OF_LET must be a string");
                }
                String strG8 = ((zzap) list.get(0)).g();
                return e(new zzbe(zzgVar, strG8), zzgVar.b((zzap) list.get(1)), zzgVar.b((zzap) list.get(2)));
            default:
                return super.b(str);
        }
    }
}
