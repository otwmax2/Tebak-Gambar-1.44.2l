package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbdv extends zzasv implements zzbdx {
    zzbdv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.zzbdx
    public final int a() throws RemoteException {
        Parcel parcelX0 = X0(5, P0());
        int i10 = parcelX0.readInt();
        parcelX0.recycle();
        return i10;
    }

    @Override // com.google.android.gms.internal.ads.zzbdx
    public final Uri b() throws RemoteException {
        Parcel parcelX0 = X0(2, P0());
        Uri uri = (Uri) zzasx.a(parcelX0, Uri.CREATOR);
        parcelX0.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbdx
    public final IObjectWrapper c() throws RemoteException {
        Parcel parcelX0 = X0(1, P0());
        IObjectWrapper iObjectWrapperX0 = IObjectWrapper.Stub.X0(parcelX0.readStrongBinder());
        parcelX0.recycle();
        return iObjectWrapperX0;
    }

    @Override // com.google.android.gms.internal.ads.zzbdx
    public final int d() throws RemoteException {
        Parcel parcelX0 = X0(4, P0());
        int i10 = parcelX0.readInt();
        parcelX0.recycle();
        return i10;
    }

    @Override // com.google.android.gms.internal.ads.zzbdx
    public final double zzb() throws RemoteException {
        Parcel parcelX0 = X0(3, P0());
        double d10 = parcelX0.readDouble();
        parcelX0.recycle();
        return d10;
    }
}
