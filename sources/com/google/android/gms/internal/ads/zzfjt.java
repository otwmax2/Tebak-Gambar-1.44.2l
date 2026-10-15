package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfjt extends zzasw implements zzfju {
    public zzfjt() {
        super("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 2:
                IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                parcel.readString();
                zzasx.c(parcel);
                break;
            case 3:
                break;
            case 4:
                parcel.createIntArray();
                zzasx.c(parcel);
                break;
            case 5:
                parcel.createByteArray();
                zzasx.c(parcel);
                break;
            case 6:
                parcel.readInt();
                zzasx.c(parcel);
                break;
            case 7:
                parcel.readInt();
                zzasx.c(parcel);
                break;
            case 8:
                IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                parcel.readString();
                parcel.readString();
                zzasx.c(parcel);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
