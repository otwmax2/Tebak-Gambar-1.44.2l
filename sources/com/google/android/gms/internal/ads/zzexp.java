package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzexp implements zzeir {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f17582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f17583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzcgd f17584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzexf f17585d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzevt f17586e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzeyp f17587f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzfep f17588g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("this")
    private final zzeyv f17589h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    private zzfut f17590i;

    public zzexp(Context context, Executor executor, zzcgd zzcgdVar, zzevt zzevtVar, zzexf zzexfVar, zzeyv zzeyvVar, zzeyp zzeypVar) {
        this.f17582a = context;
        this.f17583b = executor;
        this.f17584c = zzcgdVar;
        this.f17586e = zzevtVar;
        this.f17585d = zzexfVar;
        this.f17589h = zzeyvVar;
        this.f17587f = zzeypVar;
        this.f17588g = zzcgdVar.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzdly j(zzevr zzevrVar) {
        zzdly zzdlyVarL = this.f17584c.l();
        zzctx zzctxVar = new zzctx();
        zzctxVar.d(this.f17582a);
        zzctxVar.h(((zzexo) zzevrVar).f17580a);
        zzctxVar.g(this.f17587f);
        zzdlyVarL.d(zzctxVar.i());
        zzdlyVarL.g(new zzczz().q());
        return zzdlyVarL;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0056  */
    @Override // com.google.android.gms.internal.ads.zzeir
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(com.google.android.gms.ads.internal.client.zzl r10, java.lang.String r11, com.google.android.gms.internal.ads.zzeip r12, com.google.android.gms.internal.ads.zzeiq r13) throws android.os.RemoteException {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzexp.a(com.google.android.gms.ads.internal.client.zzl, java.lang.String, com.google.android.gms.internal.ads.zzeip, com.google.android.gms.internal.ads.zzeiq):boolean");
    }

    final /* synthetic */ void h() {
        this.f17585d.v(zzezx.d(6, null, null));
    }

    final void i(int i10) {
        this.f17589h.F().a(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzeir
    public final boolean zza() {
        throw null;
    }
}
