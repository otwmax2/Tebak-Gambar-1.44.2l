package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbne extends zzasw implements zzbnf {
    public zzbne() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzbnf Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return iInterfaceQueryLocalInterface instanceof zzbnf ? (zzbnf) iInterfaceQueryLocalInterface : new zzbnd(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            String string = parcel.readString();
            zzasx.c(parcel);
            zzbni zzbniVarU = u(string);
            parcel2.writeNoException();
            zzasx.g(parcel2, zzbniVarU);
        } else if (i10 == 2) {
            String string2 = parcel.readString();
            zzasx.c(parcel);
            boolean zS = s(string2);
            parcel2.writeNoException();
            zzasx.d(parcel2, zS);
        } else if (i10 == 3) {
            String string3 = parcel.readString();
            zzasx.c(parcel);
            zzbpc zzbpcVarD = D(string3);
            parcel2.writeNoException();
            zzasx.g(parcel2, zzbpcVarD);
        } else {
            if (i10 != 4) {
                return false;
            }
            String string4 = parcel.readString();
            zzasx.c(parcel);
            boolean zO = O(string4);
            parcel2.writeNoException();
            zzasx.d(parcel2, zO);
        }
        return true;
    }
}
