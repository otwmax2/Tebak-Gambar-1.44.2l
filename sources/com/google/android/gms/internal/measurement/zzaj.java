package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzaj {
    public static zzap a(zzal zzalVar, zzap zzapVar, zzg zzgVar, List list) {
        if (zzalVar.z0(zzapVar.g())) {
            zzap zzapVarI = zzalVar.I(zzapVar.g());
            if (zzapVarI instanceof zzai) {
                return ((zzai) zzapVarI).a(zzgVar, list);
            }
            throw new IllegalArgumentException(String.format("%s is not a function", zzapVar.g()));
        }
        if (!"hasOwnProperty".equals(zzapVar.g())) {
            throw new IllegalArgumentException(String.format("Object has no function %s", zzapVar.g()));
        }
        zzh.h("hasOwnProperty", 1, list);
        return zzalVar.z0(zzgVar.b((zzap) list.get(0)).g()) ? zzap.f23283i : zzap.f23284j;
    }

    public static Iterator b(Map map) {
        return new zzak(map.keySet().iterator());
    }
}
