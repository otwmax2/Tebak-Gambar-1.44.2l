package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzq extends zza {
    zzq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    public final int A9(IObjectWrapper iObjectWrapper, String str, boolean z10) throws RemoteException {
        Parcel parcelT1 = t1();
        zzc.f(parcelT1, iObjectWrapper);
        parcelT1.writeString(str);
        zzc.c(parcelT1, z10);
        Parcel parcelP0 = P0(5, parcelT1);
        int i10 = parcelP0.readInt();
        parcelP0.recycle();
        return i10;
    }

    public final int Q4(IObjectWrapper iObjectWrapper, String str, boolean z10) throws RemoteException {
        Parcel parcelT1 = t1();
        zzc.f(parcelT1, iObjectWrapper);
        parcelT1.writeString(str);
        zzc.c(parcelT1, z10);
        Parcel parcelP0 = P0(3, parcelT1);
        int i10 = parcelP0.readInt();
        parcelP0.recycle();
        return i10;
    }

    public final IObjectWrapper Ra(IObjectWrapper iObjectWrapper, String str, int i10) throws RemoteException {
        Parcel parcelT1 = t1();
        zzc.f(parcelT1, iObjectWrapper);
        parcelT1.writeString(str);
        parcelT1.writeInt(i10);
        Parcel parcelP0 = P0(2, parcelT1);
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelP0.readStrongBinder());
        parcelP0.recycle();
        return iObjectWrapperX0;
    }

    public final IObjectWrapper Sa(IObjectWrapper iObjectWrapper, String str, int i10, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel parcelT1 = t1();
        zzc.f(parcelT1, iObjectWrapper);
        parcelT1.writeString(str);
        parcelT1.writeInt(i10);
        zzc.f(parcelT1, iObjectWrapper2);
        Parcel parcelP0 = P0(8, parcelT1);
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelP0.readStrongBinder());
        parcelP0.recycle();
        return iObjectWrapperX0;
    }

    public final IObjectWrapper Ta(IObjectWrapper iObjectWrapper, String str, int i10) throws RemoteException {
        Parcel parcelT1 = t1();
        zzc.f(parcelT1, iObjectWrapper);
        parcelT1.writeString(str);
        parcelT1.writeInt(i10);
        Parcel parcelP0 = P0(4, parcelT1);
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelP0.readStrongBinder());
        parcelP0.recycle();
        return iObjectWrapperX0;
    }

    public final IObjectWrapper Ua(IObjectWrapper iObjectWrapper, String str, boolean z10, long j10) throws RemoteException {
        Parcel parcelT1 = t1();
        zzc.f(parcelT1, iObjectWrapper);
        parcelT1.writeString(str);
        zzc.c(parcelT1, z10);
        parcelT1.writeLong(j10);
        Parcel parcelP0 = P0(7, parcelT1);
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelP0.readStrongBinder());
        parcelP0.recycle();
        return iObjectWrapperX0;
    }

    public final int b() throws RemoteException {
        Parcel parcelP0 = P0(6, t1());
        int i10 = parcelP0.readInt();
        parcelP0.recycle();
        return i10;
    }
}
