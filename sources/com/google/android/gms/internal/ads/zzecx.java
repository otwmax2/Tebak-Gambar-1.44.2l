package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzecx implements zzeat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdmq f16287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzddw f16288c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeyx f16289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f16290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzbzg f16291f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzbhr f16292g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f16293h = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10211e8)).booleanValue();

    public zzecx(Context context, zzbzg zzbzgVar, zzeyx zzeyxVar, Executor executor, zzddw zzddwVar, zzdmq zzdmqVar, zzbhr zzbhrVar) {
        this.f16286a = context;
        this.f16289d = zzeyxVar;
        this.f16288c = zzddwVar;
        this.f16290e = executor;
        this.f16291f = zzbzgVar;
        this.f16287b = zzdmqVar;
        this.f16292g = zzbhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final boolean a(zzeyo zzeyoVar, zzeyc zzeycVar) {
        zzeyh zzeyhVar = zzeycVar.f17667t;
        return (zzeyhVar == null || zzeyhVar.f17690a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final zzfut b(final zzeyo zzeyoVar, final zzeyc zzeycVar) {
        final zzdmu zzdmuVar = new zzdmu();
        zzfut zzfutVarM = zzfuj.m(zzfuj.h(null), new zzftq() { // from class: com.google.android.gms.internal.ads.zzecs
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f16268a.c(zzeycVar, zzeyoVar, zzdmuVar, obj);
            }
        }, this.f16290e);
        zzfutVarM.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzect
            @Override // java.lang.Runnable
            public final void run() {
                zzdmuVar.b();
            }
        }, this.f16290e);
        return zzfutVarM;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzfut c(final zzeyc zzeycVar, zzeyo zzeyoVar, zzdmu zzdmuVar, Object obj) throws Exception {
        final zzcei zzceiVarA = this.f16287b.a(this.f16289d.f17732e, zzeycVar, zzeyoVar.f17703b.f17700b);
        zzceiVarA.i0(zzeycVar.X);
        zzdmuVar.a(this.f16286a, (View) zzceiVarA);
        zzbzs zzbzsVar = new zzbzs();
        final zzdcw zzdcwVarC = this.f16288c.c(new zzcrb(zzeyoVar, zzeycVar, null), new zzdcz(new zzecw(this.f16286a, this.f16291f, zzbzsVar, zzeycVar, zzceiVarA, this.f16289d, this.f16293h, this.f16292g), zzceiVarA));
        zzbzsVar.c(zzdcwVarC);
        zzdcwVarC.b().L0(new zzcvi() { // from class: com.google.android.gms.internal.ads.zzecu
            @Override // com.google.android.gms.internal.ads.zzcvi
            public final void j() {
                zzcei zzceiVar = zzceiVarA;
                if (zzceiVar.J() != null) {
                    zzceiVar.J().r();
                }
            }
        }, zzbzn.f11619f);
        zzdcwVarC.k().i(zzceiVarA, true, this.f16293h ? this.f16292g : null);
        zzdcwVarC.k();
        zzeyh zzeyhVar = zzeycVar.f17667t;
        return zzfuj.l(zzdmp.j(zzceiVarA, zzeyhVar.f17691b, zzeyhVar.f17690a), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzecv
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj2) {
                zzcei zzceiVar = zzceiVarA;
                zzeyc zzeycVar2 = zzeycVar;
                zzdcw zzdcwVar = zzdcwVarC;
                if (zzeycVar2.N) {
                    zzceiVar.P();
                }
                zzceiVar.n1();
                zzceiVar.onPause();
                return zzdcwVar.i();
            }
        }, this.f16290e);
    }
}
