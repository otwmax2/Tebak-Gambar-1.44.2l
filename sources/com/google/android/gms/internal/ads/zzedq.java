package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzedq implements zzeba {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdes f16347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f16348c;

    public zzedq(Context context, zzdes zzdesVar, Executor executor) {
        this.f16346a = context;
        this.f16347b = zzdesVar;
        this.f16348c = executor;
    }

    private static final boolean c(zzeyo zzeyoVar, int i10) {
        return zzeyoVar.f17702a.f17696a.f17734g.contains(Integer.toString(i10));
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final void a(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc {
        zzezs zzezsVar = (zzezs) zzeawVar.f16127b;
        Context context = this.f16346a;
        com.google.android.gms.ads.internal.client.zzl zzlVar = zzeyoVar.f17702a.f17696a.f17731d;
        String string = zzeycVar.f17670w.toString();
        String strL = com.google.android.gms.ads.internal.util.zzbu.l(zzeycVar.f17667t);
        zzbnl zzbnlVar = (zzbnl) zzeawVar.f16128c;
        zzeyx zzeyxVar = zzeyoVar.f17702a.f17696a;
        zzezsVar.u(context, zzlVar, string, strL, zzbnlVar, zzeyxVar.f17736i, zzeyxVar.f17734g);
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* bridge */ /* synthetic */ Object b(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws zzezc, zzeek {
        zzdgi zzdgiVarF;
        zzbnq zzbnqVarD = ((zzezs) zzeawVar.f16127b).d();
        zzbnr zzbnrVarE = ((zzezs) zzeawVar.f16127b).e();
        zzbnu zzbnuVarI = ((zzezs) zzeawVar.f16127b).i();
        if (zzbnuVarI != null && c(zzeyoVar, 6)) {
            zzdgiVarF = zzdgi.c0(zzbnuVarI);
        } else if (zzbnqVarD != null && c(zzeyoVar, 6)) {
            zzdgiVarF = zzdgi.G(zzbnqVarD);
        } else if (zzbnqVarD != null && c(zzeyoVar, 2)) {
            zzdgiVarF = zzdgi.E(zzbnqVarD);
        } else if (zzbnrVarE != null && c(zzeyoVar, 6)) {
            zzdgiVarF = zzdgi.H(zzbnrVarE);
        } else {
            if (zzbnrVarE == null || !c(zzeyoVar, 1)) {
                throw new zzeek(1, "No native ad mappers");
            }
            zzdgiVarF = zzdgi.F(zzbnrVarE);
        }
        if (!zzeyoVar.f17702a.f17696a.f17734g.contains(Integer.toString(zzdgiVarF.M()))) {
            throw new zzeek(1, "No corresponding native ad listener");
        }
        zzdgk zzdgkVarD = this.f16347b.d(new zzcrb(zzeyoVar, zzeycVar, zzeawVar.f16126a), new zzdgu(zzdgiVarF), new zzdij(zzbnrVarE, zzbnqVarD, zzbnuVarI, null));
        ((zzecq) zzeawVar.f16128c).Ta(zzdgkVarD.g());
        zzdgkVarD.c().L0(new zzcmm((zzezs) zzeawVar.f16127b), this.f16348c);
        return zzdgkVarD.h();
    }
}
