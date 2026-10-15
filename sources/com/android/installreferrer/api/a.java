package com.android.installreferrer.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.List;
import x3.a;

/* JADX INFO: compiled from: InstallReferrerClientImpl.java */
/* JADX INFO: loaded from: classes.dex */
class a extends InstallReferrerClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5020a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f5021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private x3.a f5022c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ServiceConnection f5023d;

    /* JADX INFO: compiled from: InstallReferrerClientImpl.java */
    private final class b implements ServiceConnection {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final InstallReferrerStateListener f5024o;

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            u1.a.a("InstallReferrerClient", "Install Referrer service connected.");
            a.this.f5022c = a.AbstractBinderC0294a.P0(iBinder);
            a.this.f5020a = 2;
            this.f5024o.onInstallReferrerSetupFinished(0);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            u1.a.b("InstallReferrerClient", "Install Referrer service disconnected.");
            a.this.f5022c = null;
            a.this.f5020a = 0;
            this.f5024o.onInstallReferrerServiceDisconnected();
        }

        private b(InstallReferrerStateListener installReferrerStateListener) {
            if (installReferrerStateListener == null) {
                throw new RuntimeException("Please specify a listener to know when setup is done.");
            }
            this.f5024o = installReferrerStateListener;
        }
    }

    public a(Context context) {
        this.f5021b = context.getApplicationContext();
    }

    private boolean f() {
        try {
            return this.f5021b.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public ReferrerDetails a() throws RemoteException {
        if (!g()) {
            throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", this.f5021b.getPackageName());
        try {
            return new ReferrerDetails(this.f5022c.d5(bundle));
        } catch (RemoteException e10) {
            u1.a.b("InstallReferrerClient", "RemoteException getting install referrer information");
            this.f5020a = 0;
            throw e10;
        }
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public void c(InstallReferrerStateListener installReferrerStateListener) {
        ServiceInfo serviceInfo;
        if (g()) {
            u1.a.a("InstallReferrerClient", "Service connection is valid. No need to re-initialize.");
            installReferrerStateListener.onInstallReferrerSetupFinished(0);
            return;
        }
        int i10 = this.f5020a;
        if (i10 == 1) {
            u1.a.b("InstallReferrerClient", "Client is already in the process of connecting to the service.");
            installReferrerStateListener.onInstallReferrerSetupFinished(3);
            return;
        }
        if (i10 == 3) {
            u1.a.b("InstallReferrerClient", "Client was already closed and can't be reused. Please create another instance.");
            installReferrerStateListener.onInstallReferrerSetupFinished(3);
            return;
        }
        u1.a.a("InstallReferrerClient", "Starting install referrer service setup.");
        this.f5023d = new b(installReferrerStateListener);
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        List<ResolveInfo> listQueryIntentServices = this.f5021b.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty() || (serviceInfo = listQueryIntentServices.get(0).serviceInfo) == null) {
            this.f5020a = 0;
            u1.a.a("InstallReferrerClient", "Install Referrer service unavailable on device.");
            installReferrerStateListener.onInstallReferrerSetupFinished(2);
            return;
        }
        String str = serviceInfo.packageName;
        String str2 = serviceInfo.name;
        if (!"com.android.vending".equals(str) || str2 == null || !f()) {
            u1.a.b("InstallReferrerClient", "Play Store missing or incompatible. Version 8.3.73 or later required.");
            this.f5020a = 0;
            installReferrerStateListener.onInstallReferrerSetupFinished(2);
        } else {
            if (this.f5021b.bindService(new Intent(intent), this.f5023d, 1)) {
                u1.a.a("InstallReferrerClient", "Service was bonded successfully.");
                return;
            }
            u1.a.b("InstallReferrerClient", "Connection to service is blocked.");
            this.f5020a = 0;
            installReferrerStateListener.onInstallReferrerSetupFinished(1);
        }
    }

    public boolean g() {
        return (this.f5020a != 2 || this.f5022c == null || this.f5023d == null) ? false : true;
    }
}
