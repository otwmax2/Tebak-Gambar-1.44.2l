package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzi {
    public static zzap a(zzgx zzgxVar) {
        if (zzgxVar == null) {
            return zzap.f23278d;
        }
        int iD = zzgxVar.D() - 1;
        if (iD == 1) {
            return zzgxVar.C() ? new zzat(zzgxVar.x()) : zzap.f23285k;
        }
        if (iD == 2) {
            return zzgxVar.B() ? new zzah(Double.valueOf(zzgxVar.u())) : new zzah(null);
        }
        if (iD == 3) {
            return zzgxVar.A() ? new zzaf(Boolean.valueOf(zzgxVar.z())) : new zzaf(null);
        }
        if (iD != 4) {
            throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
        }
        List listY = zzgxVar.y();
        ArrayList arrayList = new ArrayList();
        Iterator it = listY.iterator();
        while (it.hasNext()) {
            arrayList.add(a((zzgx) it.next()));
        }
        return new zzaq(zzgxVar.w(), arrayList);
    }

    public static zzap b(Object obj) {
        if (obj == null) {
            return zzap.f23279e;
        }
        if (obj instanceof String) {
            return new zzat((String) obj);
        }
        if (obj instanceof Double) {
            return new zzah((Double) obj);
        }
        if (obj instanceof Long) {
            return new zzah(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new zzah(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new zzaf((Boolean) obj);
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            zzae zzaeVar = new zzae();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zzaeVar.t(zzaeVar.l(), b(it.next()));
            }
            return zzaeVar;
        }
        zzam zzamVar = new zzam();
        Map map = (Map) obj;
        for (Object string : map.keySet()) {
            zzap zzapVarB = b(map.get(string));
            if (string != null) {
                if (!(string instanceof String)) {
                    string = string.toString();
                }
                zzamVar.i((String) string, zzapVarB);
            }
        }
        return zzamVar;
    }
}
