package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzx extends zza implements zzz {
    zzx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.zzz
    public final int a() throws RemoteException {
        Parcel parcelP0 = P0(2, t1());
        int i10 = parcelP0.readInt();
        parcelP0.recycle();
        return i10;
    }

    @Override // com.google.android.gms.common.internal.zzz
    public final IObjectWrapper d() throws RemoteException {
        Parcel parcelP0 = P0(1, t1());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelP0.readStrongBinder());
        parcelP0.recycle();
        return iObjectWrapperX0;
    }
}
