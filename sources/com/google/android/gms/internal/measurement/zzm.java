package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzm extends zzai {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzo f23738q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzm(zzn zznVar, String str, zzo zzoVar) {
        super("getValue");
        this.f23738q = zzoVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap a(zzg zzgVar, List list) {
        zzh.h("getValue", 2, list);
        zzap zzapVarB = zzgVar.b((zzap) list.get(0));
        zzap zzapVarB2 = zzgVar.b((zzap) list.get(1));
        String strO = this.f23738q.o(zzapVarB.g());
        return strO != null ? new zzat(strO) : zzapVarB2;
    }
}
