package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final TreeMap f23957a = new TreeMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final TreeMap f23958b = new TreeMap();

    private static final int c(zzg zzgVar, zzao zzaoVar, zzap zzapVar) {
        zzap zzapVarA = zzaoVar.a(zzgVar, Collections.singletonList(zzapVar));
        if (zzapVarA instanceof zzah) {
            return zzh.b(zzapVarA.f().doubleValue());
        }
        return -1;
    }

    public final void a(String str, int i10, zzao zzaoVar, String str2) {
        TreeMap treeMap;
        if ("create".equals(str2)) {
            treeMap = this.f23958b;
        } else {
            if (!"edit".equals(str2)) {
                throw new IllegalStateException("Unknown callback type: ".concat(String.valueOf(str2)));
            }
            treeMap = this.f23957a;
        }
        if (treeMap.containsKey(Integer.valueOf(i10))) {
            i10 = ((Integer) treeMap.lastKey()).intValue() + 1;
        }
        treeMap.put(Integer.valueOf(i10), zzaoVar);
    }

    public final void b(zzg zzgVar, zzab zzabVar) {
        zzl zzlVar = new zzl(zzabVar);
        for (Integer num : this.f23957a.keySet()) {
            zzaa zzaaVarClone = zzabVar.b().clone();
            int iC = c(zzgVar, (zzao) this.f23957a.get(num), zzlVar);
            if (iC == 2 || iC == -1) {
                zzabVar.f(zzaaVarClone);
            }
        }
        Iterator it = this.f23958b.keySet().iterator();
        while (it.hasNext()) {
            c(zzgVar, (zzao) this.f23958b.get((Integer) it.next()), zzlVar);
        }
    }
}
