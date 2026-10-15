package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbva extends zzasv {
    zzbva(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
    }

    public final IBinder A9(IObjectWrapper iObjectWrapper, String str, zzbnf zzbnfVar, int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        parcelP0.writeString(str);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(1, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        parcelX0.recycle();
        return strongBinder;
    }
}
