package com.google.android.gms.internal.appset;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-appset@@16.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzg extends zza {
    zzg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.appset.internal.IAppSetService");
    }

    public final void t1(com.google.android.gms.appset.zza zzaVar, zzf zzfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.b(parcelP0, zzaVar);
        zzc.c(parcelP0, zzfVar);
        X0(1, parcelP0);
    }
}
