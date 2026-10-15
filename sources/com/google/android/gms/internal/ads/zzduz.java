package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzduz extends zzdut {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f15736u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f15737v = 1;

    zzduz(Context context) {
        this.f15731t = new zzbsn(context, com.google.android.gms.ads.internal.zzt.v().b(), this, this);
    }

    @Override // com.google.android.gms.internal.ads.zzdut, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        zzbza.b("Cannot connect to remote service, fallback to local instance.");
        this.f15726o.d(new zzdvi(1));
    }

    public final zzfut b(zzbtn zzbtnVar) {
        synchronized (this.f15727p) {
            int i10 = this.f15737v;
            if (i10 != 1 && i10 != 2) {
                return zzfuj.g(new zzdvi(2));
            }
            if (this.f15728q) {
                return this.f15726o;
            }
            this.f15737v = 2;
            this.f15728q = true;
            this.f15730s = zzbtnVar;
            this.f15731t.v();
            this.f15726o.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzduy
                @Override // java.lang.Runnable
                public final void run() {
                    this.f15735o.a();
                }
            }, zzbzn.f11619f);
            return this.f15726o;
        }
    }

    public final zzfut c(String str) {
        synchronized (this.f15727p) {
            int i10 = this.f15737v;
            if (i10 != 1 && i10 != 3) {
                return zzfuj.g(new zzdvi(2));
            }
            if (this.f15728q) {
                return this.f15726o;
            }
            this.f15737v = 3;
            this.f15728q = true;
            this.f15736u = str;
            this.f15731t.v();
            this.f15726o.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdux
                @Override // java.lang.Runnable
                public final void run() {
                    this.f15734o.a();
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
                    try {
                        int i10 = this.f15737v;
                        if (i10 == 2) {
                            this.f15731t.o0().I2(this.f15730s, new zzdus(this));
                        } else if (i10 == 3) {
                            this.f15731t.o0().J2(this.f15736u, new zzdus(this));
                        } else {
                            this.f15726o.d(new zzdvi(1));
                        }
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.f15726o.d(new zzdvi(1));
                    }
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.zzt.q().u(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
                    this.f15726o.d(new zzdvi(1));
                }
            }
        }
    }
}
