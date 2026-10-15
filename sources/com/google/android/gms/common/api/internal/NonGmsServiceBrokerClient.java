package com.google.android.gms.common.api.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class NonGmsServiceBrokerClient implements Api.Client, ServiceConnection {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f7038z = NonGmsServiceBrokerClient.class.getSimpleName();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f7039o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f7040p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ComponentName f7041q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Context f7042r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final ConnectionCallbacks f7043s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Handler f7044t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final OnConnectionFailedListener f7045u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private IBinder f7046v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f7047w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f7048x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f7049y;

    private final void x() {
        if (Thread.currentThread() != this.f7044t.getLooper().getThread()) {
            throw new IllegalStateException("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
        }
    }

    private final void y(String str) {
        String.valueOf(this.f7046v);
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean a() {
        x();
        return this.f7046v != null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean b() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Set<Scope> c() {
        return Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void d(IAccountAccessor iAccountAccessor, Set<Scope> set) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void e(String str) {
        x();
        this.f7048x = str;
        i();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean f() {
        x();
        return this.f7047w;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final String g() {
        String str = this.f7039o;
        if (str != null) {
            return str;
        }
        Preconditions.k(this.f7041q);
        return this.f7041q.getPackageName();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void h(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        x();
        y("Connect started.");
        if (a()) {
            try {
                e("connect() called when already connected");
            } catch (Exception unused) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.f7041q;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.f7039o).setAction(this.f7040p);
            }
            boolean zBindService = this.f7042r.bindService(intent, this, GmsClientSupervisor.a());
            this.f7047w = zBindService;
            if (!zBindService) {
                this.f7046v = null;
                this.f7045u.X0(new ConnectionResult(16));
            }
            y("Finished connect.");
        } catch (SecurityException e10) {
            this.f7047w = false;
            this.f7046v = null;
            throw e10;
        }
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void i() {
        x();
        y("Disconnect called.");
        try {
            this.f7042r.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        this.f7047w = false;
        this.f7046v = null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void j(BaseGmsClient.SignOutCallbacks signOutCallbacks) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void k(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean l() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final int n() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Feature[] o() {
        return new Feature[0];
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        this.f7044t.post(new Runnable() { // from class: com.google.android.gms.common.api.internal.zacg
            @Override // java.lang.Runnable
            public final void run() {
                this.f7238o.v(iBinder);
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f7044t.post(new Runnable() { // from class: com.google.android.gms.common.api.internal.zacf
            @Override // java.lang.Runnable
            public final void run() {
                this.f7237o.u();
            }
        });
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final String r() {
        return this.f7048x;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Intent s() {
        return new Intent();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean t() {
        return false;
    }

    final /* synthetic */ void u() {
        this.f7047w = false;
        this.f7046v = null;
        y("Disconnected.");
        this.f7043s.P0(1);
    }

    final /* synthetic */ void v(IBinder iBinder) {
        this.f7047w = false;
        this.f7046v = iBinder;
        y("Connected.");
        this.f7043s.t1(new Bundle());
    }

    public final void w(String str) {
        this.f7049y = str;
    }
}
