package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgrr {
    zzgrr() {
    }

    public static final int a(int i10, Object obj, Object obj2) {
        zzgrq zzgrqVar = (zzgrq) obj;
        if (zzgrqVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzgrqVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    public static final boolean b(Object obj) {
        return !((zzgrq) obj).h();
    }

    public static final Object c(Object obj, Object obj2) {
        zzgrq zzgrqVarB = (zzgrq) obj;
        zzgrq zzgrqVar = (zzgrq) obj2;
        if (!zzgrqVar.isEmpty()) {
            if (!zzgrqVarB.h()) {
                zzgrqVarB = zzgrqVarB.b();
            }
            zzgrqVarB.f(zzgrqVar);
        }
        return zzgrqVarB;
    }
}
