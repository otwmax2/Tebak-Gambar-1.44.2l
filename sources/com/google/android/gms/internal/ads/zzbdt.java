package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbdt extends zzasw implements zzbdu {
    public zzbdt() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbff zzbffVar;
        switch (i10) {
            case 2:
                float fB = b();
                parcel2.writeNoException();
                parcel2.writeFloat(fB);
                return true;
            case 3:
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                e0(iObjectWrapperX0);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper iObjectWrapperG = g();
                parcel2.writeNoException();
                zzasx.g(parcel2, iObjectWrapperG);
                return true;
            case 5:
                float fE = e();
                parcel2.writeNoException();
                parcel2.writeFloat(fE);
                return true;
            case 6:
                float fC = c();
                parcel2.writeNoException();
                parcel2.writeFloat(fC);
                return true;
            case 7:
                com.google.android.gms.ads.internal.client.zzdq zzdqVarF = f();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdqVarF);
                return true;
            case 8:
                boolean zI = i();
                parcel2.writeNoException();
                zzasx.d(parcel2, zI);
                return true;
            case 9:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzbffVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    zzbffVar = iInterfaceQueryLocalInterface instanceof zzbff ? (zzbff) iInterfaceQueryLocalInterface : new zzbff(strongBinder);
                }
                zzasx.c(parcel);
                J7(zzbffVar);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
