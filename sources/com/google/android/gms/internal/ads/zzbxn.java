package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbxn extends zzasw implements zzbxo {
    public zzbxn() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            parcel.readString();
            parcel.readString();
            zzasx.c(parcel);
        } else if (i10 == 2) {
            String string = parcel.readString();
            zzasx.c(parcel);
            u(string);
        } else {
            if (i10 != 3) {
                return false;
            }
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            Bundle bundle = (Bundle) zzasx.a(parcel, Bundle.CREATOR);
            zzasx.c(parcel);
            E3(string2, string3, bundle);
        }
        parcel2.writeNoException();
        return true;
    }
}
