package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbeg extends zzasw implements zzbeh {
    public zzbeg() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
            zzasx.c(parcel);
            J9(iObjectWrapperX0);
        } else if (i10 == 2) {
            d();
        } else {
            if (i10 != 3) {
                return false;
            }
            IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
            zzasx.c(parcel);
            U0(iObjectWrapperX02);
        }
        parcel2.writeNoException();
        return true;
    }
}
