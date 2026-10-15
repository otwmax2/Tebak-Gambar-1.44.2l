package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzdwz implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final zzbzs f15847o = new zzbzs();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f15848p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f15849q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected zzbsq f15850r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected Context f15851s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected Looper f15852t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected ScheduledExecutorService f15853u;

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public void P0(int i10) {
        String str = String.format(Locale.US, "Remote ad service connection suspended, cause: %d.", Integer.valueOf(i10));
        zzbza.b(str);
        this.f15847o.d(new zzdvi(1, str));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        String str = String.format(Locale.US, "Remote ad service connection failed, cause: %d.", Integer.valueOf(connectionResult.V3()));
        zzbza.b(str);
        this.f15847o.d(new zzdvi(1, str));
    }

    protected final synchronized void a() {
        if (this.f15850r == null) {
            this.f15850r = new zzbsq(this.f15851s, this.f15852t, this, this);
        }
        this.f15850r.v();
    }

    protected final synchronized void b() {
        this.f15849q = true;
        zzbsq zzbsqVar = this.f15850r;
        if (zzbsqVar == null) {
            return;
        }
        if (zzbsqVar.a() || this.f15850r.f()) {
            this.f15850r.i();
        }
        Binder.flushPendingCommands();
    }
}
