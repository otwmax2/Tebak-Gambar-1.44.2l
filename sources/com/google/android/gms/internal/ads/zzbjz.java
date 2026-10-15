package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbjz extends zzasw implements zzbka {
    public zzbjz() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbkd zzbkbVar;
        if (i10 == 3) {
            com.google.android.gms.ads.internal.client.zzdq zzdqVarZzb = zzb();
            parcel2.writeNoException();
            zzasx.g(parcel2, zzdqVarZzb);
            return true;
        }
        if (i10 == 4) {
            d();
            parcel2.writeNoException();
            return true;
        }
        if (i10 == 5) {
            IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                zzbkbVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                zzbkbVar = iInterfaceQueryLocalInterface instanceof zzbkd ? (zzbkd) iInterfaceQueryLocalInterface : new zzbkb(strongBinder);
            }
            zzasx.c(parcel);
            N8(iObjectWrapperX0, zzbkbVar);
            parcel2.writeNoException();
            return true;
        }
        if (i10 == 6) {
            IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
            zzasx.c(parcel);
            zze(iObjectWrapperX02);
            parcel2.writeNoException();
            return true;
        }
        if (i10 != 7) {
            return false;
        }
        zzbdu zzbduVarA = a();
        parcel2.writeNoException();
        zzasx.g(parcel2, zzbduVarA);
        return true;
    }
}
