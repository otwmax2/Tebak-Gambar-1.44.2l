package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfst extends zzfsv {
    zzfst(zzfut zzfutVar, Class cls, zzftq zzftqVar) {
        super(zzfutVar, cls, zzftqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfsv
    final /* bridge */ /* synthetic */ Object E(Object obj, Throwable th) throws Exception {
        zzftq zzftqVar = (zzftq) obj;
        zzfut zzfutVarA = zzftqVar.a(th);
        zzfnu.d(zzfutVarA, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzftqVar);
        return zzfutVarA;
    }

    @Override // com.google.android.gms.internal.ads.zzfsv
    final /* synthetic */ void F(Object obj) {
        w((zzfut) obj);
    }
}
