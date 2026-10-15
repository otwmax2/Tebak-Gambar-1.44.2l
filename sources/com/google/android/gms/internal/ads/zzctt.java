package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzctt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfda f13995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbzg f13996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ApplicationInfo f13997c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f13998d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f13999e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final PackageInfo f14000f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgws f14001g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f14002h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzepq f14003i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f14004j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzeyx f14005k;

    public zzctt(zzfda zzfdaVar, zzbzg zzbzgVar, ApplicationInfo applicationInfo, String str, List list, PackageInfo packageInfo, zzgws zzgwsVar, com.google.android.gms.ads.internal.util.zzg zzgVar, String str2, zzepq zzepqVar, zzeyx zzeyxVar) {
        this.f13995a = zzfdaVar;
        this.f13996b = zzbzgVar;
        this.f13997c = applicationInfo;
        this.f13998d = str;
        this.f13999e = list;
        this.f14000f = packageInfo;
        this.f14001g = zzgwsVar;
        this.f14002h = str2;
        this.f14003i = zzepqVar;
        this.f14004j = zzgVar;
        this.f14005k = zzeyxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzbtn a(zzfut zzfutVar) throws Exception {
        return new zzbtn((Bundle) zzfutVar.get(), this.f13996b, this.f13997c, this.f13998d, this.f13999e, this.f14000f, (String) ((zzfut) this.f14001g.zzb()).get(), this.f14002h, null, null, ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.K6)).booleanValue() && this.f14004j.g0(), this.f14005k.b());
    }

    public final zzfut b() {
        zzfda zzfdaVar = this.f13995a;
        return zzfck.c(this.f14003i.a(new Bundle()), zzfcu.SIGNALS, zzfdaVar).a();
    }

    public final zzfut c() {
        final zzfut zzfutVarB = b();
        return this.f13995a.a(zzfcu.REQUEST_PARCEL, zzfutVarB, (zzfut) this.f14001g.zzb()).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzcts
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f13993a.a(zzfutVarB);
            }
        }).a();
    }
}
