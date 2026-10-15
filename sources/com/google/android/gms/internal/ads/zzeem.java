package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeem implements zzftq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfda f16436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcuq f16437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzffb f16438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfff f16439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f16440e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ScheduledExecutorService f16441f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzcqp f16442g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzeeh f16443h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzeay f16444i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Context f16445j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzfen f16446k;

    zzeem(Context context, zzfda zzfdaVar, zzeeh zzeehVar, zzcuq zzcuqVar, zzffb zzffbVar, zzfff zzfffVar, zzcqp zzcqpVar, Executor executor, ScheduledExecutorService scheduledExecutorService, zzeay zzeayVar, zzfen zzfenVar) {
        this.f16445j = context;
        this.f16436a = zzfdaVar;
        this.f16443h = zzeehVar;
        this.f16437b = zzcuqVar;
        this.f16438c = zzffbVar;
        this.f16439d = zzfffVar;
        this.f16442g = zzcqpVar;
        this.f16440e = executor;
        this.f16441f = scheduledExecutorService;
        this.f16444i = zzeayVar;
        this.f16446k = zzfenVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    @Override // com.google.android.gms.internal.ads.zzftq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzfut a(java.lang.Object r9) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 371
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeem.a(java.lang.Object):com.google.android.gms.internal.ads.zzfut");
    }

    final /* synthetic */ zzfut b(zzeyc zzeycVar, zzeyo zzeyoVar, zzeat zzeatVar, Throwable th) throws Exception {
        zzfec zzfecVarA = zzfeb.a(this.f16445j, 12);
        zzfecVarA.O(zzeycVar.F);
        zzfecVarA.f();
        zzeeh zzeehVar = this.f16443h;
        zzfut zzfutVarN = zzfuj.n(zzeatVar.b(zzeyoVar, zzeycVar), zzeycVar.S, TimeUnit.MILLISECONDS, this.f16441f);
        zzeehVar.e(zzeyoVar, zzeycVar, zzfutVarN, this.f16438c);
        zzfem.a(zzfutVarN, this.f16446k, zzfecVarA);
        return zzfutVarN;
    }
}
