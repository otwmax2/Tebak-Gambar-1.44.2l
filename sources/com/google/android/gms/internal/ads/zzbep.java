package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbep extends zzasv implements zzber {
    zzbep(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final boolean c0(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        Parcel parcelX0 = X0(10, parcelP0);
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final IObjectWrapper f() throws RemoteException {
        Parcel parcelX0 = X0(9, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    @Override // com.google.android.gms.internal.ads.zzber
    public final String g() throws RemoteException {
        Parcel parcelX0 = X0(4, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }
}
