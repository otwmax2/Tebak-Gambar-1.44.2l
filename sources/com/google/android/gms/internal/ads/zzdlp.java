package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdlp extends VideoController.VideoLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdgi f15107a;

    public zzdlp(zzdgi zzdgiVar) {
        this.f15107a = zzdgiVar;
    }

    private static com.google.android.gms.ads.internal.client.zzdt f(zzdgi zzdgiVar) {
        com.google.android.gms.ads.internal.client.zzdq zzdqVarT = zzdgiVar.T();
        if (zzdqVarT == null) {
            return null;
        }
        try {
            return zzdqVarT.g();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void a() {
        com.google.android.gms.ads.internal.client.zzdt zzdtVarF = f(this.f15107a);
        if (zzdtVarF == null) {
            return;
        }
        try {
            zzdtVarF.b();
        } catch (RemoteException e10) {
            zzbza.h("Unable to call onVideoEnd()", e10);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void c() {
        com.google.android.gms.ads.internal.client.zzdt zzdtVarF = f(this.f15107a);
        if (zzdtVarF == null) {
            return;
        }
        try {
            zzdtVarF.e();
        } catch (RemoteException e10) {
            zzbza.h("Unable to call onVideoEnd()", e10);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void e() {
        com.google.android.gms.ads.internal.client.zzdt zzdtVarF = f(this.f15107a);
        if (zzdtVarF == null) {
            return;
        }
        try {
            zzdtVarF.g();
        } catch (RemoteException e10) {
            zzbza.h("Unable to call onVideoEnd()", e10);
        }
    }
}
