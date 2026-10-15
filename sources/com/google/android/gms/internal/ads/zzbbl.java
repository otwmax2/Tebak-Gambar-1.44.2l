package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbbl extends zzasw implements zzbbm {
    public zzbbl() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            String strZzb = zzb();
            parcel2.writeNoException();
            parcel2.writeString(strZzb);
        } else if (i10 == 2) {
            String strA = a();
            parcel2.writeNoException();
            parcel2.writeString(strA);
        } else if (i10 == 3) {
            IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
            zzasx.c(parcel);
            x0(iObjectWrapperX0);
            parcel2.writeNoException();
        } else if (i10 == 4) {
            b();
            parcel2.writeNoException();
        } else {
            if (i10 != 5) {
                return false;
            }
            c();
            parcel2.writeNoException();
        }
        return true;
    }
}
