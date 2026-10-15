package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasv;
import com.google.android.gms.internal.ads.zzasx;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdl extends zzasv implements zzdn {
    zzdl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final Bundle b() throws RemoteException {
        Parcel parcelX0 = X0(5, P0());
        Bundle bundle = (Bundle) zzasx.a(parcelX0, Bundle.CREATOR);
        parcelX0.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final zzu c() throws RemoteException {
        Parcel parcelX0 = X0(4, P0());
        zzu zzuVar = (zzu) zzasx.a(parcelX0, zzu.CREATOR);
        parcelX0.recycle();
        return zzuVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String e() throws RemoteException {
        Parcel parcelX0 = X0(1, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String f() throws RemoteException {
        Parcel parcelX0 = X0(6, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String g() throws RemoteException {
        Parcel parcelX0 = X0(2, P0());
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final List h() throws RemoteException {
        Parcel parcelX0 = X0(3, P0());
        ArrayList arrayListCreateTypedArrayList = parcelX0.createTypedArrayList(zzu.CREATOR);
        parcelX0.recycle();
        return arrayListCreateTypedArrayList;
    }
}
