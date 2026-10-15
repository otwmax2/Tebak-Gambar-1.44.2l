package com.google.android.gms.internal.ads;

import android.content.Context;
import com.facebook.internal.AnalyticsEvents;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzenp implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f17010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f17011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f17012c;

    public zzenp(zzfuu zzfuuVar, Context context, Set set) {
        this.f17010a = zzfuuVar;
        this.f17011b = context;
        this.f17012c = set;
    }

    final /* synthetic */ zzenq a() throws Exception {
        zzbaj zzbajVar = zzbar.C4;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue()) {
            Set set = this.f17012c;
            if (set.contains("rewarded") || set.contains("interstitial") || set.contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE) || set.contains("banner")) {
                com.google.android.gms.ads.internal.zzt.a();
                return new zzenq(true == ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue() ? "a.1.3.37-google_20220829" : null);
            }
        }
        return new zzenq(null);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 27;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f17010a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzeno
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f17009a.a();
            }
        });
    }
}
