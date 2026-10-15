package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbds extends zzasv implements zzbdu {
    zzbds(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzbdu
    public final IObjectWrapper g() throws RemoteException {
        Parcel parcelX0 = X0(4, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }
}
