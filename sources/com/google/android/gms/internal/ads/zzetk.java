package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzetk implements zzeir {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f17343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f17344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final zzcgd f17345c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeua f17346d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzevt f17347e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzbzg f17348f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ViewGroup f17349g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzfep f17350h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    private final zzeyv f17351i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private zzfut f17352j;

    protected zzetk(Context context, Executor executor, zzcgd zzcgdVar, zzevt zzevtVar, zzeua zzeuaVar, zzeyv zzeyvVar, zzbzg zzbzgVar) {
        this.f17343a = context;
        this.f17344b = executor;
        this.f17345c = zzcgdVar;
        this.f17347e = zzevtVar;
        this.f17346d = zzeuaVar;
        this.f17351i = zzeyvVar;
        this.f17348f = zzbzgVar;
        this.f17349g = new FrameLayout(context);
        this.f17350h = zzcgdVar.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized zzctv l(zzevr zzevrVar) {
        zzetj zzetjVar = (zzetj) zzevrVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10441z7)).booleanValue()) {
            zzcoh zzcohVar = new zzcoh(this.f17349g);
            zzctx zzctxVar = new zzctx();
            zzctxVar.d(this.f17343a);
            zzctxVar.h(zzetjVar.f17342a);
            zzctz zzctzVarI = zzctxVar.i();
            zzczz zzczzVar = new zzczz();
            zzczzVar.f(this.f17346d, this.f17344b);
            zzczzVar.o(this.f17346d, this.f17344b);
            return d(zzcohVar, zzctzVarI, zzczzVar.q());
        }
        zzeua zzeuaVarF = zzeua.f(this.f17346d);
        zzczz zzczzVar2 = new zzczz();
        zzczzVar2.e(zzeuaVarF, this.f17344b);
        zzczzVar2.j(zzeuaVarF, this.f17344b);
        zzczzVar2.k(zzeuaVarF, this.f17344b);
        zzczzVar2.l(zzeuaVarF, this.f17344b);
        zzczzVar2.f(zzeuaVarF, this.f17344b);
        zzczzVar2.o(zzeuaVarF, this.f17344b);
        zzczzVar2.p(zzeuaVarF);
        zzcoh zzcohVar2 = new zzcoh(this.f17349g);
        zzctx zzctxVar2 = new zzctx();
        zzctxVar2.d(this.f17343a);
        zzctxVar2.h(zzetjVar.f17342a);
        return d(zzcohVar2, zzctxVar2.i(), zzczzVar2.q());
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // com.google.android.gms.internal.ads.zzeir
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean a(com.google.android.gms.ads.internal.client.zzl r8, java.lang.String r9, com.google.android.gms.internal.ads.zzeip r10, com.google.android.gms.internal.ads.zzeiq r11) throws android.os.RemoteException {
        /*
            Method dump skipped, instruction units count: 247
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzetk.a(com.google.android.gms.ads.internal.client.zzl, java.lang.String, com.google.android.gms.internal.ads.zzeip, com.google.android.gms.internal.ads.zzeiq):boolean");
    }

    protected abstract zzctv d(zzcoh zzcohVar, zzctz zzctzVar, zzdab zzdabVar);

    final /* synthetic */ void j() {
        this.f17346d.v(zzezx.d(6, null, null));
    }

    public final void k(com.google.android.gms.ads.internal.client.zzw zzwVar) {
        this.f17351i.K(zzwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeir
    public final boolean zza() {
        zzfut zzfutVar = this.f17352j;
        return (zzfutVar == null || zzfutVar.isDone()) ? false : true;
    }
}
