package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzasw;
import com.google.android.gms.internal.ads.zzasx;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzbq extends zzasw implements zzbr {
    public zzbq() {
        super("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
            String string = parcel.readString();
            String string2 = parcel.readString();
            zzasx.c(parcel);
            boolean zZzf = zzf(iObjectWrapperX0, string, string2);
            parcel2.writeNoException();
            zzasx.d(parcel2, zZzf);
        } else {
            if (i10 != 2) {
                return false;
            }
            IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
            zzasx.c(parcel);
            zze(iObjectWrapperX02);
            parcel2.writeNoException();
        }
        return true;
    }
}
