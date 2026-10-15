package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzace extends zzacg {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f8486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long[] f8487c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long[] f8488d;

    public zzace() {
        super(new zzzt());
        this.f8486b = -9223372036854775807L;
        this.f8487c = new long[0];
        this.f8488d = new long[0];
    }

    private static Double g(zzen zzenVar) {
        return Double.valueOf(Double.longBitsToDouble(zzenVar.z()));
    }

    private static Object h(zzen zzenVar, int i10) {
        if (i10 == 0) {
            return g(zzenVar);
        }
        if (i10 == 1) {
            return Boolean.valueOf(zzenVar.s() == 1);
        }
        if (i10 == 2) {
            return i(zzenVar);
        }
        if (i10 != 3) {
            if (i10 == 8) {
                return j(zzenVar);
            }
            if (i10 != 10) {
                if (i10 != 11) {
                    return null;
                }
                Date date = new Date((long) g(zzenVar).doubleValue());
                zzenVar.g(2);
                return date;
            }
            int iV = zzenVar.v();
            ArrayList arrayList = new ArrayList(iV);
            for (int i11 = 0; i11 < iV; i11++) {
                Object objH = h(zzenVar, zzenVar.s());
                if (objH != null) {
                    arrayList.add(objH);
                }
            }
            return arrayList;
        }
        HashMap map = new HashMap();
        while (true) {
            String strI = i(zzenVar);
            int iS = zzenVar.s();
            if (iS == 9) {
                return map;
            }
            Object objH2 = h(zzenVar, iS);
            if (objH2 != null) {
                map.put(strI, objH2);
            }
        }
    }

    private static String i(zzen zzenVar) {
        int iW = zzenVar.w();
        int iK = zzenVar.k();
        zzenVar.g(iW);
        return new String(zzenVar.h(), iK, iW);
    }

    private static HashMap j(zzen zzenVar) {
        int iV = zzenVar.v();
        HashMap map = new HashMap(iV);
        for (int i10 = 0; i10 < iV; i10++) {
            String strI = i(zzenVar);
            Object objH = h(zzenVar, zzenVar.s());
            if (objH != null) {
                map.put(strI, objH);
            }
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    protected final boolean a(zzen zzenVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    protected final boolean b(zzen zzenVar, long j10) {
        if (zzenVar.s() != 2 || !"onMetaData".equals(i(zzenVar)) || zzenVar.i() == 0 || zzenVar.s() != 8) {
            return false;
        }
        HashMap mapJ = j(zzenVar);
        Object obj = mapJ.get("duration");
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (dDoubleValue > 0.0d) {
                this.f8486b = (long) (dDoubleValue * 1000000.0d);
            }
        }
        Object obj2 = mapJ.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.f8487c = new long[size];
                this.f8488d = new long[size];
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj5 = list.get(i10);
                    Object obj6 = list2.get(i10);
                    if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                        this.f8487c = new long[0];
                        this.f8488d = new long[0];
                        break;
                    }
                    this.f8487c[i10] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                    this.f8488d[i10] = ((Double) obj5).longValue();
                }
            }
        }
        return false;
    }

    public final long d() {
        return this.f8486b;
    }

    public final long[] e() {
        return this.f8488d;
    }

    public final long[] f() {
        return this.f8487c;
    }
}
