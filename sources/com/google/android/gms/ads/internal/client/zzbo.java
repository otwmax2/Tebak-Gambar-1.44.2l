package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasv;
import com.google.android.gms.internal.ads.zzasx;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzbfb;
import com.google.android.gms.internal.ads.zzbfe;
import com.google.android.gms.internal.ads.zzbfl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbo extends zzasv implements zzbq {
    zzbo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void F1(zzbfl zzbflVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbflVar);
        t1(10, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void X5(String str, zzbfe zzbfeVar, zzbfb zzbfbVar) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeString(str);
        zzasx.g(parcelP0, zzbfeVar);
        zzasx.g(parcelP0, zzbfbVar);
        t1(5, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void Y8(zzbh zzbhVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, zzbhVar);
        t1(2, parcelP0);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final zzbn b() throws RemoteException {
        zzbn zzblVar;
        Parcel parcelX0 = X0(1, P0());
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            zzblVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            zzblVar = iInterfaceQueryLocalInterface instanceof zzbn ? (zzbn) iInterfaceQueryLocalInterface : new zzbl(strongBinder);
        }
        parcelX0.recycle();
        return zzblVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void wa(zzbdl zzbdlVar) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.e(parcelP0, zzbdlVar);
        t1(6, parcelP0);
    }
}
