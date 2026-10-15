package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdww extends zzdwz {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private zzbsr f15843v;

    zzdww(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f15851s = context;
        this.f15852t = com.google.android.gms.ads.internal.zzt.v().b();
        this.f15853u = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzdwz, com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void P0(int i10) {
        String str = String.format(Locale.US, "Remote ad service connection suspended, cause: %d.", Integer.valueOf(i10));
        zzbza.b(str);
        this.f15847o.d(new zzdvi(1, str));
    }

    public final synchronized zzfut c(zzbsr zzbsrVar, long j10) {
        if (this.f15848p) {
            return zzfuj.n(this.f15847o, j10, TimeUnit.MILLISECONDS, this.f15853u);
        }
        this.f15848p = true;
        this.f15843v = zzbsrVar;
        a();
        zzfut zzfutVarN = zzfuj.n(this.f15847o, j10, TimeUnit.MILLISECONDS, this.f15853u);
        zzfutVarN.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdwv
            @Override // java.lang.Runnable
            public final void run() {
                this.f15842o.b();
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
                this.f15850r.o0().X9(this.f15843v, new zzdwy(this));
            } catch (RemoteException unused) {
                this.f15847o.d(new zzdvi(1));
            }
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.q().u(th, "RemoteAdsServiceSignalClientTask.onConnected");
            this.f15847o.d(th);
        }
    }
}
