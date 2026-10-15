package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbuv extends zzasw implements zzbuw {
    public zzbuv() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzbuw Sa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return iInterfaceQueryLocalInterface instanceof zzbuw ? (zzbuw) iInterfaceQueryLocalInterface : new zzbuu(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    protected final boolean Ra(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbvd zzbvbVar = null;
        zzbvd zzbvbVar2 = null;
        zzbve zzbveVar = null;
        zzbuz zzbuxVar = null;
        switch (i10) {
            case 1:
                com.google.android.gms.ads.internal.client.zzl zzlVar = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzbvbVar = iInterfaceQueryLocalInterface instanceof zzbvd ? (zzbvd) iInterfaceQueryLocalInterface : new zzbvb(strongBinder);
                }
                zzasx.c(parcel);
                B6(zzlVar, zzbvbVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    zzbuxVar = iInterfaceQueryLocalInterface2 instanceof zzbuz ? (zzbuz) iInterfaceQueryLocalInterface2 : new zzbux(strongBinder2);
                }
                zzasx.c(parcel);
                Fa(zzbuxVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zM = m();
                parcel2.writeNoException();
                zzasx.d(parcel2, zM);
                return true;
            case 4:
                String strB = b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            case 5:
                IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                zzasx.c(parcel);
                l1(iObjectWrapperX0);
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    zzbveVar = iInterfaceQueryLocalInterface3 instanceof zzbve ? (zzbve) iInterfaceQueryLocalInterface3 : new zzbve(strongBinder3);
                }
                zzasx.c(parcel);
                R3(zzbveVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zzbvk zzbvkVar = (zzbvk) zzasx.a(parcel, zzbvk.CREATOR);
                zzasx.c(parcel);
                Ba(zzbvkVar);
                parcel2.writeNoException();
                return true;
            case 8:
                com.google.android.gms.ads.internal.client.zzdd zzddVarSa = com.google.android.gms.ads.internal.client.zzdc.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                C7(zzddVarSa);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle bundleZzb = zzb();
                parcel2.writeNoException();
                zzasx.f(parcel2, bundleZzb);
                return true;
            case 10:
                IObjectWrapper iObjectWrapperX02 = IObjectWrapper.Stub.X0(parcel.readStrongBinder());
                boolean zH = zzasx.h(parcel);
                zzasx.c(parcel);
                e5(iObjectWrapperX02, zH);
                parcel2.writeNoException();
                return true;
            case 11:
                zzbut zzbutVarD = d();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzbutVarD);
                return true;
            case 12:
                com.google.android.gms.ads.internal.client.zzdn zzdnVarA = a();
                parcel2.writeNoException();
                zzasx.g(parcel2, zzdnVarA);
                return true;
            case 13:
                com.google.android.gms.ads.internal.client.zzdg zzdgVarSa = com.google.android.gms.ads.internal.client.zzdf.Sa(parcel.readStrongBinder());
                zzasx.c(parcel);
                g3(zzdgVarSa);
                parcel2.writeNoException();
                return true;
            case 14:
                com.google.android.gms.ads.internal.client.zzl zzlVar2 = (com.google.android.gms.ads.internal.client.zzl) zzasx.a(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzbvbVar2 = iInterfaceQueryLocalInterface4 instanceof zzbvd ? (zzbvd) iInterfaceQueryLocalInterface4 : new zzbvb(strongBinder4);
                }
                zzasx.c(parcel);
                f5(zzlVar2, zzbvbVar2);
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zH2 = zzasx.h(parcel);
                zzasx.c(parcel);
                Z0(zH2);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
