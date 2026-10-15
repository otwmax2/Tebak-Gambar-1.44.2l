package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
public final class zzka implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile boolean f24803o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile zzeu f24804p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzkb f24805q;

    protected zzka(zzkb zzkbVar) {
        this.f24805q = zzkbVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void P0(int i10) {
        Preconditions.f("MeasurementServiceConnection.onConnectionSuspended");
        this.f24805q.f24394a.U().l().a("Service connection suspended");
        this.f24805q.f24394a.B().v(new c3(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void X0(ConnectionResult connectionResult) {
        Preconditions.f("MeasurementServiceConnection.onConnectionFailed");
        zzey zzeyVarC = this.f24805q.f24394a.C();
        if (zzeyVarC != null) {
            zzeyVarC.r().b("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f24803o = false;
            this.f24804p = null;
        }
        this.f24805q.f24394a.B().v(new d3(this));
    }

    public final void b(Intent intent) {
        this.f24805q.c();
        Context contextN0 = this.f24805q.f24394a.N0();
        ConnectionTracker connectionTrackerB = ConnectionTracker.b();
        synchronized (this) {
            if (this.f24803o) {
                this.f24805q.f24394a.U().q().a("Connection attempt already in progress");
                return;
            }
            this.f24805q.f24394a.U().q().a("Using local app measurement service");
            this.f24803o = true;
            connectionTrackerB.a(contextN0, intent, this.f24805q.f24806c, 129);
        }
    }

    public final void c() {
        this.f24805q.c();
        Context contextN0 = this.f24805q.f24394a.N0();
        synchronized (this) {
            if (this.f24803o) {
                this.f24805q.f24394a.U().q().a("Connection attempt already in progress");
                return;
            }
            if (this.f24804p != null && (this.f24804p.f() || this.f24804p.a())) {
                this.f24805q.f24394a.U().q().a("Already awaiting connection attempt");
                return;
            }
            this.f24804p = new zzeu(contextN0, Looper.getMainLooper(), this, this);
            this.f24805q.f24394a.U().q().a("Connecting to remote service");
            this.f24803o = true;
            Preconditions.k(this.f24804p);
            this.f24804p.v();
        }
    }

    public final void d() {
        if (this.f24804p != null && (this.f24804p.a() || this.f24804p.f())) {
            this.f24804p.i();
        }
        this.f24804p = null;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Preconditions.f("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f24803o = false;
                this.f24805q.f24394a.U().m().a("Service connected with null binder");
                return;
            }
            zzeo zzemVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    zzemVar = iInterfaceQueryLocalInterface instanceof zzeo ? (zzeo) iInterfaceQueryLocalInterface : new zzem(iBinder);
                    this.f24805q.f24394a.U().q().a("Bound to IMeasurementService interface");
                } else {
                    this.f24805q.f24394a.U().m().b("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.f24805q.f24394a.U().m().a("Service connect failed to get IMeasurementService");
            }
            if (zzemVar == null) {
                this.f24803o = false;
                try {
                    ConnectionTracker.b().c(this.f24805q.f24394a.N0(), this.f24805q.f24806c);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.f24805q.f24394a.B().v(new z2(this, zzemVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.f("MeasurementServiceConnection.onServiceDisconnected");
        this.f24805q.f24394a.U().l().a("Service disconnected");
        this.f24805q.f24394a.B().v(new a3(this, componentName));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void t1(Bundle bundle) {
        Preconditions.f("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                Preconditions.k(this.f24804p);
                this.f24805q.f24394a.B().v(new b3(this, (zzeo) this.f24804p.I()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f24804p = null;
                this.f24803o = false;
            }
        }
    }
}
