package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbxq extends zzasw implements zzbxr {
    public zzbxq() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    public static zzbxr Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        return iInterfaceQueryLocalInterface instanceof zzbxr ? (zzbxr) iInterfaceQueryLocalInterface : new zzbxp(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbxo zzbxmVar = null;
        switch (i10) {
            case 1:
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbxv zzbxvVar = (zzbxv) zzasx.a(parcel, zzbxv.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    zzbxmVar = iInterfaceQueryLocalInterface instanceof zzbxo ? (zzbxo) iInterfaceQueryLocalInterface : new zzbxm(strongBinder);
                }
                zzasx.c(parcel);
                l3(iObjectWrapperX0, zzbxvVar, zzbxmVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                e0(iObjectWrapperX02);
                parcel2.writeNoException();
                return true;
            case 3:
                IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                parcel2.writeNoException();
                zzasx.g(parcel2, null);
                return true;
            case 4:
                IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                parcel2.writeNoException();
                zzasx.g(parcel2, null);
                return true;
            case 5:
                ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper iObjectWrapperX03 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbrr zzbrrVarSa = zzbrq.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                O4(arrayListCreateTypedArrayList, iObjectWrapperX03, zzbrrVarSa);
                parcel2.writeNoException();
                return true;
            case 6:
                ArrayList arrayListCreateTypedArrayList2 = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper iObjectWrapperX04 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbrr zzbrrVarSa2 = zzbrq.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                k8(arrayListCreateTypedArrayList2, iObjectWrapperX04, zzbrrVarSa2);
                parcel2.writeNoException();
                return true;
            case 7:
                zzbsa zzbsaVar = (zzbsa) zzasx.a(parcel, zzbsa.CREATOR);
                zzasx.c(parcel);
                O7(zzbsaVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IObjectWrapper iObjectWrapperX05 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                u0(iObjectWrapperX05);
                parcel2.writeNoException();
                return true;
            case 9:
                ArrayList arrayListCreateTypedArrayList3 = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper iObjectWrapperX06 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbrr zzbrrVarSa3 = zzbrq.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                u9(arrayListCreateTypedArrayList3, iObjectWrapperX06, zzbrrVarSa3);
                parcel2.writeNoException();
                return true;
            case 10:
                ArrayList arrayListCreateTypedArrayList4 = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper iObjectWrapperX07 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbrr zzbrrVarSa4 = zzbrq.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                a4(arrayListCreateTypedArrayList4, iObjectWrapperX07, zzbrrVarSa4);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
