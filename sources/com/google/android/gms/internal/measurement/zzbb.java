package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbb {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static zzap a(String str, zzae zzaeVar, zzg zzgVar, List list) {
        String str2;
        byte b10;
        String strG;
        double dMin;
        zzai zzaiVar;
        switch (str.hashCode()) {
            case -1776922004:
                str2 = "toString";
                b10 = str.equals(str2) ? (byte) 18 : (byte) -1;
                break;
            case -1354795244:
                if (str.equals("concat")) {
                    str2 = "toString";
                    b10 = 0;
                } else {
                    str2 = "toString";
                }
                break;
            case -1274492040:
                if (str.equals("filter")) {
                    str2 = "toString";
                    b10 = 2;
                } else {
                    str2 = "toString";
                }
                break;
            case -934873754:
                if (str.equals("reduce")) {
                    b10 = 10;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case -895859076:
                if (str.equals("splice")) {
                    b10 = 17;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case -678635926:
                if (str.equals("forEach")) {
                    b10 = 3;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    b10 = 6;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case -277637751:
                if (str.equals("unshift")) {
                    b10 = 19;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case 107868:
                if (str.equals("map")) {
                    b10 = 7;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case 111185:
                if (str.equals("pop")) {
                    b10 = 8;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case 3267882:
                if (str.equals("join")) {
                    b10 = 5;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case 3452698:
                if (str.equals("push")) {
                    b10 = 9;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case 3536116:
                if (str.equals("some")) {
                    b10 = 15;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case 3536286:
                if (str.equals("sort")) {
                    b10 = 16;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case 96891675:
                if (str.equals("every")) {
                    str2 = "toString";
                    b10 = 1;
                } else {
                    str2 = "toString";
                }
                break;
            case 109407362:
                if (str.equals("shift")) {
                    b10 = 13;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case 109526418:
                if (str.equals("slice")) {
                    b10 = 14;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case 965561430:
                if (str.equals("reduceRight")) {
                    b10 = 11;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case 1099846370:
                if (str.equals("reverse")) {
                    b10 = 12;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    b10 = 4;
                    str2 = "toString";
                } else {
                    str2 = "toString";
                }
                break;
            default:
                str2 = "toString";
                break;
        }
        double d10 = 0.0d;
        switch (b10) {
            case 0:
                zzap zzapVarD = zzaeVar.d();
                if (!list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        zzap zzapVarB = zzgVar.b((zzap) it.next());
                        if (zzapVarB instanceof zzag) {
                            throw new IllegalStateException("Failed evaluation of arguments");
                        }
                        zzae zzaeVar2 = (zzae) zzapVarD;
                        int iL = zzaeVar2.l();
                        if (zzapVarB instanceof zzae) {
                            zzae zzaeVar3 = (zzae) zzapVarB;
                            Iterator itO = zzaeVar3.o();
                            while (itO.hasNext()) {
                                Integer num = (Integer) itO.next();
                                zzaeVar2.t(num.intValue() + iL, zzaeVar3.m(num.intValue()));
                            }
                        } else {
                            zzaeVar2.t(iL, zzapVarB);
                        }
                    }
                }
                return zzapVarD;
            case 1:
                zzh.h("every", 1, list);
                zzap zzapVarB2 = zzgVar.b((zzap) list.get(0));
                if (!(zzapVarB2 instanceof zzao)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (zzaeVar.l() != 0 && b(zzaeVar, zzgVar, (zzao) zzapVarB2, Boolean.FALSE, Boolean.TRUE).l() != zzaeVar.l()) {
                    return zzap.f23284j;
                }
                return zzap.f23283i;
            case 2:
                zzh.h("filter", 1, list);
                zzap zzapVarB3 = zzgVar.b((zzap) list.get(0));
                if (!(zzapVarB3 instanceof zzao)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (zzaeVar.k() == 0) {
                    return new zzae();
                }
                zzap zzapVarD2 = zzaeVar.d();
                zzae zzaeVarB = b(zzaeVar, zzgVar, (zzao) zzapVarB3, null, Boolean.TRUE);
                zzae zzaeVar4 = new zzae();
                Iterator itO2 = zzaeVarB.o();
                while (itO2.hasNext()) {
                    zzaeVar4.t(zzaeVar4.l(), ((zzae) zzapVarD2).m(((Integer) itO2.next()).intValue()));
                }
                return zzaeVar4;
            case 3:
                zzh.h("forEach", 1, list);
                zzap zzapVarB4 = zzgVar.b((zzap) list.get(0));
                if (!(zzapVarB4 instanceof zzao)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (zzaeVar.k() == 0) {
                    return zzap.f23278d;
                }
                b(zzaeVar, zzgVar, (zzao) zzapVarB4, null, null);
                return zzap.f23278d;
            case 4:
                zzh.j("indexOf", 2, list);
                zzap zzapVarB5 = zzap.f23278d;
                if (!list.isEmpty()) {
                    zzapVarB5 = zzgVar.b((zzap) list.get(0));
                }
                if (list.size() > 1) {
                    double dA = zzh.a(zzgVar.b((zzap) list.get(1)).f().doubleValue());
                    if (dA >= zzaeVar.l()) {
                        return new zzah(Double.valueOf(-1.0d));
                    }
                    if (dA < 0.0d) {
                        double dL = zzaeVar.l();
                        Double.isNaN(dL);
                        d10 = dL + dA;
                    } else {
                        d10 = dA;
                    }
                }
                Iterator itO3 = zzaeVar.o();
                while (itO3.hasNext()) {
                    int iIntValue = ((Integer) itO3.next()).intValue();
                    double d11 = iIntValue;
                    if (d11 >= d10 && zzh.l(zzaeVar.m(iIntValue), zzapVarB5)) {
                        return new zzah(Double.valueOf(d11));
                    }
                }
                return new zzah(Double.valueOf(-1.0d));
            case 5:
                zzh.j("join", 1, list);
                if (zzaeVar.l() == 0) {
                    return zzap.f23285k;
                }
                if (list.isEmpty()) {
                    strG = ",";
                } else {
                    zzap zzapVarB6 = zzgVar.b((zzap) list.get(0));
                    strG = ((zzapVarB6 instanceof zzan) || (zzapVarB6 instanceof zzau)) ? BuildConfig.FLAVOR : zzapVarB6.g();
                }
                return new zzat(zzaeVar.n(strG));
            case 6:
                zzh.j("lastIndexOf", 2, list);
                zzap zzapVarB7 = zzap.f23278d;
                if (!list.isEmpty()) {
                    zzapVarB7 = zzgVar.b((zzap) list.get(0));
                }
                double dL2 = zzaeVar.l() - 1;
                if (list.size() > 1) {
                    zzap zzapVarB8 = zzgVar.b((zzap) list.get(1));
                    dL2 = Double.isNaN(zzapVarB8.f().doubleValue()) ? zzaeVar.l() - 1 : zzh.a(zzapVarB8.f().doubleValue());
                    if (dL2 < 0.0d) {
                        double dL3 = zzaeVar.l();
                        Double.isNaN(dL3);
                        dL2 += dL3;
                    }
                }
                if (dL2 < 0.0d) {
                    return new zzah(Double.valueOf(-1.0d));
                }
                for (int iMin = (int) Math.min(zzaeVar.l(), dL2); iMin >= 0; iMin--) {
                    if (zzaeVar.u(iMin) && zzh.l(zzaeVar.m(iMin), zzapVarB7)) {
                        return new zzah(Double.valueOf(iMin));
                    }
                }
                return new zzah(Double.valueOf(-1.0d));
            case 7:
                zzh.h("map", 1, list);
                zzap zzapVarB9 = zzgVar.b((zzap) list.get(0));
                if (zzapVarB9 instanceof zzao) {
                    return zzaeVar.l() == 0 ? new zzae() : b(zzaeVar, zzgVar, (zzao) zzapVarB9, null, null);
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 8:
                zzh.h("pop", 0, list);
                int iL2 = zzaeVar.l();
                if (iL2 == 0) {
                    return zzap.f23278d;
                }
                int i10 = iL2 - 1;
                zzap zzapVarM = zzaeVar.m(i10);
                zzaeVar.s(i10);
                return zzapVarM;
            case 9:
                if (!list.isEmpty()) {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        zzaeVar.t(zzaeVar.l(), zzgVar.b((zzap) it2.next()));
                    }
                }
                return new zzah(Double.valueOf(zzaeVar.l()));
            case 10:
                return c(zzaeVar, zzgVar, list, true);
            case 11:
                return c(zzaeVar, zzgVar, list, false);
            case 12:
                zzh.h("reverse", 0, list);
                int iL3 = zzaeVar.l();
                if (iL3 != 0) {
                    for (int i11 = 0; i11 < iL3 / 2; i11++) {
                        if (zzaeVar.u(i11)) {
                            zzap zzapVarM2 = zzaeVar.m(i11);
                            zzaeVar.t(i11, null);
                            int i12 = (iL3 - 1) - i11;
                            if (zzaeVar.u(i12)) {
                                zzaeVar.t(i11, zzaeVar.m(i12));
                            }
                            zzaeVar.t(i12, zzapVarM2);
                        }
                    }
                }
                return zzaeVar;
            case 13:
                zzh.h("shift", 0, list);
                if (zzaeVar.l() == 0) {
                    return zzap.f23278d;
                }
                zzap zzapVarM3 = zzaeVar.m(0);
                zzaeVar.s(0);
                return zzapVarM3;
            case 14:
                zzh.j("slice", 2, list);
                if (list.isEmpty()) {
                    return zzaeVar.d();
                }
                double dL4 = zzaeVar.l();
                double dA2 = zzh.a(zzgVar.b((zzap) list.get(0)).f().doubleValue());
                if (dA2 < 0.0d) {
                    Double.isNaN(dL4);
                    dMin = Math.max(dA2 + dL4, 0.0d);
                } else {
                    dMin = Math.min(dA2, dL4);
                }
                if (list.size() == 2) {
                    double dA3 = zzh.a(zzgVar.b((zzap) list.get(1)).f().doubleValue());
                    if (dA3 < 0.0d) {
                        Double.isNaN(dL4);
                        dL4 = Math.max(dL4 + dA3, 0.0d);
                    } else {
                        dL4 = Math.min(dL4, dA3);
                    }
                }
                zzae zzaeVar5 = new zzae();
                for (int i13 = (int) dMin; i13 < dL4; i13++) {
                    zzaeVar5.t(zzaeVar5.l(), zzaeVar.m(i13));
                }
                return zzaeVar5;
            case 15:
                zzh.h("some", 1, list);
                zzap zzapVarB10 = zzgVar.b((zzap) list.get(0));
                if (!(zzapVarB10 instanceof zzai)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (zzaeVar.l() == 0) {
                    return zzap.f23284j;
                }
                zzai zzaiVar2 = (zzai) zzapVarB10;
                Iterator itO4 = zzaeVar.o();
                while (itO4.hasNext()) {
                    int iIntValue2 = ((Integer) itO4.next()).intValue();
                    if (zzaeVar.u(iIntValue2) && zzaiVar2.a(zzgVar, Arrays.asList(zzaeVar.m(iIntValue2), new zzah(Double.valueOf(iIntValue2)), zzaeVar)).e().booleanValue()) {
                        return zzap.f23283i;
                    }
                }
                return zzap.f23284j;
            case 16:
                zzh.j("sort", 1, list);
                if (zzaeVar.l() >= 2) {
                    List listP = zzaeVar.p();
                    if (list.isEmpty()) {
                        zzaiVar = null;
                    } else {
                        zzap zzapVarB11 = zzgVar.b((zzap) list.get(0));
                        if (!(zzapVarB11 instanceof zzai)) {
                            throw new IllegalArgumentException("Comparator should be a method");
                        }
                        zzaiVar = (zzai) zzapVarB11;
                    }
                    Collections.sort(listP, new zzba(zzaiVar, zzgVar));
                    zzaeVar.q();
                    Iterator it3 = listP.iterator();
                    int i14 = 0;
                    while (it3.hasNext()) {
                        zzaeVar.t(i14, (zzap) it3.next());
                        i14++;
                    }
                }
                return zzaeVar;
            case 17:
                if (list.isEmpty()) {
                    return new zzae();
                }
                int iA = (int) zzh.a(zzgVar.b((zzap) list.get(0)).f().doubleValue());
                if (iA < 0) {
                    iA = Math.max(0, iA + zzaeVar.l());
                } else if (iA > zzaeVar.l()) {
                    iA = zzaeVar.l();
                }
                int iL4 = zzaeVar.l();
                zzae zzaeVar6 = new zzae();
                if (list.size() > 1) {
                    int iMax = Math.max(0, (int) zzh.a(zzgVar.b((zzap) list.get(1)).f().doubleValue()));
                    if (iMax > 0) {
                        for (int i15 = iA; i15 < Math.min(iL4, iA + iMax); i15++) {
                            zzaeVar6.t(zzaeVar6.l(), zzaeVar.m(iA));
                            zzaeVar.s(iA);
                        }
                    }
                    if (list.size() > 2) {
                        for (int i16 = 2; i16 < list.size(); i16++) {
                            zzap zzapVarB12 = zzgVar.b((zzap) list.get(i16));
                            if (zzapVarB12 instanceof zzag) {
                                throw new IllegalArgumentException("Failed to parse elements to add");
                            }
                            zzaeVar.r((iA + i16) - 2, zzapVarB12);
                        }
                    }
                } else {
                    while (iA < iL4) {
                        zzaeVar6.t(zzaeVar6.l(), zzaeVar.m(iA));
                        zzaeVar.t(iA, null);
                        iA++;
                    }
                }
                return zzaeVar6;
            case 18:
                zzh.h(str2, 0, list);
                return new zzat(zzaeVar.n(","));
            case 19:
                if (!list.isEmpty()) {
                    zzae zzaeVar7 = new zzae();
                    Iterator it4 = list.iterator();
                    while (it4.hasNext()) {
                        zzap zzapVarB13 = zzgVar.b((zzap) it4.next());
                        if (zzapVarB13 instanceof zzag) {
                            throw new IllegalStateException("Argument evaluation failed");
                        }
                        zzaeVar7.t(zzaeVar7.l(), zzapVarB13);
                    }
                    int iL5 = zzaeVar7.l();
                    Iterator itO5 = zzaeVar.o();
                    while (itO5.hasNext()) {
                        Integer num2 = (Integer) itO5.next();
                        zzaeVar7.t(num2.intValue() + iL5, zzaeVar.m(num2.intValue()));
                    }
                    zzaeVar.q();
                    Iterator itO6 = zzaeVar7.o();
                    while (itO6.hasNext()) {
                        Integer num3 = (Integer) itO6.next();
                        zzaeVar.t(num3.intValue(), zzaeVar7.m(num3.intValue()));
                    }
                }
                return new zzah(Double.valueOf(zzaeVar.l()));
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    private static zzae b(zzae zzaeVar, zzg zzgVar, zzai zzaiVar, Boolean bool, Boolean bool2) {
        zzae zzaeVar2 = new zzae();
        Iterator itO = zzaeVar.o();
        while (itO.hasNext()) {
            int iIntValue = ((Integer) itO.next()).intValue();
            if (zzaeVar.u(iIntValue)) {
                zzap zzapVarA = zzaiVar.a(zzgVar, Arrays.asList(zzaeVar.m(iIntValue), new zzah(Double.valueOf(iIntValue)), zzaeVar));
                if (zzapVarA.e().equals(bool)) {
                    return zzaeVar2;
                }
                if (bool2 == null || zzapVarA.e().equals(bool2)) {
                    zzaeVar2.t(iIntValue, zzapVarA);
                }
            }
        }
        return zzaeVar2;
    }

    private static zzap c(zzae zzaeVar, zzg zzgVar, List list, boolean z10) {
        zzap zzapVarA;
        zzh.i("reduce", 1, list);
        zzh.j("reduce", 2, list);
        zzap zzapVarB = zzgVar.b((zzap) list.get(0));
        if (!(zzapVarB instanceof zzai)) {
            throw new IllegalArgumentException("Callback should be a method");
        }
        if (list.size() == 2) {
            zzapVarA = zzgVar.b((zzap) list.get(1));
            if (zzapVarA instanceof zzag) {
                throw new IllegalArgumentException("Failed to parse initial value");
            }
        } else {
            if (zzaeVar.l() == 0) {
                throw new IllegalStateException("Empty array with no initial value error");
            }
            zzapVarA = null;
        }
        zzai zzaiVar = (zzai) zzapVarB;
        int iL = zzaeVar.l();
        int i10 = z10 ? 0 : iL - 1;
        int i11 = z10 ? iL - 1 : 0;
        int i12 = true == z10 ? 1 : -1;
        if (zzapVarA == null) {
            zzapVarA = zzaeVar.m(i10);
            i10 += i12;
        }
        while ((i11 - i10) * i12 >= 0) {
            if (zzaeVar.u(i10)) {
                zzapVarA = zzaiVar.a(zzgVar, Arrays.asList(zzapVarA, zzaeVar.m(i10), new zzah(Double.valueOf(i10)), zzaeVar));
                if (zzapVarA instanceof zzag) {
                    throw new IllegalStateException("Reduce operation failed");
                }
                i10 += i12;
            } else {
                i10 += i12;
            }
        }
        return zzapVarA;
    }
}
