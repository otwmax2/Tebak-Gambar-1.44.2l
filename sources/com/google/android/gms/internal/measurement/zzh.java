package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzh {
    public static double a(double d10) {
        if (Double.isNaN(d10)) {
            return 0.0d;
        }
        if (Double.isInfinite(d10) || d10 == 0.0d || d10 == 0.0d) {
            return d10;
        }
        double d11 = d10 > 0.0d ? 1 : -1;
        double dFloor = Math.floor(Math.abs(d10));
        Double.isNaN(d11);
        return d11 * dFloor;
    }

    public static int b(double d10) {
        if (Double.isNaN(d10) || Double.isInfinite(d10) || d10 == 0.0d) {
            return 0;
        }
        double d11 = d10 > 0.0d ? 1 : -1;
        double dFloor = Math.floor(Math.abs(d10));
        Double.isNaN(d11);
        return (int) ((d11 * dFloor) % 4.294967296E9d);
    }

    public static int c(zzg zzgVar) {
        int iB = b(zzgVar.d("runtime.counter").f().doubleValue() + 1.0d);
        if (iB > 1000000) {
            throw new IllegalStateException("Instructions allowed exceeded");
        }
        zzgVar.g("runtime.counter", new zzah(Double.valueOf(iB)));
        return iB;
    }

    public static long d(double d10) {
        return ((long) b(d10)) & 4294967295L;
    }

    public static zzbl e(String str) {
        zzbl zzblVarC = null;
        if (str != null && !str.isEmpty()) {
            zzblVarC = zzbl.c(Integer.parseInt(str));
        }
        if (zzblVarC != null) {
            return zzblVarC;
        }
        throw new IllegalArgumentException(String.format("Unsupported commandId %s", str));
    }

    public static Object f(zzap zzapVar) {
        if (zzap.f23279e.equals(zzapVar)) {
            return null;
        }
        if (zzap.f23278d.equals(zzapVar)) {
            return BuildConfig.FLAVOR;
        }
        if (zzapVar instanceof zzam) {
            return g((zzam) zzapVar);
        }
        if (!(zzapVar instanceof zzae)) {
            return !zzapVar.f().isNaN() ? zzapVar.f() : zzapVar.g();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = ((zzae) zzapVar).iterator();
        while (it.hasNext()) {
            Object objF = f((zzap) it.next());
            if (objF != null) {
                arrayList.add(objF);
            }
        }
        return arrayList;
    }

    public static Map g(zzam zzamVar) {
        HashMap map = new HashMap();
        for (String str : zzamVar.a()) {
            Object objF = f(zzamVar.I(str));
            if (objF != null) {
                map.put(str, objF);
            }
        }
        return map;
    }

    public static void h(String str, int i10, List list) {
        if (list.size() != i10) {
            throw new IllegalArgumentException(String.format("%s operation requires %s parameters found %s", str, Integer.valueOf(i10), Integer.valueOf(list.size())));
        }
    }

    public static void i(String str, int i10, List list) {
        if (list.size() < i10) {
            throw new IllegalArgumentException(String.format("%s operation requires at least %s parameters found %s", str, Integer.valueOf(i10), Integer.valueOf(list.size())));
        }
    }

    public static void j(String str, int i10, List list) {
        if (list.size() > i10) {
            throw new IllegalArgumentException(String.format("%s operation requires at most %s parameters found %s", str, Integer.valueOf(i10), Integer.valueOf(list.size())));
        }
    }

    public static boolean k(zzap zzapVar) {
        if (zzapVar == null) {
            return false;
        }
        Double dF = zzapVar.f();
        return !dF.isNaN() && dF.doubleValue() >= 0.0d && dF.equals(Double.valueOf(Math.floor(dF.doubleValue())));
    }

    public static boolean l(zzap zzapVar, zzap zzapVar2) {
        if (!zzapVar.getClass().equals(zzapVar2.getClass())) {
            return false;
        }
        if ((zzapVar instanceof zzau) || (zzapVar instanceof zzan)) {
            return true;
        }
        if (!(zzapVar instanceof zzah)) {
            return zzapVar instanceof zzat ? zzapVar.g().equals(zzapVar2.g()) : zzapVar instanceof zzaf ? zzapVar.e().equals(zzapVar2.e()) : zzapVar == zzapVar2;
        }
        if (Double.isNaN(zzapVar.f().doubleValue()) || Double.isNaN(zzapVar2.f().doubleValue())) {
            return false;
        }
        return zzapVar.f().equals(zzapVar2.f());
    }
}
