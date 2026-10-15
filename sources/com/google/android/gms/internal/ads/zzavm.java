package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzavm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ScheduledFuture f10013a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Runnable f10014b = new zzavi(this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f10015c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("lock")
    private zzavp f10016d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("lock")
    private Context f10017e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("lock")
    private zzavs f10018f;

    static /* bridge */ /* synthetic */ void h(zzavm zzavmVar) {
        synchronized (zzavmVar.f10015c) {
            zzavp zzavpVar = zzavmVar.f10016d;
            if (zzavpVar == null) {
                return;
            }
            if (zzavpVar.a() || zzavmVar.f10016d.f()) {
                zzavmVar.f10016d.i();
            }
            zzavmVar.f10016d = null;
            zzavmVar.f10018f = null;
            Binder.flushPendingCommands();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l() {
        synchronized (this.f10015c) {
            if (this.f10017e != null && this.f10016d == null) {
                zzavp zzavpVarD = d(new zzavk(this), new zzavl(this));
                this.f10016d = zzavpVarD;
                zzavpVarD.v();
            }
        }
    }

    public final long a(zzavq zzavqVar) {
        synchronized (this.f10015c) {
            if (this.f10018f == null) {
                return -2L;
            }
            if (this.f10016d.o0()) {
                try {
                    return this.f10018f.A9(zzavqVar);
                } catch (RemoteException e10) {
                    zzbza.e("Unable to call into cache service.", e10);
                }
            }
            return -2L;
        }
    }

    public final zzavn b(zzavq zzavqVar) {
        synchronized (this.f10015c) {
            if (this.f10018f == null) {
                return new zzavn();
            }
            try {
                if (this.f10016d.o0()) {
                    return this.f10018f.Sa(zzavqVar);
                }
                return this.f10018f.Ra(zzavqVar);
            } catch (RemoteException e10) {
                zzbza.e("Unable to call into cache service.", e10);
                return new zzavn();
            }
        }
    }

    @VisibleForTesting
    protected final synchronized zzavp d(BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        return new zzavp(this.f10017e, com.google.android.gms.ads.internal.zzt.v().b(), baseConnectionCallbacks, baseOnConnectionFailedListener);
    }

    public final void i(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.f10015c) {
            if (this.f10017e != null) {
                return;
            }
            this.f10017e = context.getApplicationContext();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.M3)).booleanValue()) {
                l();
            } else {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L3)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.d().c(new zzavj(this));
                }
            }
        }
    }

    public final void j() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.N3)).booleanValue()) {
            synchronized (this.f10015c) {
                l();
                ScheduledFuture scheduledFuture = this.f10013a;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.f10013a = zzbzn.f11617d.schedule(this.f10014b, ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.O3)).longValue(), TimeUnit.MILLISECONDS);
            }
        }
    }
}
