package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbun extends zzasw implements zzbuo {
    public zzbun() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    public static zzbuo Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return iInterfaceQueryLocalInterface instanceof zzbuo ? (zzbuo) iInterfaceQueryLocalInterface : new zzbum(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                ja(iObjectWrapperX0);
                break;
            case 2:
                IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                int i12 = parcel.readInt();
                zzasx.c(parcel);
                z2(iObjectWrapperX02, i12);
                break;
            case 3:
                IObjectWrapper iObjectWrapperX03 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                u0(iObjectWrapperX03);
                break;
            case 4:
                IObjectWrapper iObjectWrapperX04 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                e0(iObjectWrapperX04);
                break;
            case 5:
                IObjectWrapper iObjectWrapperX05 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                K2(iObjectWrapperX05);
                break;
            case 6:
                IObjectWrapper iObjectWrapperX06 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                B0(iObjectWrapperX06);
                break;
            case 7:
                IObjectWrapper iObjectWrapperX07 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzbup zzbupVar = (zzbup) zzasx.a(parcel, zzbup.CREATOR);
                zzasx.c(parcel);
                t7(iObjectWrapperX07, zzbupVar);
                break;
            case 8:
                IObjectWrapper iObjectWrapperX08 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                zze(iObjectWrapperX08);
                break;
            case 9:
                IObjectWrapper iObjectWrapperX09 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                int i13 = parcel.readInt();
                zzasx.c(parcel);
                T0(iObjectWrapperX09, i13);
                break;
            case 10:
                IObjectWrapper iObjectWrapperX010 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                q4(iObjectWrapperX010);
                break;
            case 11:
                IObjectWrapper iObjectWrapperX011 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                Q3(iObjectWrapperX011);
                break;
            case 12:
                zzasx.c(parcel);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
