package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbdo extends zzasw implements zzbdp {
    public zzbdo() {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    public static zzbdp Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        return iInterfaceQueryLocalInterface instanceof zzbdp ? (zzbdp) iInterfaceQueryLocalInterface : new zzbdn(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 2) {
            String strE = e();
            parcel2.writeNoException();
            parcel2.writeString(strE);
            return true;
        }
        if (i10 != 3) {
            return false;
        }
        List listF = f();
        parcel2.writeNoException();
        parcel2.writeList(listF);
        return true;
    }
}
