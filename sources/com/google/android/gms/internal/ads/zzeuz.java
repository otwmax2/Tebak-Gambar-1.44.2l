package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeuz implements zzevt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzevt f17456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzevt f17457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfbf f17458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f17459d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private zzctw f17460e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Executor f17461f;

    public zzeuz(zzevt zzevtVar, zzevt zzevtVar2, zzfbf zzfbfVar, String str, Executor executor) {
        this.f17456a = zzevtVar;
        this.f17457b = zzevtVar2;
        this.f17458c = zzfbfVar;
        this.f17459d = str;
        this.f17461f = executor;
    }

    private final zzfut g(zzfas zzfasVar, zzevu zzevuVar) {
        zzctw zzctwVar = zzfasVar.f17832a;
        this.f17460e = zzctwVar;
        if (zzfasVar.f17834c != null) {
            if (zzctwVar.c() != null) {
                zzfasVar.f17834c.f().a(zzfasVar.f17832a.c());
            }
            return zzfuj.h(zzfasVar.f17834c);
        }
        zzctwVar.zzb().l(zzfasVar.f17833b);
        return ((zzevj) this.f17456a).c(zzevuVar, null, zzfasVar.f17832a);
    }

    @Override // com.google.android.gms.internal.ads.zzevt
    public final /* bridge */ /* synthetic */ zzfut a(zzevu zzevuVar, zzevs zzevsVar, Object obj) {
        return f(zzevuVar, zzevsVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzevt
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final synchronized zzctw d() {
        return this.f17460e;
    }

    final /* synthetic */ zzfut c(zzevu zzevuVar, zzeuy zzeuyVar, zzevs zzevsVar, zzctw zzctwVar, zzeve zzeveVar) throws Exception {
        if (zzeveVar != null) {
            zzeuy zzeuyVar2 = new zzeuy(zzeuyVar.f17449a, zzeuyVar.f17450b, zzeuyVar.f17451c, zzeuyVar.f17452d, zzeuyVar.f17453e, zzeuyVar.f17454f, zzeveVar.f17466a);
            if (zzeveVar.f17468c != null) {
                this.f17460e = null;
                this.f17458c.e(zzeuyVar2);
                return g(zzeveVar.f17468c, zzevuVar);
            }
            zzfut zzfutVarA = this.f17458c.a(zzeuyVar2);
            if (zzfutVarA != null) {
                this.f17460e = null;
                return zzfuj.m(zzfutVarA, new zzftq() { // from class: com.google.android.gms.internal.ads.zzeuv
                    @Override // com.google.android.gms.internal.ads.zzftq
                    public final zzfut a(Object obj) {
                        return this.f17442a.e((zzfbc) obj);
                    }
                }, this.f17461f);
            }
            this.f17458c.e(zzeuyVar2);
            zzevuVar = new zzevu(zzevuVar.f17485b, zzeveVar.f17467b);
        }
        zzfut zzfutVarC = ((zzevj) this.f17456a).c(zzevuVar, zzevsVar, zzctwVar);
        this.f17460e = zzctwVar;
        return zzfutVarC;
    }

    final /* synthetic */ zzfut e(zzfbc zzfbcVar) throws Exception {
        zzfbe zzfbeVar;
        if (zzfbcVar == null || zzfbcVar.f17850a == null || (zzfbeVar = zzfbcVar.f17851b) == null) {
            throw new zzdtf(1, "Empty prefetch");
        }
        zzawt zzawtVarI = zzawz.I();
        zzawr zzawrVarI = zzaws.I();
        zzawrVarI.r(2);
        zzawrVarI.p(zzaww.K());
        zzawtVarI.o(zzawrVarI);
        zzfbcVar.f17850a.f17832a.zzb().c().r0((zzawz) zzawtVarI.k());
        return g(zzfbcVar.f17850a, ((zzeuy) zzfbeVar).f17450b);
    }

    public final synchronized zzfut f(final zzevu zzevuVar, final zzevs zzevsVar, zzctw zzctwVar) {
        zzctv zzctvVarA = zzevsVar.a(zzevuVar.f17485b);
        zzctvVarA.l(new zzeva(this.f17459d));
        final zzctw zzctwVar2 = (zzctw) zzctvVarA.f();
        zzctwVar2.e();
        zzctwVar2.e();
        com.google.android.gms.ads.internal.client.zzl zzlVar = zzctwVar2.e().f17731d;
        if (zzlVar.G == null && zzlVar.L == null) {
            zzeyx zzeyxVarE = zzctwVar2.e();
            final zzeuy zzeuyVar = new zzeuy(zzevsVar, zzevuVar, zzeyxVarE.f17731d, zzeyxVarE.f17733f, this.f17461f, zzeyxVarE.f17737j, null);
            return zzfuj.m(zzfua.D(((zzevf) this.f17457b).c(zzevuVar, zzevsVar, zzctwVar2)), new zzftq() { // from class: com.google.android.gms.internal.ads.zzeuw
                @Override // com.google.android.gms.internal.ads.zzftq
                public final zzfut a(Object obj) {
                    return this.f17443a.c(zzevuVar, zzeuyVar, zzevsVar, zzctwVar2, (zzeve) obj);
                }
            }, this.f17461f);
        }
        this.f17460e = zzctwVar2;
        return ((zzevj) this.f17456a).c(zzevuVar, zzevsVar, zzctwVar2);
    }
}
