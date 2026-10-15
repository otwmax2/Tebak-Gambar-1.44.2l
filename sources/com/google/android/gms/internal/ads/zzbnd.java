package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbnd extends zzasv implements zzbnf {
    zzbnd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final zzbpc D(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        Parcel parcelX0 = X0(3, parcelP0);
        zzbpc zzbpcVarSa = zzbpb.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzbpcVarSa;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final boolean O(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        Parcel parcelX0 = X0(4, parcelP0);
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final boolean s(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        Parcel parcelX0 = X0(2, parcelP0);
        boolean zH = zzasx.h(parcelX0);
        parcelX0.recycle();
        return zH;
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final zzbni u(String str) throws RemoteException {
        zzbni zzbngVar;
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        Parcel parcelX0 = X0(1, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbngVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            zzbngVar = iInterfaceQueryLocalInterface instanceof zzbni ? (zzbni) iInterfaceQueryLocalInterface : new zzbng(strongBinder);
        }
        parcelX0.recycle();
        return zzbngVar;
    }
}
