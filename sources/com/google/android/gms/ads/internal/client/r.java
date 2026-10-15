package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbyt;
import com.google.android.gms.internal.ads.zzbza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class r extends zzbm {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzeu f5768o;

    /* synthetic */ r(zzeu zzeuVar, zzes zzesVar) {
        this.f5768o = zzeuVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final String b() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final String c() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final boolean g() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void i5(zzl zzlVar) throws RemoteException {
        ra(zzlVar, 1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void ra(zzl zzlVar, int i10) throws RemoteException {
        zzbza.d("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzbyt.f11579b.post(new q(this));
    }
}
