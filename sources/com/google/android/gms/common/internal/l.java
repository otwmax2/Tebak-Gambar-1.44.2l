package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.StrictMode;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class l implements ServiceConnection, zzs {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Map f7451o = new HashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f7452p = 2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f7453q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private IBinder f7454r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzn f7455s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ComponentName f7456t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ n f7457u;

    public l(n nVar, zzn zznVar) {
        this.f7457u = nVar;
        this.f7455s = zznVar;
    }

    public final int a() {
        return this.f7452p;
    }

    public final ComponentName b() {
        return this.f7456t;
    }

    public final IBinder c() {
        return this.f7454r;
    }

    public final void d(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.f7451o.put(serviceConnection, serviceConnection2);
    }

    public final void e(String str, Executor executor) {
        this.f7452p = 3;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (PlatformVersion.n()) {
            StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder(vmPolicy).permitUnsafeIntentLaunch().build());
        }
        try {
            n nVar = this.f7457u;
            boolean zD = nVar.f7463j.d(nVar.f7460g, str, this.f7455s.c(nVar.f7460g), this, this.f7455s.a(), executor);
            this.f7453q = zD;
            if (zD) {
                this.f7457u.f7461h.sendMessageDelayed(this.f7457u.f7461h.obtainMessage(1, this.f7455s), this.f7457u.f7465l);
            } else {
                this.f7452p = 2;
                try {
                    n nVar2 = this.f7457u;
                    nVar2.f7463j.c(nVar2.f7460g, this);
                } catch (IllegalArgumentException unused) {
                }
            }
        } finally {
            StrictMode.setVmPolicy(vmPolicy);
        }
    }

    public final void f(ServiceConnection serviceConnection, String str) {
        this.f7451o.remove(serviceConnection);
    }

    public final void g(String str) {
        this.f7457u.f7461h.removeMessages(1, this.f7455s);
        n nVar = this.f7457u;
        nVar.f7463j.c(nVar.f7460g, this);
        this.f7453q = false;
        this.f7452p = 2;
    }

    public final boolean h(ServiceConnection serviceConnection) {
        return this.f7451o.containsKey(serviceConnection);
    }

    public final boolean i() {
        return this.f7451o.isEmpty();
    }

    public final boolean j() {
        return this.f7453q;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f7457u.f7459f) {
            this.f7457u.f7461h.removeMessages(1, this.f7455s);
            this.f7454r = iBinder;
            this.f7456t = componentName;
            Iterator it = this.f7451o.values().iterator();
            while (it.hasNext()) {
                ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
            }
            this.f7452p = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f7457u.f7459f) {
            this.f7457u.f7461h.removeMessages(1, this.f7455s);
            this.f7454r = null;
            this.f7456t = componentName;
            Iterator it = this.f7451o.values().iterator();
            while (it.hasNext()) {
                ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
            }
            this.f7452p = 2;
        }
    }
}
