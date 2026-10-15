package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzavl implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzavm f10012o;

    zzavl(zzavm zzavmVar) {
        this.f10012o = zzavmVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        synchronized (this.f10012o.f10015c) {
            this.f10012o.f10018f = null;
            zzavm zzavmVar = this.f10012o;
            if (zzavmVar.f10016d != null) {
                zzavmVar.f10016d = null;
            }
            this.f10012o.f10015c.notifyAll();
        }
    }
}
