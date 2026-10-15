package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzr extends zza {
    zzr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    public final IObjectWrapper A9(IObjectWrapper iObjectWrapper, String str, int i10, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel parcelT1 = t1();
        zzc.f(parcelT1, iObjectWrapper);
        parcelT1.writeString(str);
        parcelT1.writeInt(i10);
        zzc.f(parcelT1, iObjectWrapper2);
        Parcel parcelP0 = P0(3, parcelT1);
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelP0.readStrongBinder());
        parcelP0.recycle();
        return iObjectWrapperX0;
    }

    public final IObjectWrapper Q4(IObjectWrapper iObjectWrapper, String str, int i10, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel parcelT1 = t1();
        zzc.f(parcelT1, iObjectWrapper);
        parcelT1.writeString(str);
        parcelT1.writeInt(i10);
        zzc.f(parcelT1, iObjectWrapper2);
        Parcel parcelP0 = P0(2, parcelT1);
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelP0.readStrongBinder());
        parcelP0.recycle();
        return iObjectWrapperX0;
    }
}
