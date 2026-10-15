package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzava extends zzasw implements zzavb {
    public zzava() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    public static zzavb Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
        return iInterfaceQueryLocalInterface instanceof zzavb ? (zzavb) iInterfaceQueryLocalInterface : new zzauz(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzauy zzauwVar;
        if (i10 == 1) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                zzauwVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                zzauwVar = iInterfaceQueryLocalInterface instanceof zzauy ? (zzauy) iInterfaceQueryLocalInterface : new zzauw(strongBinder);
            }
            zzasx.c(parcel);
            s6(zzauwVar);
        } else if (i10 == 2) {
            parcel.readInt();
            zzasx.c(parcel);
        } else {
            if (i10 != 3) {
                return false;
            }
            com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
            zzasx.c(parcel);
            l8(zzeVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
