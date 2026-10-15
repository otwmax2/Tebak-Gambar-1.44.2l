package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbrb extends zzasw implements zzbrc {
    public zzbrb() {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    public static zzbrc Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
        return iInterfaceQueryLocalInterface instanceof zzbrc ? (zzbrc) iInterfaceQueryLocalInterface : new zzbra(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                Bundle bundle = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                V7(bundle);
                parcel2.writeNoException();
                return true;
            case 2:
                parcel2.writeNoException();
                return true;
            case 3:
                p();
                parcel2.writeNoException();
                return true;
            case 4:
                n();
                parcel2.writeNoException();
                return true;
            case 5:
                k();
                parcel2.writeNoException();
                return true;
            case 6:
                Bundle bundle2 = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
                zzasx.c(parcel);
                i0(bundle2);
                parcel2.writeNoException();
                zzasx.f(parcel2, bundle2);
                return true;
            case 7:
                q();
                parcel2.writeNoException();
                return true;
            case 8:
                j();
                parcel2.writeNoException();
                return true;
            case 9:
                t();
                parcel2.writeNoException();
                return true;
            case 10:
                f();
                parcel2.writeNoException();
                return true;
            case 11:
                boolean zH = H();
                parcel2.writeNoException();
                zzasx.d(parcel2, zH);
                return true;
            case 12:
                parcel.readInt();
                parcel.readInt();
                zzasx.c(parcel);
                parcel2.writeNoException();
                return true;
            case 13:
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                e0(iObjectWrapperX0);
                parcel2.writeNoException();
                return true;
            case 14:
                x();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
