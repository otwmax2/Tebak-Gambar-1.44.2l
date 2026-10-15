package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbea extends zzasw implements zzbeb {
    public zzbea() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    public static zzbeb Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
        return iInterfaceQueryLocalInterface instanceof zzbeb ? (zzbeb) iInterfaceQueryLocalInterface : new zzbdz(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbdu zzbdsVar;
        switch (i10) {
            case 1:
                String string = parcel.readString();
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                n5(string, iObjectWrapperX0);
                parcel2.writeNoException();
                return true;
            case 2:
                String string2 = parcel.readString();
                zzasx.c(parcel);
                IObjectWrapper iObjectWrapperU = u(string2);
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperU);
                return true;
            case 3:
                IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                j7(iObjectWrapperX02);
                parcel2.writeNoException();
                return true;
            case 4:
                a();
                parcel2.writeNoException();
                return true;
            case 5:
                IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                parcel.readInt();
                zzasx.c(parcel);
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper iObjectWrapperX03 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                L3(iObjectWrapperX03);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper iObjectWrapperX04 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                x0(iObjectWrapperX04);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzbdsVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    zzbdsVar = iInterfaceQueryLocalInterface instanceof zzbdu ? (zzbdu) iInterfaceQueryLocalInterface : new zzbds(strongBinder);
                }
                zzasx.c(parcel);
                L6(zzbdsVar);
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper iObjectWrapperX05 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                Oa(iObjectWrapperX05);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
