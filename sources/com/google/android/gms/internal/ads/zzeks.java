package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeks implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final zzbyj f16848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    AppSetIdClient f16849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f16850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfuu f16851d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f16852e;

    zzeks(Context context, zzbyj zzbyjVar, ScheduledExecutorService scheduledExecutorService, zzfuu zzfuuVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10381u2)).booleanValue()) {
            this.f16849b = AppSet.a(context);
        }
        this.f16852e = context;
        this.f16848a = zzbyjVar;
        this.f16850c = scheduledExecutorService;
        this.f16851d = zzfuuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 11;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10337q2)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10392v2)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10348r2)).booleanValue()) {
                    return zzfuj.l(zzfkz.a(this.f16849b.a()), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzekp
                        @Override // com.google.android.gms.internal.ads.zzfnj
                        public final Object a(Object obj) {
                            AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
                            return new zzekt(appSetIdInfo.a(), appSetIdInfo.b());
                        }
                    }, zzbzn.f11619f);
                }
                Task<AppSetIdInfo> taskA = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10381u2)).booleanValue() ? zzfaa.a(this.f16852e) : this.f16849b.a();
                if (taskA == null) {
                    return zzfuj.h(new zzekt(null, -1));
                }
                zzfut zzfutVarM = zzfuj.m(zzfkz.a(taskA), new zzftq() { // from class: com.google.android.gms.internal.ads.zzekq
                    @Override // com.google.android.gms.internal.ads.zzftq
                    public final zzfut a(Object obj) {
                        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
                        return appSetIdInfo == null ? zzfuj.h(new zzekt(null, -1)) : zzfuj.h(new zzekt(appSetIdInfo.a(), appSetIdInfo.b()));
                    }
                }, zzbzn.f11619f);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10359s2)).booleanValue()) {
                    zzfutVarM = zzfuj.n(zzfutVarM, ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10370t2)).longValue(), TimeUnit.MILLISECONDS, this.f16850c);
                }
                return zzfuj.e(zzfutVarM, Exception.class, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzekr
                    @Override // com.google.android.gms.internal.ads.zzfnj
                    public final Object a(Object obj) {
                        this.f16847a.f16848a.u((Exception) obj, "AppSetIdInfoSignal");
                        return new zzekt(null, -1);
                    }
                }, this.f16851d);
            }
        }
        return zzfuj.h(new zzekt(null, -1));
    }
}
