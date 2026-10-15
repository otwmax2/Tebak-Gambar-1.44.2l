package com.google.android.gms.internal.p001authapiphone;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-api-phone@@17.5.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzh extends zza {
    zzh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
    }

    public final void A9(IStatusCallback iStatusCallback) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.b(parcelP0, iStatusCallback);
        X0(3, parcelP0);
    }

    public final void Q4(String str, zzg zzgVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        zzc.b(parcelP0, zzgVar);
        X0(5, parcelP0);
    }

    public final void Ra(IStatusCallback iStatusCallback) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.b(parcelP0, iStatusCallback);
        X0(6, parcelP0);
    }

    public final void Sa(zzj zzjVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.b(parcelP0, zzjVar);
        X0(1, parcelP0);
    }

    public final void Ta(String str, zzj zzjVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        zzc.b(parcelP0, zzjVar);
        X0(2, parcelP0);
    }

    public final void t1(zze zzeVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.b(parcelP0, zzeVar);
        X0(4, parcelP0);
    }
}
