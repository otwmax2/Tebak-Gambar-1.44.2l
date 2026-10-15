package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzefh implements zzeat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdmq f16514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdlz f16515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeyx f16516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f16517e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzbzg f16518f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzbhr f16519g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f16520h = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10211e8)).booleanValue();

    public zzefh(Context context, zzbzg zzbzgVar, zzeyx zzeyxVar, Executor executor, zzdlz zzdlzVar, zzdmq zzdmqVar, zzbhr zzbhrVar) {
        this.f16513a = context;
        this.f16516d = zzeyxVar;
        this.f16515c = zzdlzVar;
        this.f16517e = executor;
        this.f16518f = zzbzgVar;
        this.f16514b = zzdmqVar;
        this.f16519g = zzbhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final boolean a(zzeyo zzeyoVar, zzeyc zzeycVar) {
        zzeyh zzeyhVar = zzeycVar.f17667t;
        return (zzeyhVar == null || zzeyhVar.f17690a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final zzfut b(final zzeyo zzeyoVar, final zzeyc zzeycVar) {
        final zzdmu zzdmuVar = new zzdmu();
        zzfut zzfutVarM = zzfuj.m(zzfuj.h(null), new zzftq() { // from class: com.google.android.gms.internal.ads.zzefa
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f16491a.c(zzeycVar, zzeyoVar, zzdmuVar, obj);
            }
        }, this.f16517e);
        zzfutVarM.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzefb
            @Override // java.lang.Runnable
            public final void run() {
                zzdmuVar.b();
            }
        }, this.f16517e);
        return zzfutVarM;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzfut c(final zzeyc zzeycVar, zzeyo zzeyoVar, zzdmu zzdmuVar, Object obj) throws Exception {
        final zzcei zzceiVarA = this.f16514b.a(this.f16516d.f17732e, zzeycVar, zzeyoVar.f17703b.f17700b);
        zzceiVarA.i0(zzeycVar.X);
        zzdmuVar.a(this.f16513a, (View) zzceiVarA);
        zzbzs zzbzsVar = new zzbzs();
        final zzdlv zzdlvVarD = this.f16515c.d(new zzcrb(zzeyoVar, zzeycVar, null), new zzdlw(new zzefg(this.f16513a, this.f16514b, this.f16516d, this.f16518f, zzeycVar, zzbzsVar, zzceiVarA, this.f16519g, this.f16520h), zzceiVarA));
        zzbzsVar.c(zzdlvVarD);
        zzbif.b(zzceiVarA, zzdlvVarD.i());
        zzdlvVarD.b().L0(new zzcvi() { // from class: com.google.android.gms.internal.ads.zzefc
            @Override // com.google.android.gms.internal.ads.zzcvi
            public final void j() {
                zzcei zzceiVar = zzceiVarA;
                if (zzceiVar.J() != null) {
                    zzceiVar.J().r();
                }
            }
        }, zzbzn.f11619f);
        zzdlvVarD.l().i(zzceiVarA, true, this.f16520h ? this.f16519g : null);
        zzdlvVarD.l();
        zzeyh zzeyhVar = zzeycVar.f17667t;
        return zzfuj.l(zzdmp.j(zzceiVarA, zzeyhVar.f17691b, zzeyhVar.f17690a), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzefd
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj2) {
                zzcei zzceiVar = zzceiVarA;
                zzeyc zzeycVar2 = zzeycVar;
                zzdlv zzdlvVar = zzdlvVarD;
                if (zzeycVar2.N) {
                    zzceiVar.P();
                }
                zzceiVar.n1();
                zzceiVar.onPause();
                return zzdlvVar.k();
            }
        }, this.f16517e);
    }
}
