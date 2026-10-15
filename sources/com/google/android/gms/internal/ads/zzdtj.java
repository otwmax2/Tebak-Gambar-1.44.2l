package com.google.android.gms.internal.ads;

import android.os.Binder;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdtj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f15641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f15642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdur f15643c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgws f15644d;

    public zzdtj(zzfuu zzfuuVar, zzfuu zzfuuVar2, zzdur zzdurVar, zzgws zzgwsVar) {
        this.f15641a = zzfuuVar;
        this.f15642b = zzfuuVar2;
        this.f15643c = zzdurVar;
        this.f15644d = zzgwsVar;
    }

    final /* synthetic */ zzfut a(zzbtn zzbtnVar, int i10, zzdvi zzdviVar) throws Exception {
        return ((zzdxp) this.f15644d.zzb()).Ta(zzbtnVar, i10);
    }

    public final zzfut b(final zzbtn zzbtnVar) {
        String str = zzbtnVar.f11275r;
        com.google.android.gms.ads.internal.zzt.r();
        zzfut zzfutVarG = com.google.android.gms.ads.internal.util.zzs.X(str) ? zzfuj.g(new zzdvi(1)) : zzfuj.f(this.f15641a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzdtg
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f15635a.c(zzbtnVar);
            }
        }), ExecutionException.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdth
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzfuj.g(((ExecutionException) obj).getCause());
            }
        }, this.f15642b);
        final int callingUid = Binder.getCallingUid();
        return zzfuj.f(zzfutVarG, zzdvi.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdti
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f15638a.a(zzbtnVar, callingUid, (zzdvi) obj);
            }
        }, this.f15642b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ InputStream c(zzbtn zzbtnVar) throws Exception {
        zzbzs zzbzsVar;
        final zzdur zzdurVar = this.f15643c;
        synchronized (zzdurVar.f15727p) {
            if (zzdurVar.f15728q) {
                zzbzsVar = zzdurVar.f15726o;
            } else {
                zzdurVar.f15728q = true;
                zzdurVar.f15730s = zzbtnVar;
                zzdurVar.f15731t.v();
                zzdurVar.f15726o.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzduq
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdurVar.a();
                    }
                }, zzbzn.f11619f);
                zzbzsVar = zzdurVar.f15726o;
            }
        }
        return (InputStream) zzbzsVar.get(((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10186c5)).intValue(), TimeUnit.SECONDS);
    }
}
