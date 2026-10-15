package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzavz implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzbzs f10045o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzawa f10046p;

    zzavz(zzawa zzawaVar, zzbzs zzbzsVar) {
        this.f10046p = zzawaVar;
        this.f10045o = zzbzsVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        synchronized (this.f10046p.f10062d) {
            this.f10045o.d(new RuntimeException("Connection failed."));
        }
    }
}
