package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.zzo;
import com.google.android.gms.common.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzad extends zza implements zzaf {
    zzad(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.zzaf
    public final zzq F6(zzo zzoVar) throws RemoteException {
        Parcel parcelT1 = t1();
        com.google.android.gms.internal.common.zzc.d(parcelT1, zzoVar);
        Parcel parcelP0 = P0(8, parcelT1);
        zzq zzqVar = (zzq) com.google.android.gms.internal.common.zzc.a(parcelP0, zzq.CREATOR);
        parcelP0.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.zzaf
    public final boolean S2(com.google.android.gms.common.zzs zzsVar, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelT1 = t1();
        com.google.android.gms.internal.common.zzc.d(parcelT1, zzsVar);
        com.google.android.gms.internal.common.zzc.f(parcelT1, iObjectWrapper);
        Parcel parcelP0 = P0(5, parcelT1);
        boolean zG = com.google.android.gms.internal.common.zzc.g(parcelP0);
        parcelP0.recycle();
        return zG;
    }

    @Override // com.google.android.gms.common.internal.zzaf
    public final boolean g() throws RemoteException {
        Parcel parcelP0 = P0(7, t1());
        boolean zG = com.google.android.gms.internal.common.zzc.g(parcelP0);
        parcelP0.recycle();
        return zG;
    }

    @Override // com.google.android.gms.common.internal.zzaf
    public final zzq x5(zzo zzoVar) throws RemoteException {
        Parcel parcelT1 = t1();
        com.google.android.gms.internal.common.zzc.d(parcelT1, zzoVar);
        Parcel parcelP0 = P0(6, parcelT1);
        zzq zzqVar = (zzq) com.google.android.gms.internal.common.zzc.a(parcelP0, zzq.CREATOR);
        parcelP0.recycle();
        return zzqVar;
    }
}
