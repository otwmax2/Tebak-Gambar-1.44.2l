package com.google.android.gms.internal.ads;

import android.os.Binder;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdvy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f15782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f15783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdwt f15784c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgws f15785d;

    zzdvy(zzfuu zzfuuVar, zzfuu zzfuuVar2, zzdwt zzdwtVar, zzgws zzgwsVar) {
        this.f15782a = zzfuuVar;
        this.f15783b = zzfuuVar2;
        this.f15784c = zzdwtVar;
        this.f15785d = zzgwsVar;
    }

    final /* synthetic */ zzfut a(zzbsv zzbsvVar) throws Exception {
        return this.f15784c.c(zzbsvVar, ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.I9)).longValue());
    }

    final /* synthetic */ zzfut b(zzbsv zzbsvVar, int i10, zzdvi zzdviVar) throws Exception {
        return ((zzdxz) this.f15785d.zzb()).Sa(zzbsvVar, i10);
    }

    public final zzfut c(final zzbsv zzbsvVar) {
        String str = zzbsvVar.f11263t;
        com.google.android.gms.ads.internal.zzt.r();
        zzfut zzfutVarG = com.google.android.gms.ads.internal.util.zzs.X(str) ? zzfuj.g(new zzdvi(1, "Ads service proxy force local")) : zzfuj.f(zzfuj.k(new zzftp() { // from class: com.google.android.gms.internal.ads.zzdvv
            @Override // com.google.android.gms.internal.ads.zzftp
            public final zzfut zza() {
                return this.f15776a.a(zzbsvVar);
            }
        }, this.f15782a), ExecutionException.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdvw
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                ExecutionException executionException = (ExecutionException) obj;
                Throwable cause = executionException.getCause();
                ExecutionException cause2 = executionException;
                if (cause != null) {
                    cause2 = executionException.getCause();
                }
                return zzfuj.g(cause2);
            }
        }, this.f15783b);
        final int callingUid = Binder.getCallingUid();
        return zzfuj.f(zzfutVarG, zzdvi.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdvx
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f15779a.b(zzbsvVar, callingUid, (zzdvi) obj);
            }
        }, this.f15783b);
    }
}
