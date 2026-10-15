package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzas extends zzb implements zzat {
    public zzas() {
        super("com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferCallbacks");
    }

    @Override // com.google.android.gms.internal.auth.zzb
    protected final boolean P0(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                R5((Status) zzc.a(parcel, Status.CREATOR));
                return true;
            case 2:
                b3((Status) zzc.a(parcel, Status.CREATOR), (com.google.android.gms.auth.api.accounttransfer.zzv) zzc.a(parcel, com.google.android.gms.auth.api.accounttransfer.zzv.CREATOR));
                return true;
            case 3:
                B1((Status) zzc.a(parcel, Status.CREATOR), (com.google.android.gms.auth.api.accounttransfer.zzn) zzc.a(parcel, com.google.android.gms.auth.api.accounttransfer.zzn.CREATOR));
                return true;
            case 4:
                b();
                return true;
            case 5:
                R1((Status) zzc.a(parcel, Status.CREATOR));
                return true;
            case 6:
                a0(parcel.createByteArray());
                return true;
            case 7:
                m2((DeviceMetaData) zzc.a(parcel, DeviceMetaData.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
