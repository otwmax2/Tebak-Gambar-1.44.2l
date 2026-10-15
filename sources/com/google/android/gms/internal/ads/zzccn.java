package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccn implements Iterable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List f11822o = new ArrayList();

    final zzccm c(zzcbj zzcbjVar) {
        Iterator it = iterator();
        while (it.hasNext()) {
            zzccm zzccmVar = (zzccm) it.next();
            if (zzccmVar.f11818c == zzcbjVar) {
                return zzccmVar;
            }
        }
        return null;
    }

    public final void g(zzccm zzccmVar) {
        this.f11822o.add(zzccmVar);
    }

    public final void i(zzccm zzccmVar) {
        this.f11822o.remove(zzccmVar);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f11822o.iterator();
    }

    public final boolean j(zzcbj zzcbjVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterator();
        while (it.hasNext()) {
            zzccm zzccmVar = (zzccm) it.next();
            if (zzccmVar.f11818c == zzcbjVar) {
                arrayList.add(zzccmVar);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((zzccm) it2.next()).f11819d.g();
        }
        return true;
    }
}
