package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbrd extends zzasv implements zzbrf {
    zzbrd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbrf
    public final IBinder zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        Parcel parcelX0 = X0(1, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        parcelX0.recycle();
        return strongBinder;
    }
}
