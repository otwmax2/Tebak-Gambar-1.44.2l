package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdwt extends zzdwz {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private zzbsv f15839v;

    zzdwt(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f15851s = context;
        this.f15852t = com.google.android.gms.ads.internal.zzt.v().b();
        this.f15853u = scheduledExecutorService;
    }

    public final synchronized zzfut c(zzbsv zzbsvVar, long j10) {
        if (this.f15848p) {
            return zzfuj.n(this.f15847o, j10, TimeUnit.MILLISECONDS, this.f15853u);
        }
        this.f15848p = true;
        this.f15839v = zzbsvVar;
        a();
        zzfut zzfutVarN = zzfuj.n(this.f15847o, j10, TimeUnit.MILLISECONDS, this.f15853u);
        zzfutVarN.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdws
            @Override // java.lang.Runnable
            public final void run() {
                this.f15838o.b();
            }
        }, zzbzn.f11619f);
        return zzfutVarN;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final synchronized void t1(Bundle bundle) {
        if (this.f15849q) {
            return;
        }
        this.f15849q = true;
        try {
            try {
                this.f15850r.o0().w2(this.f15839v, new zzdwy(this));
            } catch (RemoteException unused) {
                this.f15847o.d(new zzdvi(1));
            }
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.q().u(th, "RemoteAdsServiceProxyClientTask.onConnected");
            this.f15847o.d(th);
        }
    }
}
