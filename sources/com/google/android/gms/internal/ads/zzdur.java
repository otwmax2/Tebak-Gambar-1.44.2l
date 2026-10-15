package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdur extends zzdut {
    public zzdur(Context context) {
        this.f15731t = new zzbsn(context, com.google.android.gms.ads.internal.zzt.v().b(), this, this);
    }

    @Override // com.google.android.gms.internal.ads.zzdut, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        zzbza.b("Cannot connect to remote service, fallback to local instance.");
        this.f15726o.d(new zzdvi(1));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void t1(Bundle bundle) {
        synchronized (this.f15727p) {
            if (!this.f15729r) {
                this.f15729r = true;
                try {
                    this.f15731t.o0().L4(this.f15730s, new zzdus(this));
                } catch (RemoteException | IllegalArgumentException unused) {
                    this.f15726o.d(new zzdvi(1));
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.zzt.q().u(th, "RemoteAdRequestClientTask.onConnected");
                    this.f15726o.d(new zzdvi(1));
                }
            }
        }
    }
}
