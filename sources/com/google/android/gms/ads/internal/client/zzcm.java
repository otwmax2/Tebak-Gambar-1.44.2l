package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzasv;
import com.google.android.gms.internal.ads.zzasx;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzbjs;
import com.google.android.gms.internal.ads.zzbnf;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzcm extends zzasv implements zzco {
    zzcm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void G8(zzbjs zzbjsVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbjsVar);
        t1(12, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void M4(zzbnf zzbnfVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbnfVar);
        t1(11, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void R7(zzff zzffVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzffVar);
        t1(14, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final List e() throws RemoteException {
        Parcel parcelX0 = X0(13, P0());
        ArrayList arrayListCreateTypedArrayList = parcelX0.createTypedArrayList(zzbjl.CREATOR);
        parcelX0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void i() throws RemoteException {
        t1(1, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void x6(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(null);
        zzasx.g(parcelP0, iObjectWrapper);
        t1(6, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void z0(String str) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        t1(18, parcelP0);
    }
}
