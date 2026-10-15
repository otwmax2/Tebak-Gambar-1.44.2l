package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzebf implements zzeat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcny f16156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f16157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdmq f16158c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeyx f16159d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f16160e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzbzg f16161f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzbhr f16162g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f16163h = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10211e8)).booleanValue();

    public zzebf(zzcny zzcnyVar, Context context, Executor executor, zzdmq zzdmqVar, zzeyx zzeyxVar, zzbzg zzbzgVar, zzbhr zzbhrVar) {
        this.f16157b = context;
        this.f16156a = zzcnyVar;
        this.f16160e = executor;
        this.f16158c = zzdmqVar;
        this.f16159d = zzeyxVar;
        this.f16161f = zzbzgVar;
        this.f16162g = zzbhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final boolean a(zzeyo zzeyoVar, zzeyc zzeycVar) {
        zzeyh zzeyhVar = zzeycVar.f17667t;
        return (zzeyhVar == null || zzeyhVar.f17690a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final zzfut b(final zzeyo zzeyoVar, final zzeyc zzeycVar) {
        final zzdmu zzdmuVar = new zzdmu();
        zzfut zzfutVarM = zzfuj.m(zzfuj.h(null), new zzftq() { // from class: com.google.android.gms.internal.ads.zzebd
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f16151a.c(zzeycVar, zzeyoVar, zzdmuVar, obj);
            }
        }, this.f16160e);
        zzfutVarM.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebe
            @Override // java.lang.Runnable
            public final void run() {
                zzdmuVar.b();
            }
        }, this.f16160e);
        return zzfutVarM;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzfut c(final zzeyc zzeycVar, zzeyo zzeyoVar, zzdmu zzdmuVar, Object obj) throws Exception {
        final zzcei zzceiVarA = this.f16158c.a(this.f16159d.f17732e, zzeycVar, zzeyoVar.f17703b.f17700b);
        zzceiVarA.i0(zzeycVar.X);
        zzdmuVar.a(this.f16157b, (View) zzceiVarA);
        zzbzs zzbzsVar = new zzbzs();
        final zzcnv zzcnvVarB = this.f16156a.b(new zzcrb(zzeyoVar, zzeycVar, null), new zzdcz(new zzebh(this.f16161f, zzbzsVar, zzeycVar, zzceiVarA, this.f16159d, this.f16163h, this.f16162g), zzceiVarA), new zzcnw(zzeycVar.f17635b0));
        zzcnvVarB.j().i(zzceiVarA, false, this.f16163h ? this.f16162g : null);
        zzbzsVar.c(zzcnvVarB);
        zzcnvVarB.b().L0(new zzcvi() { // from class: com.google.android.gms.internal.ads.zzebb
            @Override // com.google.android.gms.internal.ads.zzcvi
            public final void j() {
                zzcei zzceiVar = zzceiVarA;
                if (zzceiVar.J() != null) {
                    zzceiVar.J().r();
                }
            }
        }, zzbzn.f11619f);
        zzcnvVarB.j();
        zzeyh zzeyhVar = zzeycVar.f17667t;
        return zzfuj.l(zzdmp.j(zzceiVarA, zzeyhVar.f17691b, zzeyhVar.f17690a), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzebc
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj2) {
                zzcei zzceiVar = zzceiVarA;
                zzeyc zzeycVar2 = zzeycVar;
                zzcnv zzcnvVar = zzcnvVarB;
                if (zzeycVar2.N) {
                    zzceiVar.P();
                }
                zzceiVar.n1();
                zzceiVar.onPause();
                return zzcnvVar.h();
            }
        }, this.f16160e);
    }
}
