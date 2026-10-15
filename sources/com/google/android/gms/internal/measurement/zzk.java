package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzk extends zzai {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzab f23659q;

    public zzk(zzab zzabVar) {
        super("internal.eventLogger");
        this.f23659q = zzabVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap a(zzg zzgVar, List list) {
        zzh.h(this.f23271o, 3, list);
        String strG = zzgVar.b((zzap) list.get(0)).g();
        long jA = (long) zzh.a(zzgVar.b((zzap) list.get(1)).f().doubleValue());
        zzap zzapVarB = zzgVar.b((zzap) list.get(2));
        this.f23659q.e(strG, jA, zzapVarB instanceof zzam ? zzh.g((zzam) zzapVarB) : new HashMap());
        return zzap.f23278d;
    }
}
