package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzebv implements zzeat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcph f16199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f16200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdmq f16201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeyx f16202d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f16203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzfnj f16204f;

    public zzebv(zzcph zzcphVar, Context context, Executor executor, zzdmq zzdmqVar, zzeyx zzeyxVar, zzfnj zzfnjVar) {
        this.f16200b = context;
        this.f16199a = zzcphVar;
        this.f16203e = executor;
        this.f16201c = zzdmqVar;
        this.f16202d = zzeyxVar;
        this.f16204f = zzfnjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final boolean a(zzeyo zzeyoVar, zzeyc zzeycVar) {
        zzeyh zzeyhVar = zzeycVar.f17667t;
        return (zzeyhVar == null || zzeyhVar.f17690a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final zzfut b(final zzeyo zzeyoVar, final zzeyc zzeycVar) {
        return zzfuj.m(zzfuj.h(null), new zzftq() { // from class: com.google.android.gms.internal.ads.zzebp
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f16190a.c(zzeyoVar, zzeycVar, obj);
            }
        }, this.f16203e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzfut c(zzeyo zzeyoVar, zzeyc zzeycVar, Object obj) throws Exception {
        View zzdmtVar;
        com.google.android.gms.ads.internal.client.zzq zzqVarA = zzezb.a(this.f16200b, zzeycVar.f17669v);
        final zzcei zzceiVarA = this.f16201c.a(zzqVarA, zzeycVar, zzeyoVar.f17703b.f17700b);
        zzceiVarA.i0(zzeycVar.X);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10243h7)).booleanValue() && zzeycVar.f17647h0) {
            zzdmtVar = zzcpy.a(this.f16200b, (View) zzceiVarA, zzeycVar);
        } else {
            zzdmtVar = new zzdmt(this.f16200b, (View) zzceiVarA, (com.google.android.gms.ads.internal.util.zzas) this.f16204f.a(zzeycVar));
        }
        final zzcol zzcolVarA = this.f16199a.a(new zzcrb(zzeyoVar, zzeycVar, null), new zzcor(zzdmtVar, zzceiVarA, new zzcqk() { // from class: com.google.android.gms.internal.ads.zzebq
            @Override // com.google.android.gms.internal.ads.zzcqk
            public final com.google.android.gms.ads.internal.client.zzdq zza() {
                return zzceiVarA.r();
            }
        }, zzezb.b(zzqVarA)));
        zzcolVarA.j().i(zzceiVarA, false, null);
        zzcvg zzcvgVarB = zzcolVarA.b();
        zzcvi zzcviVar = new zzcvi() { // from class: com.google.android.gms.internal.ads.zzebr
            @Override // com.google.android.gms.internal.ads.zzcvi
            public final void j() {
                zzcei zzceiVar = zzceiVarA;
                if (zzceiVar.J() != null) {
                    zzceiVar.J().r();
                }
            }
        };
        zzfuu zzfuuVar = zzbzn.f11619f;
        zzcvgVarB.L0(zzcviVar, zzfuuVar);
        zzcolVarA.j();
        zzeyh zzeyhVar = zzeycVar.f17667t;
        zzfut zzfutVarJ = zzdmp.j(zzceiVarA, zzeyhVar.f17691b, zzeyhVar.f17690a);
        if (zzeycVar.N) {
            zzfutVarJ.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebs
                @Override // java.lang.Runnable
                public final void run() {
                    zzceiVarA.P();
                }
            }, this.f16203e);
        }
        zzfutVarJ.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzebt
            @Override // java.lang.Runnable
            public final void run() {
                this.f16196o.d(zzceiVarA);
            }
        }, this.f16203e);
        return zzfuj.l(zzfutVarJ, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzebu
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj2) {
                return zzcolVarA.h();
            }
        }, zzfuuVar);
    }

    final /* synthetic */ void d(zzcei zzceiVar) {
        zzceiVar.n1();
        zzcfe zzcfeVarR = zzceiVar.r();
        com.google.android.gms.ads.internal.client.zzfl zzflVar = this.f16202d.f17728a;
        if (zzflVar == null || zzcfeVarR == null) {
            return;
        }
        zzcfeVarR.Wa(zzflVar);
    }
}
