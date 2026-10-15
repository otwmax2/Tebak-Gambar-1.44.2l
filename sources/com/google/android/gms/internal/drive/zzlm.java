package com.google.android.gms.internal.drive;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzlm implements zzll {
    zzlm() {
    }

    @Override // com.google.android.gms.internal.drive.zzll
    public final Map<?, ?> c(Object obj) {
        return (zzlk) obj;
    }

    @Override // com.google.android.gms.internal.drive.zzll
    public final Object d(Object obj) {
        ((zzlk) obj).d();
        return obj;
    }

    @Override // com.google.android.gms.internal.drive.zzll
    public final Object f(Object obj, Object obj2) {
        zzlk zzlkVarF = (zzlk) obj;
        zzlk zzlkVar = (zzlk) obj2;
        if (!zzlkVar.isEmpty()) {
            if (!zzlkVarF.a()) {
                zzlkVarF = zzlkVarF.f();
            }
            zzlkVarF.b(zzlkVar);
        }
        return zzlkVarF;
    }

    @Override // com.google.android.gms.internal.drive.zzll
    public final zzlj<?, ?> g(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.drive.zzll
    public final int h(int i10, Object obj, Object obj2) {
        zzlk zzlkVar = (zzlk) obj;
        if (zzlkVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzlkVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
