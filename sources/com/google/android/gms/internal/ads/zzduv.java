package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzduv extends zzdut {
    zzduv(Context context) {
        this.f15731t = new zzbsn(context, com.google.android.gms.ads.internal.zzt.v().b(), this, this);
    }

    public final zzfut b(zzbtn zzbtnVar) {
        synchronized (this.f15727p) {
            if (this.f15728q) {
                return this.f15726o;
            }
            this.f15728q = true;
            this.f15730s = zzbtnVar;
            this.f15731t.v();
            this.f15726o.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzduu
                @Override // java.lang.Runnable
                public final void run() {
                    this.f15732o.a();
                }
            }, zzbzn.f11619f);
            return this.f15726o;
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void t1(Bundle bundle) {
        synchronized (this.f15727p) {
            if (!this.f15729r) {
                this.f15729r = true;
                try {
                    this.f15731t.o0().k6(this.f15730s, new zzdus(this));
                } catch (RemoteException | IllegalArgumentException unused) {
                    this.f15726o.d(new zzdvi(1));
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.zzt.q().u(th, "RemoteSignalsClientTask.onConnected");
                    this.f15726o.d(new zzdvi(1));
                }
            }
        }
    }
}
