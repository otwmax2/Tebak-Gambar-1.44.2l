package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzaux extends zzasw implements zzauy {
    public zzaux() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzavf zzavdVar;
        switch (i10) {
            case 2:
                com.google.android.gms.ads.internal.client.zzbu zzbuVarB = b();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbuVarB);
                return true;
            case 3:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                    if (iInterfaceQueryLocalInterface instanceof zzavc) {
                    }
                }
                zzasx.c(parcel);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 == null) {
                    zzavdVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    zzavdVar = iInterfaceQueryLocalInterface2 instanceof zzavf ? (zzavf) iInterfaceQueryLocalInterface2 : new zzavd(strongBinder2);
                }
                zzasx.c(parcel);
                ca(iObjectWrapperX0, zzavdVar);
                parcel2.writeNoException();
                return true;
            case 5:
                com.google.android.gms.ads.internal.client.zzdn zzdnVarC = c();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdnVarC);
                return true;
            case 6:
                boolean zH = zzasx.h(parcel);
                zzasx.c(parcel);
                ia(zH);
                parcel2.writeNoException();
                return true;
            case 7:
                com.google.android.gms.ads.internal.client.zzdg zzdgVarSa = com.google.android.gms.ads.internal.client.zzdf.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                h5(zzdgVarSa);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
