package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-identifier@@17.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzd extends zza implements zzf {
    zzd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final boolean D0(boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzc.a(parcelP0, true);
        Parcel parcelX0 = X0(2, parcelP0);
        boolean zB = zzc.b(parcelX0);
        parcelX0.recycle();
        return zB;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final String a() throws RemoteException {
        Parcel parcelX0 = X0(1, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final boolean d() throws RemoteException {
        Parcel parcelX0 = X0(6, P0());
        boolean zB = zzc.b(parcelX0);
        parcelX0.recycle();
        return zB;
    }
}
