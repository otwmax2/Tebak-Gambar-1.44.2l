package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbxs extends zzasv implements zzbxu {
    zzbxs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbxu
    public final zzbxr Q0(IObjectWrapper iObjectWrapper, zzbnf zzbnfVar, int i10) throws RemoteException {
        zzbxr zzbxpVar;
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(2, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbxpVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            zzbxpVar = iInterfaceQueryLocalInterface instanceof zzbxr ? (zzbxr) iInterfaceQueryLocalInterface : new zzbxp(strongBinder);
        }
        parcelX0.recycle();
        return zzbxpVar;
    }
}
