package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzdut implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final zzbzs f15726o = new zzbzs();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected final Object f15727p = new Object();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f15728q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected boolean f15729r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected zzbtn f15730s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected zzbsn f15731t;

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void P0(int i10) {
        zzbza.b("Cannot connect to remote service, fallback to local instance.");
    }

    public void X0(ConnectionResult connectionResult) {
        zzbza.b("Disconnected from remote ad request service.");
        this.f15726o.d(new zzdvi(1));
    }

    protected final void a() {
        synchronized (this.f15727p) {
            this.f15729r = true;
            if (this.f15731t.a() || this.f15731t.f()) {
                this.f15731t.i();
            }
            Binder.flushPendingCommands();
        }
    }
}
