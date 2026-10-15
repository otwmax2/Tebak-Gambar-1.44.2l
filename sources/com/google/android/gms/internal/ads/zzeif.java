package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeif implements com.google.android.gms.ads.internal.client.zza, zzdcc {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @GuardedBy("this")
    private com.google.android.gms.ads.internal.client.zzbe f16708o;

    public final synchronized void a(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
        this.f16708o = zzbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final synchronized void p() {
        com.google.android.gms.ads.internal.client.zzbe zzbeVar = this.f16708o;
        if (zzbeVar != null) {
            try {
                zzbeVar.zzb();
            } catch (RemoteException e10) {
                zzbza.h("Remote Exception at onPhysicalClick.", e10);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final synchronized void q() {
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void w0() {
        com.google.android.gms.ads.internal.client.zzbe zzbeVar = this.f16708o;
        if (zzbeVar != null) {
            try {
                zzbeVar.zzb();
            } catch (RemoteException e10) {
                zzbza.h("Remote Exception at onAdClicked.", e10);
            }
        }
    }
}
