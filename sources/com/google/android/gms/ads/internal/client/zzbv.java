package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzasv;
import com.google.android.gms.internal.ads.zzasx;
import com.google.android.gms.internal.ads.zzbnf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbv extends zzasv {
    zzbv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    public final IBinder A9(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbnf zzbnfVar, int i10, int i11) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzqVar);
        parcelP0.writeString(str);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        parcelP0.writeInt(i11);
        Parcel parcelX0 = X0(2, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        parcelX0.recycle();
        return strongBinder;
    }
}
