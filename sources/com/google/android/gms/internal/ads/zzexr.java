package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzexr implements OnAdMetadataChangedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzdd f17598o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzext f17599p;

    zzexr(zzext zzextVar, com.google.android.gms.ads.internal.client.zzdd zzddVar) {
        this.f17599p = zzextVar;
        this.f17598o = zzddVar;
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void o() {
        if (this.f17599p.f17608v != null) {
            try {
                this.f17598o.b();
            } catch (RemoteException e10) {
                zzbza.i("#007 Could not call remote method.", e10);
            }
        }
    }
}
