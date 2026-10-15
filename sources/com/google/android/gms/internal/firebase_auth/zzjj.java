package com.google.android.gms.internal.firebase_auth;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjj implements zzjk {
    zzjj() {
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjk
    public final Object b(Object obj) {
        ((zzjh) obj).f();
        return obj;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjk
    public final zzji<?, ?> c(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjk
    public final Map<?, ?> d(Object obj) {
        return (zzjh) obj;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjk
    public final Object e(Object obj, Object obj2) {
        zzjh zzjhVarD = (zzjh) obj;
        zzjh zzjhVar = (zzjh) obj2;
        if (!zzjhVar.isEmpty()) {
            if (!zzjhVarD.h()) {
                zzjhVarD = zzjhVarD.d();
            }
            zzjhVarD.b(zzjhVar);
        }
        return zzjhVarD;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjk
    public final int f(int i10, Object obj, Object obj2) {
        zzjh zzjhVar = (zzjh) obj;
        if (zzjhVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzjhVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
