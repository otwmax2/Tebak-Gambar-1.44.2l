package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdwe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f15796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f15797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdww f15798c;

    zzdwe(zzfuu zzfuuVar, zzfuu zzfuuVar2, zzdww zzdwwVar) {
        this.f15796a = zzfuuVar;
        this.f15797b = zzfuuVar2;
        this.f15798c = zzdwwVar;
    }

    final /* synthetic */ zzfut a(zzbsr zzbsrVar) throws Exception {
        return this.f15798c.c(zzbsrVar, ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.H9)).longValue());
    }

    public final zzfut b(final zzbsr zzbsrVar) {
        String str = zzbsrVar.f11248p;
        com.google.android.gms.ads.internal.zzt.r();
        return zzfuj.m(zzfuj.f(zzfua.D(com.google.android.gms.ads.internal.util.zzs.X(str) ? zzfuj.g(new zzdvi(1, "Ads signal service force local")) : zzfuj.f(zzfuj.k(new zzftp() { // from class: com.google.android.gms.internal.ads.zzdwa
            @Override // com.google.android.gms.internal.ads.zzftp
            public final zzfut zza() {
                return this.f15791a.a(zzbsrVar);
            }
        }, this.f15796a), ExecutionException.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdwb
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
        }, this.f15797b)), zzdvi.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdwc
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzfuj.h(null);
            }
        }, this.f15797b), new zzftq() { // from class: com.google.android.gms.internal.ads.zzdwd
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                InputStream inputStream = (InputStream) obj;
                JSONObject jSONObject = new JSONObject();
                if (inputStream == null) {
                    return zzfuj.h(jSONObject);
                }
                try {
                    com.google.android.gms.ads.internal.zzt.r();
                    jSONObject = new JSONObject(com.google.android.gms.ads.internal.util.zzs.j(new InputStreamReader(inputStream)));
                } catch (IOException | JSONException e10) {
                    com.google.android.gms.ads.internal.zzt.q().u(e10, "AdsServiceSignalTask.startAdsServiceSignalTask");
                }
                return zzfuj.h(jSONObject);
            }
        }, this.f15797b);
    }
}
