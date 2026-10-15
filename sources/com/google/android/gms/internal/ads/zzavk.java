package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzavk implements BaseGmsClient.BaseConnectionCallbacks {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzavm f10011o;

    zzavk(zzavm zzavmVar) {
        this.f10011o = zzavmVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void P0(int i10) {
        synchronized (this.f10011o.f10015c) {
            this.f10011o.f10018f = null;
            this.f10011o.f10015c.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void t1(Bundle bundle) {
        zzavm zzavmVar;
        synchronized (this.f10011o.f10015c) {
            try {
                zzavmVar = this.f10011o;
            } catch (DeadObjectException e10) {
                zzbza.e("Unable to obtain a cache service instance.", e10);
                zzavm.h(this.f10011o);
            }
            if (zzavmVar.f10016d != null) {
                zzavmVar.f10018f = zzavmVar.f10016d.p0();
                this.f10011o.f10015c.notifyAll();
            } else {
                this.f10011o.f10015c.notifyAll();
            }
        }
    }
}
