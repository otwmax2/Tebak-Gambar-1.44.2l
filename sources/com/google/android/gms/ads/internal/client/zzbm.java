package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasw;
import com.google.android.gms.internal.ads.zzasx;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzbm extends zzasw implements zzbn {
    public zzbm() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            zzl zzlVar = (zzl) zzasx.a(parcel, zzl.CREATOR);
            zzasx.c(parcel);
            i5(zzlVar);
            parcel2.writeNoException();
        } else if (i10 == 2) {
            String strB = b();
            parcel2.writeNoException();
            parcel2.writeString(strB);
        } else if (i10 == 3) {
            boolean zG = g();
            parcel2.writeNoException();
            zzasx.d(parcel2, zG);
        } else if (i10 == 4) {
            String strC = c();
            parcel2.writeNoException();
            parcel2.writeString(strC);
        } else {
            if (i10 != 5) {
                return false;
            }
            zzl zzlVar2 = (zzl) zzasx.a(parcel, zzl.CREATOR);
            int i12 = parcel.readInt();
            zzasx.c(parcel);
            ra(zzlVar2, i12);
            parcel2.writeNoException();
        }
        return true;
    }
}
