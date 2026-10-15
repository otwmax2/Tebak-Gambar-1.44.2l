package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasy extends zzasv implements zzata {
    zzasy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // com.google.android.gms.internal.ads.zzata
    public final void N7(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.g(parcelP0, iObjectWrapper);
        parcelP0.writeString("GMA_SDK");
        t1(2, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzata
    public final void O0(byte[] bArr) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeByteArray(bArr);
        t1(5, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzata
    public final void Q(int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeInt(0);
        t1(6, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzata
    public final void c() throws RemoteException {
        t1(3, P0());
    }

    @Override // com.google.android.gms.internal.ads.zzata
    public final void g1(int[] iArr) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeIntArray(null);
        t1(4, parcelP0);
    }

    @Override // com.google.android.gms.internal.ads.zzata
    public final void w(int i10) throws RemoteException {
        Parcel parcelP0 = P0();
        parcelP0.writeInt(i10);
        t1(7, parcelP0);
    }
}
