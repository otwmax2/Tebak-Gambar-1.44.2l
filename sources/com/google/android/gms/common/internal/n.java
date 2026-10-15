package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class n extends GmsClientSupervisor {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("connectionStatus")
    private final HashMap f7459f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Context f7460g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile Handler f7461h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final m f7462i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ConnectionTracker f7463j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f7464k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f7465l;

    n(Context context, Looper looper) {
        m mVar = new m(this, null);
        this.f7462i = mVar;
        this.f7460g = context.getApplicationContext();
        this.f7461h = new com.google.android.gms.internal.common.zzi(looper, mVar);
        this.f7463j = ConnectionTracker.b();
        this.f7464k = 5000L;
        this.f7465l = 300000L;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    protected final void d(zzn zznVar, ServiceConnection serviceConnection, String str) {
        Preconditions.l(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f7459f) {
            l lVar = (l) this.f7459f.get(zznVar);
            if (lVar == null) {
                throw new IllegalStateException("Nonexistent connection status for service config: " + zznVar.toString());
            }
            if (!lVar.h(serviceConnection)) {
                throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + zznVar.toString());
            }
            lVar.f(serviceConnection, str);
            if (lVar.i()) {
                this.f7461h.sendMessageDelayed(this.f7461h.obtainMessage(0, zznVar), this.f7464k);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    protected final boolean f(zzn zznVar, ServiceConnection serviceConnection, String str, Executor executor) {
        boolean zJ;
        Preconditions.l(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f7459f) {
            l lVar = (l) this.f7459f.get(zznVar);
            if (lVar == null) {
                lVar = new l(this, zznVar);
                lVar.d(serviceConnection, serviceConnection, str);
                lVar.e(str, executor);
                this.f7459f.put(zznVar, lVar);
            } else {
                this.f7461h.removeMessages(0, zznVar);
                if (lVar.h(serviceConnection)) {
                    throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + zznVar.toString());
                }
                lVar.d(serviceConnection, serviceConnection, str);
                int iA = lVar.a();
                if (iA == 1) {
                    serviceConnection.onServiceConnected(lVar.b(), lVar.c());
                } else if (iA == 2) {
                    lVar.e(str, executor);
                }
            }
            zJ = lVar.j();
        }
        return zJ;
    }
}
