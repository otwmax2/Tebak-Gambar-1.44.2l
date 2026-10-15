package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zak implements Handler.Callback {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NotOnlyInitialized
    private final zaj f7478o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> f7479p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @VisibleForTesting
    final ArrayList<GoogleApiClient.ConnectionCallbacks> f7480q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> f7481r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile boolean f7482s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final AtomicInteger f7483t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f7484u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Handler f7485v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Object f7486w;

    public final void a() {
        this.f7482s = false;
        this.f7483t.incrementAndGet();
    }

    public final void b() {
        this.f7482s = true;
    }

    @VisibleForTesting
    public final void c(ConnectionResult connectionResult) {
        Preconditions.e(this.f7485v, "onConnectionFailure must only be called on the Handler thread");
        this.f7485v.removeMessages(1);
        synchronized (this.f7486w) {
            ArrayList<GoogleApiClient.OnConnectionFailedListener> arrayList = new ArrayList(this.f7481r);
            int i10 = this.f7483t.get();
            for (GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener : arrayList) {
                if (this.f7482s && this.f7483t.get() == i10) {
                    if (this.f7481r.contains(onConnectionFailedListener)) {
                        onConnectionFailedListener.X0(connectionResult);
                    }
                }
                return;
            }
        }
    }

    @VisibleForTesting
    public final void d(Bundle bundle) {
        Preconditions.e(this.f7485v, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.f7486w) {
            Preconditions.n(!this.f7484u);
            this.f7485v.removeMessages(1);
            this.f7484u = true;
            Preconditions.n(this.f7480q.isEmpty());
            ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = new ArrayList(this.f7479p);
            int i10 = this.f7483t.get();
            for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : arrayList) {
                if (!this.f7482s || !this.f7478o.a() || this.f7483t.get() != i10) {
                    break;
                } else if (!this.f7480q.contains(connectionCallbacks)) {
                    connectionCallbacks.t1(bundle);
                }
            }
            this.f7480q.clear();
            this.f7484u = false;
        }
    }

    @VisibleForTesting
    public final void e(int i10) {
        Preconditions.e(this.f7485v, "onUnintentionalDisconnection must only be called on the Handler thread");
        this.f7485v.removeMessages(1);
        synchronized (this.f7486w) {
            this.f7484u = true;
            ArrayList<GoogleApiClient.ConnectionCallbacks> arrayList = new ArrayList(this.f7479p);
            int i11 = this.f7483t.get();
            for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : arrayList) {
                if (!this.f7482s || this.f7483t.get() != i11) {
                    break;
                } else if (this.f7479p.contains(connectionCallbacks)) {
                    connectionCallbacks.P0(i10);
                }
            }
            this.f7480q.clear();
            this.f7484u = false;
        }
    }

    public final void f(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.k(onConnectionFailedListener);
        synchronized (this.f7486w) {
            if (!this.f7481r.remove(onConnectionFailedListener)) {
                String strValueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 57);
                sb.append("unregisterConnectionFailedListener(): listener ");
                sb.append(strValueOf);
                sb.append(" not found");
                Log.w("GmsClientEvents", sb.toString());
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i10 = message.what;
        if (i10 != 1) {
            StringBuilder sb = new StringBuilder(45);
            sb.append("Don't know how to handle message: ");
            sb.append(i10);
            Log.wtf("GmsClientEvents", sb.toString(), new Exception());
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.f7486w) {
            if (this.f7482s && this.f7478o.a() && this.f7479p.contains(connectionCallbacks)) {
                connectionCallbacks.t1(null);
            }
        }
        return true;
    }
}
