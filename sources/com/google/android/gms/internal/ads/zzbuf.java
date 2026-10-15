package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbuf extends zzasw implements zzbug {
    public zzbuf() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            zzbuk zzbukVar = (zzbuk) zzasx.a(parcel, zzbuk.CREATOR);
            zzasx.c(parcel);
            b4(zzbukVar);
            parcel2.writeNoException();
        } else if (i10 != 2) {
            zzbuj zzbuhVar = null;
            zzbue zzbueVar = null;
            if (i10 == 3) {
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    zzbuhVar = iInterfaceQueryLocalInterface instanceof zzbuj ? (zzbuj) iInterfaceQueryLocalInterface : new zzbuh(strongBinder);
                }
                zzasx.c(parcel);
                f4(zzbuhVar);
                parcel2.writeNoException();
            } else if (i10 != 34) {
                switch (i10) {
                    case 5:
                        boolean zQ = q();
                        parcel2.writeNoException();
                        zzasx.d(parcel2, zQ);
                        break;
                    case 6:
                        f();
                        parcel2.writeNoException();
                        break;
                    case 7:
                        h();
                        parcel2.writeNoException();
                        break;
                    case 8:
                        b();
                        parcel2.writeNoException();
                        break;
                    case 9:
                        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                        zzasx.c(parcel);
                        u0(iObjectWrapperX0);
                        parcel2.writeNoException();
                        break;
                    case 10:
                        IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                        zzasx.c(parcel);
                        c1(iObjectWrapperX02);
                        parcel2.writeNoException();
                        break;
                    case 11:
                        IObjectWrapper iObjectWrapperX03 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                        zzasx.c(parcel);
                        B0(iObjectWrapperX03);
                        parcel2.writeNoException();
                        break;
                    case 12:
                        String strD = d();
                        parcel2.writeNoException();
                        parcel2.writeString(strD);
                        break;
                    case 13:
                        String string = parcel.readString();
                        zzasx.c(parcel);
                        b0(string);
                        parcel2.writeNoException();
                        break;
                    case 14:
                        com.google.android.gms.ads.internal.client.zzby zzbyVarSa = com.google.android.gms.ads.internal.client.zzbx.Sa(parcel.readStrongBinder());
                        zzasx.c(parcel);
                        V8(zzbyVarSa);
                        parcel2.writeNoException();
                        break;
                    case 15:
                        Bundle bundleZzb = zzb();
                        parcel2.writeNoException();
                        zzasx.f(parcel2, bundleZzb);
                        break;
                    case 16:
                        IBinder strongBinder2 = parcel.readStrongBinder();
                        if (strongBinder2 != null) {
                            IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                            zzbueVar = iInterfaceQueryLocalInterface2 instanceof zzbue ? (zzbue) iInterfaceQueryLocalInterface2 : new zzbue(strongBinder2);
                        }
                        zzasx.c(parcel);
                        o3(zzbueVar);
                        parcel2.writeNoException();
                        break;
                    case 17:
                        parcel.readString();
                        zzasx.c(parcel);
                        parcel2.writeNoException();
                        break;
                    case 18:
                        IObjectWrapper iObjectWrapperX04 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                        zzasx.c(parcel);
                        c0(iObjectWrapperX04);
                        parcel2.writeNoException();
                        break;
                    case 19:
                        String string2 = parcel.readString();
                        zzasx.c(parcel);
                        l6(string2);
                        parcel2.writeNoException();
                        break;
                    case 20:
                        boolean zX = x();
                        parcel2.writeNoException();
                        zzasx.d(parcel2, zX);
                        break;
                    case 21:
                        com.google.android.gms.ads.internal.client.zzdn zzdnVarA = a();
                        parcel2.writeNoException();
                        zzasx.g(parcel2, zzdnVarA);
                        break;
                    default:
                        return false;
                }
            } else {
                boolean zH = zzasx.h(parcel);
                zzasx.c(parcel);
                G0(zH);
                parcel2.writeNoException();
            }
        } else {
            r();
            parcel2.writeNoException();
        }
        return true;
    }
}
