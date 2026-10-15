package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbsy extends zzasw implements zzbsz {
    public zzbsy() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbtj zzbthVar = null;
        if (i10 == 1) {
            zzasx.c(parcel);
            parcel2.writeNoException();
            zzasx.f(parcel2, null);
        } else if (i10 == 2) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                if (iInterfaceQueryLocalInterface instanceof zzbta) {
                }
            }
            zzasx.c(parcel);
            parcel2.writeNoException();
        } else if (i10 == 4) {
            zzbtn zzbtnVar = (zzbtn) zzasx.a(parcel, zzbtn.CREATOR);
            IBinder strongBinder2 = parcel.readStrongBinder();
            if (strongBinder2 != null) {
                IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzbthVar = iInterfaceQueryLocalInterface2 instanceof zzbtj ? (zzbtj) iInterfaceQueryLocalInterface2 : new zzbth(strongBinder2);
            }
            zzasx.c(parcel);
            L4(zzbtnVar, zzbthVar);
            parcel2.writeNoException();
        } else if (i10 == 5) {
            zzbtn zzbtnVar2 = (zzbtn) zzasx.a(parcel, zzbtn.CREATOR);
            IBinder strongBinder3 = parcel.readStrongBinder();
            if (strongBinder3 != null) {
                IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzbthVar = iInterfaceQueryLocalInterface3 instanceof zzbtj ? (zzbtj) iInterfaceQueryLocalInterface3 : new zzbth(strongBinder3);
            }
            zzasx.c(parcel);
            k6(zzbtnVar2, zzbthVar);
            parcel2.writeNoException();
        } else if (i10 == 6) {
            zzbtn zzbtnVar3 = (zzbtn) zzasx.a(parcel, zzbtn.CREATOR);
            IBinder strongBinder4 = parcel.readStrongBinder();
            if (strongBinder4 != null) {
                IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzbthVar = iInterfaceQueryLocalInterface4 instanceof zzbtj ? (zzbtj) iInterfaceQueryLocalInterface4 : new zzbth(strongBinder4);
            }
            zzasx.c(parcel);
            I2(zzbtnVar3, zzbthVar);
            parcel2.writeNoException();
        } else {
            if (i10 != 7) {
                return false;
            }
            String string = parcel.readString();
            IBinder strongBinder5 = parcel.readStrongBinder();
            if (strongBinder5 != null) {
                IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzbthVar = iInterfaceQueryLocalInterface5 instanceof zzbtj ? (zzbtj) iInterfaceQueryLocalInterface5 : new zzbth(strongBinder5);
            }
            zzasx.c(parcel);
            J2(string, zzbthVar);
            parcel2.writeNoException();
        }
        return true;
    }
}
