package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzexy implements OnAdMetadataChangedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzby f17618o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzexz f17619p;

    zzexy(zzexz zzexzVar, com.google.android.gms.ads.internal.client.zzby zzbyVar) {
        this.f17619p = zzexzVar;
        this.f17618o = zzbyVar;
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void o() {
        if (this.f17619p.f17623r != null) {
            try {
                this.f17618o.b();
            } catch (RemoteException e10) {
                zzbza.i("#007 Could not call remote method.", e10);
            }
        }
    }
}
