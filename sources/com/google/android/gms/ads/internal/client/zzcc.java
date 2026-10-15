package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzasv;
import com.google.android.gms.internal.ads.zzasx;
import com.google.android.gms.internal.ads.zzbea;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzbim;
import com.google.android.gms.internal.ads.zzbio;
import com.google.android.gms.internal.ads.zzbip;
import com.google.android.gms.internal.ads.zzbnf;
import com.google.android.gms.internal.ads.zzbqu;
import com.google.android.gms.internal.ads.zzbqv;
import com.google.android.gms.internal.ads.zzbrb;
import com.google.android.gms.internal.ads.zzbrc;
import com.google.android.gms.internal.ads.zzbuv;
import com.google.android.gms.internal.ads.zzbuw;
import com.google.android.gms.internal.ads.zzbxq;
import com.google.android.gms.internal.ads.zzbxr;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcc extends zzasv implements zzce {
    zzcc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbuw H5(IObjectWrapper iObjectWrapper, String str, zzbnf zzbnfVar, int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        parcelP0.writeString(str);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(12, parcelP0);
        zzbuw zzbuwVarSa = zzbuv.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzbuwVarSa;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu I5(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbnf zzbnfVar, int i10) throws RemoteException {
        zzbu zzbsVar;
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzqVar);
        parcelP0.writeString(str);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(13, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbsVar = iInterfaceQueryLocalInterface instanceof zzbu ? (zzbu) iInterfaceQueryLocalInterface : new zzbs(strongBinder);
        }
        parcelX0.recycle();
        return zzbsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbqv J6(IObjectWrapper iObjectWrapper, zzbnf zzbnfVar, int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(15, parcelP0);
        zzbqv zzbqvVarSa = zzbqu.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzbqvVarSa;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzco T0(IObjectWrapper iObjectWrapper, int i10) throws RemoteException {
        zzco zzcmVar;
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(9, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzcmVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzcmVar = iInterfaceQueryLocalInterface instanceof zzco ? (zzco) iInterfaceQueryLocalInterface : new zzcm(strongBinder);
        }
        parcelX0.recycle();
        return zzcmVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbip U3(IObjectWrapper iObjectWrapper, zzbnf zzbnfVar, int i10, zzbim zzbimVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        zzasx.g(parcelP0, zzbimVar);
        Parcel parcelX0 = X0(16, parcelP0);
        zzbip zzbipVarSa = zzbio.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzbipVarSa;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbeb U6(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, iObjectWrapper2);
        Parcel parcelX0 = X0(5, parcelP0);
        zzbeb zzbebVarSa = zzbea.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzbebVarSa;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbq V9(IObjectWrapper iObjectWrapper, String str, zzbnf zzbnfVar, int i10) throws RemoteException {
        zzbq zzboVar;
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        parcelP0.writeString(str);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(3, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzboVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            zzboVar = iInterfaceQueryLocalInterface instanceof zzbq ? (zzbq) iInterfaceQueryLocalInterface : new zzbo(strongBinder);
        }
        parcelX0.recycle();
        return zzboVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbxr e2(IObjectWrapper iObjectWrapper, zzbnf zzbnfVar, int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(14, parcelP0);
        zzbxr zzbxrVarSa = zzbxq.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzbxrVarSa;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbrc l1(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        Parcel parcelX0 = X0(8, parcelP0);
        zzbrc zzbrcVarSa = zzbrb.Sa(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return zzbrcVarSa;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu p2(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbnf zzbnfVar, int i10) throws RemoteException {
        zzbu zzbsVar;
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzqVar);
        parcelP0.writeString(str);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(1, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbsVar = iInterfaceQueryLocalInterface instanceof zzbu ? (zzbu) iInterfaceQueryLocalInterface : new zzbs(strongBinder);
        }
        parcelX0.recycle();
        return zzbsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu w6(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, int i10) throws RemoteException {
        zzbu zzbsVar;
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzqVar);
        parcelP0.writeString(str);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(10, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbsVar = iInterfaceQueryLocalInterface instanceof zzbu ? (zzbu) iInterfaceQueryLocalInterface : new zzbs(strongBinder);
        }
        parcelX0.recycle();
        return zzbsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzdj y1(IObjectWrapper iObjectWrapper, zzbnf zzbnfVar, int i10) throws RemoteException {
        zzdj zzdhVar;
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(17, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzdhVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTester");
            zzdhVar = iInterfaceQueryLocalInterface instanceof zzdj ? (zzdj) iInterfaceQueryLocalInterface : new zzdh(strongBinder);
        }
        parcelX0.recycle();
        return zzdhVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu z3(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbnf zzbnfVar, int i10) throws RemoteException {
        zzbu zzbsVar;
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        zzasx.e(parcelP0, zzqVar);
        parcelP0.writeString(str);
        zzasx.g(parcelP0, zzbnfVar);
        parcelP0.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel parcelX0 = X0(2, parcelP0);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbsVar = iInterfaceQueryLocalInterface instanceof zzbu ? (zzbu) iInterfaceQueryLocalInterface : new zzbs(strongBinder);
        }
        parcelX0.recycle();
        return zzbsVar;
    }
}
