package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbut;
import com.google.android.gms.internal.ads.zzbuv;
import com.google.android.gms.internal.ads.zzbuz;
import com.google.android.gms.internal.ads.zzbvd;
import com.google.android.gms.internal.ads.zzbve;
import com.google.android.gms.internal.ads.zzbvk;
import com.google.android.gms.internal.ads.zzbyt;
import com.google.android.gms.internal.ads.zzbza;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfc extends zzbuv {
    private static void Ta(final zzbvd zzbvdVar) {
        zzbza.d("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzbyt.f11579b.post(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzfb
            @Override // java.lang.Runnable
            public final void run() {
                zzbvd zzbvdVar2 = zzbvdVar;
                if (zzbvdVar2 != null) {
                    try {
                        zzbvdVar2.F(1);
                    } catch (RemoteException e10) {
                        zzbza.i("#007 Could not call remote method.", e10);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void B6(zzl zzlVar, zzbvd zzbvdVar) throws RemoteException {
        Ta(zzbvdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void Ba(zzbvk zzbvkVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void C7(zzdd zzddVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void Fa(zzbuz zzbuzVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void R3(zzbve zzbveVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void Z0(boolean z10) {
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final zzdn a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final String b() throws RemoteException {
        return BuildConfig.FLAVOR;
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final zzbut d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void e5(IObjectWrapper iObjectWrapper, boolean z10) {
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void f5(zzl zzlVar, zzbvd zzbvdVar) throws RemoteException {
        Ta(zzbvdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void g3(zzdg zzdgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final void l1(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final boolean m() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbuw
    public final Bundle zzb() throws RemoteException {
        return new Bundle();
    }
}
