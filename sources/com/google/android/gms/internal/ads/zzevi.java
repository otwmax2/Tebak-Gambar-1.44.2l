package com.google.android.gms.internal.ads;

import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzevi implements zzevt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private zzctw f17472a;

    @Override // com.google.android.gms.internal.ads.zzevt
    public final /* bridge */ /* synthetic */ zzfut a(zzevu zzevuVar, zzevs zzevsVar, Object obj) {
        return c(zzevuVar, zzevsVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzevt
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final synchronized zzctw d() {
        return this.f17472a;
    }

    public final synchronized zzfut c(zzevu zzevuVar, zzevs zzevsVar, zzctw zzctwVar) {
        zzcrt zzcrtVarZzb;
        if (zzctwVar != null) {
            this.f17472a = zzctwVar;
        } else {
            this.f17472a = (zzctw) zzevsVar.a(zzevuVar.f17485b).f();
        }
        zzcrtVarZzb = this.f17472a.zzb();
        return zzcrtVarZzb.i(zzcrtVarZzb.j());
    }
}
