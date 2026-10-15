package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeuu implements zzevt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzctw f17440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f17441b = zzfva.b();

    @Override // com.google.android.gms.internal.ads.zzevt
    public final /* bridge */ /* synthetic */ zzfut a(zzevu zzevuVar, zzevs zzevsVar, Object obj) {
        return c(zzevuVar, zzevsVar, null);
    }

    public final zzctw b() {
        return this.f17440a;
    }

    public final zzfut c(zzevu zzevuVar, zzevs zzevsVar, zzctw zzctwVar) {
        zzctv zzctvVarA = zzevsVar.a(zzevuVar.f17485b);
        zzctvVarA.n(new zzevx(true));
        zzctw zzctwVar2 = (zzctw) zzctvVarA.f();
        this.f17440a = zzctwVar2;
        final zzcrt zzcrtVarZzb = zzctwVar2.zzb();
        final zzfas zzfasVar = new zzfas();
        return zzfuj.l(zzfuj.m(zzfua.D(zzcrtVarZzb.j()), new zzftq() { // from class: com.google.android.gms.internal.ads.zzeus
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                zzfas zzfasVar2 = zzfasVar;
                zzcrt zzcrtVar = zzcrtVarZzb;
                zzeyo zzeyoVar = (zzeyo) obj;
                zzfasVar2.f17833b = zzeyoVar;
                Iterator it = zzeyoVar.f17703b.f17699a.iterator();
                boolean z10 = false;
                loop0: while (true) {
                    if (it.hasNext()) {
                        Iterator it2 = ((zzeyc) it.next()).f17632a.iterator();
                        while (it2.hasNext()) {
                            if (!((String) it2.next()).contains("FirstPartyRenderer")) {
                                break loop0;
                            }
                            z10 = true;
                        }
                    } else if (z10) {
                        return zzcrtVar.i(zzfuj.h(zzeyoVar));
                    }
                }
                return zzfuj.h(null);
            }
        }, this.f17441b), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzeut
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                zzfas zzfasVar2 = zzfasVar;
                zzfasVar2.f17834c = (zzcqm) obj;
                return zzfasVar2;
            }
        }, this.f17441b);
    }

    @Override // com.google.android.gms.internal.ads.zzevt
    public final /* synthetic */ Object d() {
        return this.f17440a;
    }
}
