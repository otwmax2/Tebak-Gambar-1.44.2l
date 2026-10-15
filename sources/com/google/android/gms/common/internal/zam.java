package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zam extends com.google.android.gms.internal.base.zaa {
    zam(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    public final IObjectWrapper A9(IObjectWrapper iObjectWrapper, zax zaxVar) throws RemoteException {
        Parcel parcelP0 = P0();
        com.google.android.gms.internal.base.zac.d(parcelP0, iObjectWrapper);
        com.google.android.gms.internal.base.zac.c(parcelP0, zaxVar);
        Parcel parcelX0 = X0(2, parcelP0);
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }
}
