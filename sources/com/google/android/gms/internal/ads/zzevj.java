package com.google.android.gms.internal.ads;

import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzevj implements zzevt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzevt f17473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private zzctw f17474b;

    public zzevj(zzevt zzevtVar) {
        this.f17473a = zzevtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevt
    public final /* bridge */ /* synthetic */ zzfut a(zzevu zzevuVar, zzevs zzevsVar, Object obj) {
        return c(zzevuVar, zzevsVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzevt
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final synchronized zzctw d() {
        return this.f17474b;
    }

    public final synchronized zzfut c(zzevu zzevuVar, zzevs zzevsVar, zzctw zzctwVar) {
        this.f17474b = zzctwVar;
        if (zzevuVar.f17484a == null) {
            return ((zzevi) this.f17473a).c(zzevuVar, zzevsVar, zzctwVar);
        }
        zzcrt zzcrtVarZzb = zzctwVar.zzb();
        return zzcrtVarZzb.i(zzcrtVarZzb.k(zzfuj.h(zzevuVar.f17484a)));
    }
}
