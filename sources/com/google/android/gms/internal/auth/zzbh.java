package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbh extends zza {
    zzbh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.internal.IAuthService");
    }

    public final void Q4(zzbg zzbgVar, ProxyRequest proxyRequest) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.d(parcelP0, zzbgVar);
        zzc.c(parcelP0, proxyRequest);
        X0(1, parcelP0);
    }

    public final void t1(zzbg zzbgVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.d(parcelP0, zzbgVar);
        X0(3, parcelP0);
    }
}
