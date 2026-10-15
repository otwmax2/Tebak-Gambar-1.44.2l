package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzchu extends zzeqw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeqk f12335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzchy f12336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzchu f12337c = this;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f12338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f12339e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f12340f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f12341g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f12342h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzgxl f12343i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzgxl f12344j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzgxl f12345k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzgxl f12346l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzgxl f12347m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzgxl f12348n;

    /* synthetic */ zzchu(zzchy zzchyVar, zzeqk zzeqkVar, zzcht zzchtVar) {
        this.f12336b = zzchyVar;
        this.f12335a = zzeqkVar;
        this.f12338d = zzgwx.b(new zzfeo(zzchyVar.I));
        zzeqs zzeqsVar = new zzeqs(zzeqkVar);
        this.f12339e = zzeqsVar;
        zzgxl zzgxlVarB = zzgwx.b(zzdoh.a());
        this.f12340f = zzgxlVarB;
        zzgxl zzgxlVarB2 = zzgwx.b(zzdof.a());
        this.f12341g = zzgxlVarB2;
        zzgxl zzgxlVarB3 = zzgwx.b(zzdoj.a());
        this.f12342h = zzgxlVarB3;
        zzgxl zzgxlVarB4 = zzgwx.b(zzdol.a());
        this.f12343i = zzgxlVarB4;
        zzgxb zzgxbVarB = zzgxc.b(4);
        zzgxbVarB.b(zzfcu.GMS_SIGNALS, zzgxlVarB);
        zzgxbVarB.b(zzfcu.BUILD_URL, zzgxlVarB2);
        zzgxbVarB.b(zzfcu.HTTP, zzgxlVarB3);
        zzgxbVarB.b(zzfcu.PRE_PROCESS, zzgxlVarB4);
        zzgxc zzgxcVarC = zzgxbVarB.c();
        this.f12344j = zzgxcVarC;
        zzgxl zzgxlVarB5 = zzgwx.b(new zzdom(zzeqsVar, zzchyVar.f12366i, zzfbv.a(), zzgxcVarC));
        this.f12345k = zzgxlVarB5;
        zzgxi zzgxiVarA = zzgxj.a(0, 1);
        zzgxiVarA.a(zzgxlVarB5);
        zzgxj zzgxjVarC = zzgxiVarA.c();
        this.f12346l = zzgxjVarC;
        zzfdd zzfddVar = new zzfdd(zzgxjVarC);
        this.f12347m = zzfddVar;
        this.f12348n = zzgwx.b(new zzfdc(zzfbv.a(), zzchyVar.f12378o, zzfddVar));
    }

    @Override // com.google.android.gms.internal.ads.zzeqw
    public final zzepq a() {
        Context contextA = this.f12336b.f12352b.a();
        zzgxg.b(contextA);
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        zzbxx zzbxxVar = new zzbxx();
        zzgxg.b(zzfuuVar);
        zzepn zzepnVarA = zzesq.a(new zzeru(zzbxxVar, zzfuuVar, zzeql.a(this.f12335a), null), zzenn.a(), (ScheduledExecutorService) this.f12336b.f12378o.zzb(), 0);
        zzbrg zzbrgVar = new zzbrg();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f12336b.f12378o.zzb();
        Context contextA2 = this.f12336b.f12352b.a();
        zzgxg.b(contextA2);
        zzepn zzepnVarB = zzesq.b(new zzese(zzbrgVar, scheduledExecutorService, contextA2, null), (ScheduledExecutorService) this.f12336b.f12378o.zzb());
        zzbya zzbyaVar = new zzbya();
        Context contextA3 = this.f12336b.f12352b.a();
        zzgxg.b(contextA3);
        ScheduledExecutorService scheduledExecutorService2 = (ScheduledExecutorService) this.f12336b.f12378o.zzb();
        zzgxg.b(zzfuuVar);
        zzepn zzepnVarA2 = zzesr.a(zzeqe.a(zzbyaVar, contextA3, scheduledExecutorService2, zzfuuVar, zzeqm.a(this.f12335a), zzeqo.a(this.f12335a), zzeqp.a(this.f12335a)), (ScheduledExecutorService) this.f12336b.f12378o.zzb());
        zzgxg.b(zzfuuVar);
        zzepn zzepnVarC = zzesq.c(new zzesz(zzfuuVar), (ScheduledExecutorService) this.f12336b.f12378o.zzb());
        zzeso zzesoVar = zzeso.f17306a;
        Context contextA4 = this.f12336b.f12352b.a();
        zzgxg.b(contextA4);
        String strA = zzeql.a(this.f12335a);
        zzgxg.b(zzfuuVar);
        zzeqy zzeqyVar = new zzeqy(null, contextA4, strA, zzfuuVar);
        zzavt zzavtVar = new zzavt();
        zzgxg.b(zzfuuVar);
        Context contextA5 = this.f12336b.f12352b.a();
        zzgxg.b(contextA5);
        zzbac zzbacVar = new zzbac();
        zzgxg.b(zzfuuVar);
        zzbya zzbyaVar2 = new zzbya();
        zzgxg.b(zzfuuVar);
        zzbya zzbyaVar3 = new zzbya();
        int iA = zzeqm.a(this.f12335a);
        Context contextA6 = this.f12336b.f12352b.a();
        zzgxg.b(contextA6);
        zzbyj zzbyjVar = (zzbyj) this.f12336b.f12365h0.zzb();
        ScheduledExecutorService scheduledExecutorService3 = (ScheduledExecutorService) this.f12336b.f12378o.zzb();
        zzgxg.b(zzfuuVar);
        String strA2 = zzeql.a(this.f12335a);
        zzavh zzavhVar = new zzavh();
        zzbyj zzbyjVar2 = (zzbyj) this.f12336b.f12365h0.zzb();
        ScheduledExecutorService scheduledExecutorService4 = (ScheduledExecutorService) this.f12336b.f12378o.zzb();
        zzgxg.b(zzfuuVar);
        return new zzepq(contextA, zzfuuVar, zzfqp.v(zzepnVarA, zzepnVarB, zzepnVarA2, zzepnVarC, zzesoVar, zzeqyVar, new zzern(zzavtVar, zzfuuVar, contextA5, null), new zzery(zzbacVar, zzfuuVar, zzeqn.a(this.f12335a), null), new zzeqi(zzbyaVar2, zzfuuVar, zzeqq.a(this.f12335a), zzeqr.a(this.f12335a), zzeqm.a(this.f12335a), null), new zzerj(zzbyaVar3, iA, contextA6, zzbyjVar, scheduledExecutorService3, zzfuuVar, zzeql.a(this.f12335a), null), (zzepn) this.f12336b.J0.zzb(), zzerf.a(strA2, zzavhVar, zzbyjVar2, scheduledExecutorService4, zzfuuVar)), (zzfen) this.f12338d.zzb(), (zzdpi) this.f12336b.f12351a0.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzeqw
    public final zzfda b() {
        return (zzfda) this.f12348n.zzb();
    }
}
