package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbxp extends zzasv implements zzbxr {
    zzbxp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzbxr
    public final void l3(IObjectWrapper iObjectWrapper, zzbxv zzbxvVar, zzbxo zzbxoVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzbxvVar);
        zzasx.g(parcelP0, zzbxoVar);
        t1(1, parcelP0);
    }
}
