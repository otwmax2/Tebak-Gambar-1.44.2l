package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzevf implements zzevt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfaj f17469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f17470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfuf f17471c = new zzevd(this);

    public zzevf(zzfaj zzfajVar, Executor executor) {
        this.f17469a = zzfajVar;
        this.f17470b = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzevt
    public final /* bridge */ /* synthetic */ zzfut a(zzevu zzevuVar, zzevs zzevsVar, Object obj) {
        return c(zzevuVar, zzevsVar, null);
    }

    final /* synthetic */ zzfut b(zzctw zzctwVar, zzevo zzevoVar) throws Exception {
        zzfat zzfatVar = zzevoVar.f17479b;
        zzbtn zzbtnVar = zzevoVar.f17478a;
        zzfas zzfasVarB = zzfatVar != null ? this.f17469a.b(zzfatVar) : null;
        if (zzfatVar == null) {
            return zzfuj.h(null);
        }
        if (zzfasVarB != null && zzbtnVar != null) {
            zzfuj.q(zzctwVar.zzb().h(zzbtnVar), this.f17471c, this.f17470b);
        }
        return zzfuj.h(new zzeve(zzfatVar, zzbtnVar, zzfasVarB));
    }

    public final zzfut c(zzevu zzevuVar, zzevs zzevsVar, final zzctw zzctwVar) {
        return zzfuj.e(zzfuj.m(zzfua.D(new zzevp(this.f17469a, zzctwVar, this.f17470b).c()), new zzftq() { // from class: com.google.android.gms.internal.ads.zzevb
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f17464a.b(zzctwVar, (zzevo) obj);
            }
        }, this.f17470b), Exception.class, new zzevc(this), this.f17470b);
    }

    @Override // com.google.android.gms.internal.ads.zzevt
    public final /* bridge */ /* synthetic */ Object d() {
        return null;
    }
}
