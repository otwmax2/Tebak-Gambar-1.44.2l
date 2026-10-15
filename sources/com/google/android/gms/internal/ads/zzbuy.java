package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbuy extends zzasw implements zzbuz {
    public zzbuy() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbut zzburVar;
        switch (i10) {
            case 1:
                h();
                break;
            case 2:
                e();
                break;
            case 3:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzburVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    zzburVar = iInterfaceQueryLocalInterface instanceof zzbut ? (zzbut) iInterfaceQueryLocalInterface : new zzbur(strongBinder);
                }
                zzasx.c(parcel);
                g8(zzburVar);
                break;
            case 4:
                int i12 = parcel.readInt();
                zzasx.c(parcel);
                j0(i12);
                break;
            case 5:
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzasx.c(parcel);
                Q8(zzeVar);
                break;
            case 6:
                c();
                break;
            case 7:
                b();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
