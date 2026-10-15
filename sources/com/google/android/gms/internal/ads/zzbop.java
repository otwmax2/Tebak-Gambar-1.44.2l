package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbop extends zzasw implements zzboq {
    public zzbop() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
            zzasx.c(parcel);
            G5(iObjectWrapperX0);
        } else if (i10 == 2) {
            String string = parcel.readString();
            zzasx.c(parcel);
            s(string);
        } else if (i10 == 3) {
            com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
            zzasx.c(parcel);
            A(zzeVar);
        } else {
            if (i10 != 4) {
                return false;
            }
            zzbno zzbnoVarSa = zzbnn.Sa(parcel.readStrongBinder());
            zzasx.c(parcel);
            c2(zzbnoVarSa);
        }
        parcel2.writeNoException();
        return true;
    }
}
