package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbmy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static zzbmy f10986b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f10987a = new AtomicBoolean(false);

    zzbmy() {
    }

    public static zzbmy a() {
        if (f10986b == null) {
            f10986b = new zzbmy();
        }
        return f10986b;
    }

    public final Thread b(final Context context, final String str) {
        if (!this.f10987a.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmx
            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = context;
                String str2 = str;
                zzbar.c(context2);
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10214f0)).booleanValue());
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10291m0)).booleanValue()) {
                    bundle.putString("ad_storage", "denied");
                    bundle.putString("analytics_storage", "denied");
                }
                try {
                    ((zzcgc) zzbze.b(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", new zzbzc() { // from class: com.google.android.gms.internal.ads.zzbmw
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // com.google.android.gms.internal.ads.zzbzc
                        public final Object a(Object obj) {
                            return zzcgb.Sa(obj);
                        }
                    })).H3(ObjectWrapper.Q4(context2), new zzbmv(AppMeasurementSdk.k(context2, "FA-Ads", "am", str2, bundle)));
                } catch (RemoteException | zzbzd | NullPointerException e10) {
                    zzbza.i("#007 Could not call remote method.", e10);
                }
            }
        });
        thread.start();
        return thread;
    }
}
