package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasv;
import com.google.android.gms.internal.ads.zzasx;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdr extends zzasv implements zzdt {
    zzdr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void b() throws RemoteException {
        t1(4, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void e() throws RemoteException {
        t1(3, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void f() throws RemoteException {
        t1(2, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void g() throws RemoteException {
        t1(1, P0());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void y0(boolean z10) throws RemoteException {
        Parcel parcelP0 = P0();
        zzasx.d(parcelP0, z10);
        t1(5, parcelP0);
    }
}
