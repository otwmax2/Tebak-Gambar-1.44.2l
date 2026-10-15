package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbqu extends zzasw implements zzbqv {
    public zzbqu() {
        super("com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    public static zzbqv Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
        return iInterfaceQueryLocalInterface instanceof zzbqv ? (zzbqv) iInterfaceQueryLocalInterface : new zzbqt(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            Intent intent = (Intent) zzasx.a(parcel, Intent.CREATOR);
            zzasx.c(parcel);
            u1(intent);
        } else if (i10 == 2) {
            IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
            String string = parcel.readString();
            String string2 = parcel.readString();
            zzasx.c(parcel);
            Q2(iObjectWrapperX0, string, string2);
        } else {
            if (i10 != 3) {
                return false;
            }
            c();
        }
        parcel2.writeNoException();
        return true;
    }
}
