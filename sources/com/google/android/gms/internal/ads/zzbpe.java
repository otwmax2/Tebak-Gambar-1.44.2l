package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbpe extends zzasw implements zzbpf {
    public zzbpe() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            String string = parcel.readString();
            zzasx.c(parcel);
            s(string);
        } else if (i10 == 2) {
            String string2 = parcel.readString();
            zzasx.c(parcel);
            I(string2);
        } else {
            if (i10 != 3) {
                return false;
            }
            com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
            zzasx.c(parcel);
            Y1(zzeVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
