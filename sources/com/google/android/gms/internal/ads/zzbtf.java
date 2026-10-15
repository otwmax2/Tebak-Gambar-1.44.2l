package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbtf extends zzasw implements zzbtg {
    public zzbtf() {
        super("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzasx.a(parcel, ParcelFileDescriptor.CREATOR);
            zzasx.c(parcel);
            S0(parcelFileDescriptor);
        } else {
            if (i10 != 2) {
                return false;
            }
            com.google.android.gms.ads.internal.util.zzaz zzazVar = (com.google.android.gms.ads.internal.util.zzaz) zzasx.a(parcel, com.google.android.gms.ads.internal.util.zzaz.CREATOR);
            zzasx.c(parcel);
            q1(zzazVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
