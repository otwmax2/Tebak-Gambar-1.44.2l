package com.google.android.gms.internal.ads;

import android.os.Binder;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ScheduledExecutorService f15674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f15675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfuu f15676c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzduv f15677d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgws f15678e;

    public zzdue(ScheduledExecutorService scheduledExecutorService, zzfuu zzfuuVar, zzfuu zzfuuVar2, zzduv zzduvVar, zzgws zzgwsVar) {
        this.f15674a = scheduledExecutorService;
        this.f15675b = zzfuuVar;
        this.f15676c = zzfuuVar2;
        this.f15677d = zzduvVar;
        this.f15678e = zzgwsVar;
    }

    final /* synthetic */ zzfut a(zzbtn zzbtnVar, int i10, Throwable th) throws Exception {
        return ((zzdxp) this.f15678e.zzb()).Ua(zzbtnVar, i10);
    }

    public final zzfut b(final zzbtn zzbtnVar) {
        zzfut zzfutVarE;
        String str = zzbtnVar.f11275r;
        com.google.android.gms.ads.internal.zzt.r();
        if (com.google.android.gms.ads.internal.util.zzs.X(str)) {
            zzfutVarE = zzfuj.g(new zzdvi(1));
        } else {
            zzfutVarE = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10188c7)).booleanValue() ? this.f15676c.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzduc
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f15669a.c(zzbtnVar);
                }
            }) : this.f15677d.b(zzbtnVar);
        }
        final int callingUid = Binder.getCallingUid();
        return zzfuj.f((zzfua) zzfuj.n(zzfua.D(zzfutVarE), ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10186c5)).intValue(), TimeUnit.SECONDS, this.f15674a), Throwable.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdud
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f15671a.a(zzbtnVar, callingUid, (Throwable) obj);
            }
        }, this.f15675b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ InputStream c(zzbtn zzbtnVar) throws Exception {
        return (InputStream) this.f15677d.b(zzbtnVar).get(((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10186c5)).intValue(), TimeUnit.SECONDS);
    }
}
