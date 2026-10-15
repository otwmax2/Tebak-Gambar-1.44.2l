package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzduj implements zzdvh {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Pattern f15687h = Pattern.compile("Received error HTTP response code: (.*)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdtj f15688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f15689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzeyx f15690c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ScheduledExecutorService f15691d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzdzf f15692e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzfen f15693f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Context f15694g;

    zzduj(Context context, zzeyx zzeyxVar, zzdtj zzdtjVar, zzfuu zzfuuVar, ScheduledExecutorService scheduledExecutorService, zzdzf zzdzfVar, zzfen zzfenVar) {
        this.f15694g = context;
        this.f15690c = zzeyxVar;
        this.f15688a = zzdtjVar;
        this.f15689b = zzfuuVar;
        this.f15691d = scheduledExecutorService;
        this.f15692e = zzdzfVar;
        this.f15693f = zzfenVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdvh
    public final zzfut a(zzbtn zzbtnVar) {
        zzfut zzfutVarB = this.f15688a.b(zzbtnVar);
        zzfec zzfecVarA = zzfeb.a(this.f15694g, 11);
        zzfem.d(zzfutVarB, zzfecVarA);
        zzfut zzfutVarM = zzfuj.m(zzfutVarB, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdug
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f15684a.c((InputStream) obj);
            }
        }, this.f15689b);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10175b5)).booleanValue()) {
            zzfutVarM = zzfuj.f(zzfuj.n(zzfutVarM, ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10186c5)).intValue(), TimeUnit.SECONDS, this.f15691d), TimeoutException.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzduh
                @Override // com.google.android.gms.internal.ads.zzftq
                public final zzfut a(Object obj) {
                    return zzfuj.g(new zzdtf(5));
                }
            }, zzbzn.f11619f);
        }
        zzfem.a(zzfutVarM, this.f15693f, zzfecVarA);
        zzfuj.q(zzfutVarM, new zzdui(this), zzbzn.f11619f);
        return zzfutVarM;
    }

    final /* synthetic */ zzfut c(InputStream inputStream) throws Exception {
        return zzfuj.h(new zzeyo(new zzeyl(this.f15690c), zzeyn.a(new InputStreamReader(inputStream))));
    }
}
