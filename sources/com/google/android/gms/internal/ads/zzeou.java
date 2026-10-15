package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.vungle.mediation.BuildConfig;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeou implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f17096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f17097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f17098d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzeyx f17099e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzcgd f17100f;

    zzeou(zzfuu zzfuuVar, ScheduledExecutorService scheduledExecutorService, String str, Context context, zzeyx zzeyxVar, zzcgd zzcgdVar) {
        this.f17096b = zzfuuVar;
        this.f17097c = scheduledExecutorService;
        this.f17095a = str;
        this.f17098d = context;
        this.f17099e = zzeyxVar;
        this.f17100f = zzcgdVar;
    }

    public static /* synthetic */ zzfut a(zzeou zzeouVar) {
        String strName = zzeouVar.f17095a;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.I6)).booleanValue()) {
            strName = AdFormat.UNKNOWN.name();
        }
        com.google.android.gms.ads.nonagon.signalgeneration.zzg zzgVarR = zzeouVar.f17100f.r();
        zzctx zzctxVar = new zzctx();
        zzctxVar.d(zzeouVar.f17098d);
        zzeyv zzeyvVar = new zzeyv();
        zzeyvVar.J("adUnitId");
        zzeyvVar.e(zzeouVar.f17099e.f17731d);
        zzeyvVar.I(new com.google.android.gms.ads.internal.client.zzq());
        zzctxVar.h(zzeyvVar.g());
        zzgVarR.b(zzctxVar.i());
        com.google.android.gms.ads.nonagon.signalgeneration.zzae zzaeVar = new com.google.android.gms.ads.nonagon.signalgeneration.zzae();
        zzaeVar.a(strName);
        zzgVarR.c(zzaeVar.b());
        new zzczz();
        return zzfuj.e(zzfuj.l((zzfua) zzfuj.n(zzfua.D(zzgVarR.a().c()), ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.J6)).longValue(), TimeUnit.MILLISECONDS, zzeouVar.f17097c), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzeos
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                com.google.android.gms.ads.nonagon.signalgeneration.zzao zzaoVar = (com.google.android.gms.ads.nonagon.signalgeneration.zzao) obj;
                return zzaoVar != null ? new zzeov(zzaoVar.f6410a) : new zzeov(null);
            }
        }, zzeouVar.f17096b), Exception.class, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzeot
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                zzbza.e(BuildConfig.FLAVOR, (Exception) obj);
                return new zzeov(null);
            }
        }, zzeouVar.f17096b);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 33;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.H6)).booleanValue() || "adUnitId".equals(this.f17099e.f17733f)) ? this.f17096b.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzeoq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeov(null);
            }
        }) : zzfuj.k(new zzftp() { // from class: com.google.android.gms.internal.ads.zzeor
            @Override // com.google.android.gms.internal.ads.zzftp
            public final zzfut zza() {
                return zzeou.a(this.f17092a);
            }
        }, this.f17096b);
    }
}
