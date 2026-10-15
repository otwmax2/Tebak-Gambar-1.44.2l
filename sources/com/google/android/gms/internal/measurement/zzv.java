package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzv extends zzai {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzz f23954q;

    public zzv(zzz zzzVar) {
        super("internal.registerCallback");
        this.f23954q = zzzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap a(zzg zzgVar, List list) {
        zzh.h(this.f23271o, 3, list);
        String strG = zzgVar.b((zzap) list.get(0)).g();
        zzap zzapVarB = zzgVar.b((zzap) list.get(1));
        if (!(zzapVarB instanceof zzao)) {
            throw new IllegalArgumentException("Invalid callback type");
        }
        zzap zzapVarB2 = zzgVar.b((zzap) list.get(2));
        if (!(zzapVarB2 instanceof zzam)) {
            throw new IllegalArgumentException("Invalid callback params");
        }
        zzam zzamVar = (zzam) zzapVarB2;
        if (!zzamVar.z0("type")) {
            throw new IllegalArgumentException("Undefined rule type");
        }
        this.f23954q.a(strG, zzamVar.z0("priority") ? zzh.b(zzamVar.I("priority").f().doubleValue()) : 1000, (zzao) zzapVarB, zzamVar.I("type").g());
        return zzap.f23278d;
    }
}
