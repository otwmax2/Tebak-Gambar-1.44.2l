package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzle {
    zzle() {
    }

    public static final int a(int i10, Object obj, Object obj2) {
        zzld zzldVar = (zzld) obj;
        if (zzldVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzldVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    public static final Object b(Object obj, Object obj2) {
        zzld zzldVarB = (zzld) obj;
        zzld zzldVar = (zzld) obj2;
        if (!zzldVar.isEmpty()) {
            if (!zzldVarB.h()) {
                zzldVarB = zzldVarB.b();
            }
            zzldVarB.f(zzldVar);
        }
        return zzldVarB;
    }
}
