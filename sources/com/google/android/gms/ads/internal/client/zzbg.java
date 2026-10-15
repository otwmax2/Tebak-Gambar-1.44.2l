package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasw;
import com.google.android.gms.internal.ads.zzasx;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzbg extends zzasw implements zzbh {
    public zzbg() {
        super("com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                d();
                break;
            case 2:
                int i12 = parcel.readInt();
                zzasx.c(parcel);
                F(i12);
                break;
            case 3:
                break;
            case 4:
                g();
                break;
            case 5:
                h();
                break;
            case 6:
                a();
                break;
            case 7:
                e();
                break;
            case 8:
                zze zzeVar = (zze) zzasx.a(parcel, zze.CREATOR);
                zzasx.c(parcel);
                A(zzeVar);
                break;
            case 9:
                i();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
