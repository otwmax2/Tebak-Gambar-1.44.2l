package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfib implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzfiw f18259o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzfiq f18260p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Object f18261q = new Object();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f18262r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f18263s = false;

    zzfib(Context context, Looper looper, zzfiq zzfiqVar) {
        this.f18260p = zzfiqVar;
        this.f18259o = new zzfiw(context, looper, this, this, 12800000);
    }

    private final void b() {
        synchronized (this.f18261q) {
            if (this.f18259o.a() || this.f18259o.f()) {
                this.f18259o.i();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void P0(int i10) {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
    }

    final void a() {
        synchronized (this.f18261q) {
            if (!this.f18262r) {
                this.f18262r = true;
                this.f18259o.v();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void t1(Bundle bundle) {
        synchronized (this.f18261q) {
            if (this.f18263s) {
                return;
            }
            this.f18263s = true;
            try {
                this.f18259o.o0().Sa(new zzfiu(this.f18260p.t()));
            } catch (Exception unused) {
            } catch (Throwable th) {
                b();
                throw th;
            }
            b();
        }
    }
}
