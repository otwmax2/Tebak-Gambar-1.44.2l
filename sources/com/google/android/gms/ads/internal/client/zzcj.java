package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasv;
import com.google.android.gms.internal.ads.zzasx;
import com.google.android.gms.internal.ads.zzbne;
import com.google.android.gms.internal.ads.zzbnf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcj extends zzasv implements zzcl {
    zzcj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.ILiteSdkInfo");
    }

    @Override // com.google.android.gms.ads.internal.client.zzcl
    public final zzbnf getAdapterCreator() throws RemoteException {
        Parcel parcelX0 = X0(2, P0());
        zzbnf zzbnfVarSa = zzbne.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzbnfVarSa;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcl
    public final zzen getLiteSdkVersion() throws RemoteException {
        Parcel parcelX0 = X0(1, P0());
        zzen zzenVar = (zzen) zzasx.a(parcelX0, zzen.CREATOR);
        parcelX0.recycle();
        return zzenVar;
    }
}
