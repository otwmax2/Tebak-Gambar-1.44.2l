package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbqw extends zzasv implements zzbqy {
    zzbqw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbqy
    public final zzbqv Q0(IObjectWrapper iObjectWrapper, zzbnf zzbnfVar, int i10) throws RemoteException {
        zzbqv zzbqtVar;
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(1, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbqtVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            zzbqtVar = iInterfaceQueryLocalInterface instanceof zzbqv ? (zzbqv) iInterfaceQueryLocalInterface : new zzbqt(strongBinder);
        }
        parcelX0.recycle();
        return zzbqtVar;
    }
}
