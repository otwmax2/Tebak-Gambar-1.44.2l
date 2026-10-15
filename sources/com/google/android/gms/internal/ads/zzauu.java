package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzauu extends AppOpenAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzauy f9997a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f9998b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzauv f9999c = new zzauv();

    public zzauu(zzauy zzauyVar, String str) {
        this.f9997a = zzauyVar;
        this.f9998b = str;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final ResponseInfo a() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVarC;
        try {
            zzdnVarC = this.f9997a.c();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            zzdnVarC = null;
        }
        return ResponseInfo.e(zzdnVarC);
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void c(Activity activity) {
        try {
            this.f9997a.ca(ObjectWrapper.Q4(activity), this.f9999c);
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }
}
