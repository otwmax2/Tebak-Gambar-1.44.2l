package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeld implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f16896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f16897b;

    zzeld(zzfuu zzfuuVar, Context context) {
        this.f16896a = zzfuuVar;
        this.f16897b = context;
    }

    final /* synthetic */ zzele a() throws Exception {
        double d10;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        Intent intentRegisterReceiver = (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10311n9)).booleanValue() || Build.VERSION.SDK_INT < 33) ? this.f16897b.registerReceiver(null, intentFilter) : this.f16897b.registerReceiver(null, intentFilter, 4);
        if (intentRegisterReceiver != null) {
            int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
            double intExtra2 = intentRegisterReceiver.getIntExtra("level", -1);
            double intExtra3 = intentRegisterReceiver.getIntExtra("scale", -1);
            z = intExtra == 2 || intExtra == 5;
            Double.isNaN(intExtra2);
            Double.isNaN(intExtra3);
            d10 = intExtra2 / intExtra3;
        } else {
            d10 = -1.0d;
        }
        return new zzele(d10, z);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    @SuppressLint({"UnprotectedReceiver"})
    public final zzfut zzb() {
        return this.f16896a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzelc
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16895a.a();
            }
        });
    }
}
