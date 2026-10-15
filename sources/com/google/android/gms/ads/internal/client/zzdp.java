package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasw;
import com.google.android.gms.internal.ads.zzasx;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzdp extends zzasw implements zzdq {
    public zzdp() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    public static zzdq Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        return iInterfaceQueryLocalInterface instanceof zzdq ? (zzdq) iInterfaceQueryLocalInterface : new zzdo(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzdt zzdrVar;
        switch (i10) {
            case 1:
                j();
                parcel2.writeNoException();
                return true;
            case 2:
                i();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zH = zzasx.h(parcel);
                zzasx.c(parcel);
                H0(zH);
                parcel2.writeNoException();
                return true;
            case 4:
                boolean zR = r();
                parcel2.writeNoException();
                zzasx.d(parcel2, zR);
                return true;
            case 5:
                int iF = f();
                parcel2.writeNoException();
                parcel2.writeInt(iF);
                return true;
            case 6:
                float fE = e();
                parcel2.writeNoException();
                parcel2.writeFloat(fE);
                return true;
            case 7:
                float fC = c();
                parcel2.writeNoException();
                parcel2.writeFloat(fC);
                return true;
            case 8:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzdrVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    zzdrVar = iInterfaceQueryLocalInterface instanceof zzdt ? (zzdt) iInterfaceQueryLocalInterface : new zzdr(strongBinder);
                }
                zzasx.c(parcel);
                W1(zzdrVar);
                parcel2.writeNoException();
                return true;
            case 9:
                float fB = b();
                parcel2.writeNoException();
                parcel2.writeFloat(fB);
                return true;
            case 10:
                boolean zN = n();
                parcel2.writeNoException();
                zzasx.d(parcel2, zN);
                return true;
            case 11:
                zzdt zzdtVarG = g();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdtVarG);
                return true;
            case 12:
                boolean zM = m();
                parcel2.writeNoException();
                zzasx.d(parcel2, zM);
                return true;
            case 13:
                k();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
