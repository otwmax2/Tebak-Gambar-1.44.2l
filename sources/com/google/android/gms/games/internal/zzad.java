package com.google.android.gms.games.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.games.zzfi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzad extends com.google.android.gms.internal.games.zza implements zzaa {
    public zzad() {
        super("com.google.android.gms.games.internal.IGamesClient");
    }

    @Override // com.google.android.gms.internal.games.zza
    protected final boolean P0(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1001) {
            return false;
        }
        zzfi zzfiVarB6 = b6();
        parcel2.writeNoException();
        com.google.android.gms.internal.games.zzd.f(parcel2, zzfiVarB6);
        return true;
    }
}
