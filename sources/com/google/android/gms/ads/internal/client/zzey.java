package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbjs;
import com.google.android.gms.internal.ads.zzbnf;
import com.google.android.gms.internal.ads.zzbyt;
import com.google.android.gms.internal.ads.zzbza;
import com.vungle.mediation.BuildConfig;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzey extends zzcn {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzbjs f5889o;

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void C6(float f10) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void G8(zzbjs zzbjsVar) throws RemoteException {
        this.f5889o = zzbjsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void H0(boolean z10) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void Ia(boolean z10) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void M4(zzbnf zzbnfVar) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void R7(zzff zzffVar) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final float b() throws RemoteException {
        return 1.0f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final String c() {
        return BuildConfig.FLAVOR;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final List e() throws RemoteException {
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void g() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void i() throws RemoteException {
        zzbza.d("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        zzbyt.f11579b.post(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzex
            @Override // java.lang.Runnable
            public final void run() {
                this.f5888o.zzb();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void i1(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void i4(zzda zzdaVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void q7(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final boolean t() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void t0(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void x6(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void z0(String str) {
    }

    final /* synthetic */ void zzb() {
        zzbjs zzbjsVar = this.f5889o;
        if (zzbjsVar != null) {
            try {
                zzbjsVar.n8(Collections.emptyList());
            } catch (RemoteException e10) {
                zzbza.h("Could not notify onComplete event.", e10);
            }
        }
    }
}
