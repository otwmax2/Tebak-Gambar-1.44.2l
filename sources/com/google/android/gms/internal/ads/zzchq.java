package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzchq extends zzequ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzesa f12319a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzchy f12320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzchq f12321c = this;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f12322d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f12323e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f12324f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f12325g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f12326h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzgxl f12327i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzgxl f12328j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzgxl f12329k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzgxl f12330l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzgxl f12331m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzgxl f12332n;

    /* synthetic */ zzchq(zzchy zzchyVar, zzesa zzesaVar, zzchp zzchpVar) {
        this.f12320b = zzchyVar;
        this.f12319a = zzesaVar;
        zzesc zzescVar = new zzesc(zzesaVar);
        this.f12322d = zzescVar;
        zzgxl zzgxlVarB = zzgwx.b(zzdoh.a());
        this.f12323e = zzgxlVarB;
        zzgxl zzgxlVarB2 = zzgwx.b(zzdof.a());
        this.f12324f = zzgxlVarB2;
        zzgxl zzgxlVarB3 = zzgwx.b(zzdoj.a());
        this.f12325g = zzgxlVarB3;
        zzgxl zzgxlVarB4 = zzgwx.b(zzdol.a());
        this.f12326h = zzgxlVarB4;
        zzgxb zzgxbVarB = zzgxc.b(4);
        zzgxbVarB.b(zzfcu.GMS_SIGNALS, zzgxlVarB);
        zzgxbVarB.b(zzfcu.BUILD_URL, zzgxlVarB2);
        zzgxbVarB.b(zzfcu.HTTP, zzgxlVarB3);
        zzgxbVarB.b(zzfcu.PRE_PROCESS, zzgxlVarB4);
        zzgxc zzgxcVarC = zzgxbVarB.c();
        this.f12327i = zzgxcVarC;
        zzgxl zzgxlVarB5 = zzgwx.b(new zzdom(zzescVar, zzchyVar.f12366i, zzfbv.a(), zzgxcVarC));
        this.f12328j = zzgxlVarB5;
        zzgxi zzgxiVarA = zzgxj.a(0, 1);
        zzgxiVarA.a(zzgxlVarB5);
        zzgxj zzgxjVarC = zzgxiVarA.c();
        this.f12329k = zzgxjVarC;
        zzfdd zzfddVar = new zzfdd(zzgxjVarC);
        this.f12330l = zzfddVar;
        this.f12331m = zzgwx.b(new zzfdc(zzfbv.a(), zzchyVar.f12378o, zzfddVar));
        this.f12332n = zzgwx.b(new zzfeo(zzchyVar.I));
    }

    @Override // com.google.android.gms.internal.ads.zzequ
    public final zzepq a() {
        Context contextA = this.f12320b.f12352b.a();
        zzgxg.b(contextA);
        zzbxx zzbxxVar = new zzbxx();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        zzeru zzeruVar = new zzeru(zzbxxVar, zzfuuVar, zzesb.a(this.f12319a), null);
        zzgxg.b(zzfuuVar);
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f12320b.f12378o.zzb();
        zzfen zzfenVar = (zzfen) this.f12332n.zzb();
        zzdpi zzdpiVar = (zzdpi) this.f12320b.f12351a0.zzb();
        HashSet hashSet = new HashSet();
        hashSet.add(new zzent(zzeruVar, 0L, scheduledExecutorService));
        return new zzepq(contextA, zzfuuVar, hashSet, zzfenVar, zzdpiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzequ
    public final zzfda b() {
        return (zzfda) this.f12331m.zzb();
    }
}
