package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzftd extends zzftf {
    zzftd(zzfut zzfutVar, zzftq zzftqVar) {
        super(zzfutVar, zzftqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzftf
    final /* bridge */ /* synthetic */ Object E(Object obj, Object obj2) throws Exception {
        zzftq zzftqVar = (zzftq) obj;
        zzfut zzfutVarA = zzftqVar.a(obj2);
        zzfnu.d(zzfutVarA, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzftqVar);
        return zzfutVarA;
    }

    @Override // com.google.android.gms.internal.ads.zzftf
    final /* synthetic */ void F(Object obj) {
        w((zzfut) obj);
    }
}
