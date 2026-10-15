package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzepy implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f17185a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f17186b;

    public zzepy(zzfuu zzfuuVar, Context context) {
        this.f17185a = zzfuuVar;
        this.f17186b = context;
    }

    final /* synthetic */ zzepw a() throws Exception {
        int i10;
        boolean zIsActiveNetworkMetered;
        int i11;
        TelephonyManager telephonyManager = (TelephonyManager) this.f17186b.getSystemService("phone");
        String networkOperator = telephonyManager.getNetworkOperator();
        int phoneType = telephonyManager.getPhoneType();
        com.google.android.gms.ads.internal.zzt.r();
        int i12 = -1;
        if (com.google.android.gms.ads.internal.util.zzs.V(this.f17186b, "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f17186b.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                int type = activeNetworkInfo.getType();
                int iOrdinal = activeNetworkInfo.getDetailedState().ordinal();
                i10 = type;
                i12 = iOrdinal;
            } else {
                i10 = -1;
            }
            zIsActiveNetworkMetered = connectivityManager.isActiveNetworkMetered();
            i11 = i12;
        } else {
            i10 = -2;
            zIsActiveNetworkMetered = false;
            i11 = -1;
        }
        return new zzepw(networkOperator, i10, com.google.android.gms.ads.internal.zzt.s().k(this.f17186b), phoneType, zIsActiveNetworkMetered, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 39;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f17185a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzepx
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f17184a.a();
            }
        });
    }
}
