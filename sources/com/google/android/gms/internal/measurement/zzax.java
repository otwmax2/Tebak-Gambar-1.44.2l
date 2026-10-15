package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Map f23294a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final zzbj f23295b = new zzbj();

    public zzax() {
        b(new zzav());
        b(new zzay());
        b(new zzaz());
        b(new zzbc());
        b(new zzbh());
        b(new zzbi());
        b(new zzbk());
    }

    public final zzap a(zzg zzgVar, zzap zzapVar) {
        zzh.c(zzgVar);
        if (!(zzapVar instanceof zzaq)) {
            return zzapVar;
        }
        zzaq zzaqVar = (zzaq) zzapVar;
        ArrayList arrayListB = zzaqVar.b();
        String strA = zzaqVar.a();
        return (this.f23294a.containsKey(strA) ? (zzaw) this.f23294a.get(strA) : this.f23295b).a(strA, zzgVar, arrayListB);
    }

    final void b(zzaw zzawVar) {
        Iterator it = zzawVar.f23293a.iterator();
        while (it.hasNext()) {
            this.f23294a.put(((zzbl) it.next()).e().toString(), zzawVar);
        }
    }
}
