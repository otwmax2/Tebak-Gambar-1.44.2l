package com.google.android.gms.internal.drive;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.events.ChangeListener;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaw extends GmsClient<zzeo> {
    private final String W;
    private final Bundle X;
    protected final boolean Y;
    private volatile DriveId Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private volatile DriveId f21818a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private volatile boolean f21819b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("changeEventCallbackMap")
    private final Map<DriveId, Map<ChangeListener, zzee>> f21820c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("changesAvailableEventCallbackMap")
    private final Map<com.google.android.gms.drive.events.zzd, zzee> f21821d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("uploadProgressEventCallbackMap")
    private final Map<DriveId, Map<com.google.android.gms.drive.events.zzl, zzee>> f21822e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("pinnedDownloadProgressEventCallbackMap")
    private final Map<DriveId, Map<com.google.android.gms.drive.events.zzl, zzee>> f21823f0;

    public zzaw(Context context, Looper looper, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, Bundle bundle) {
        super(context, looper, 11, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.f21819b0 = false;
        this.f21820c0 = new HashMap();
        this.f21821d0 = new HashMap();
        this.f21822e0 = new HashMap();
        this.f21823f0 = new HashMap();
        this.W = clientSettings.g();
        this.X = bundle;
        Intent intent = new Intent("com.google.android.gms.drive.events.HANDLE_EVENT");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        int size = listQueryIntentServices.size();
        if (size == 0) {
            this.Y = false;
            return;
        }
        if (size != 1) {
            String action = intent.getAction();
            StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 72);
            sb.append("AndroidManifest.xml can only define one service that handles the ");
            sb.append(action);
            sb.append(" action");
            throw new IllegalStateException(sb.toString());
        }
        ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
        if (serviceInfo.exported) {
            this.Y = true;
            return;
        }
        String str = serviceInfo.name;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 60);
        sb2.append("Drive event service ");
        sb2.append(str);
        sb2.append(" must be exported in AndroidManifest.xml");
        throw new IllegalStateException(sb2.toString());
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final Bundle F() {
        String packageName = D().getPackageName();
        Preconditions.k(packageName);
        Preconditions.n(!o0().d().isEmpty());
        Bundle bundle = new Bundle();
        if (!packageName.equals(this.W)) {
            bundle.putString("proxy_package_name", this.W);
        }
        bundle.putAll(this.X);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String J() {
        return "com.google.android.gms.drive.internal.IDriveService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String K() {
        return "com.google.android.gms.drive.ApiService.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final void S(int i10, IBinder iBinder, Bundle bundle, int i11) {
        if (bundle != null) {
            bundle.setClassLoader(zzaw.class.getClassLoader());
            this.Z = (DriveId) bundle.getParcelable("com.google.android.gms.drive.root_id");
            this.f21818a0 = (DriveId) bundle.getParcelable("com.google.android.gms.drive.appdata_id");
            this.f21819b0 = true;
        }
        super.S(i10, iBinder, bundle, i11);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean T() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final void i() {
        if (a()) {
            try {
                ((zzeo) I()).s8(new zzad());
            } catch (RemoteException unused) {
            }
        }
        super.i();
        synchronized (this.f21820c0) {
            this.f21820c0.clear();
        }
        synchronized (this.f21821d0) {
            this.f21821d0.clear();
        }
        synchronized (this.f21822e0) {
            this.f21822e0.clear();
        }
        synchronized (this.f21823f0) {
            this.f21823f0.clear();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int n() {
        return 12451000;
    }

    public final DriveId r0() {
        return this.Z;
    }

    public final DriveId s0() {
        return this.f21818a0;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean t() {
        return (D().getPackageName().equals(this.W) && UidVerifier.a(D(), Process.myUid())) ? false : true;
    }

    public final boolean t0() {
        return this.Y;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface x(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.internal.IDriveService");
        return iInterfaceQueryLocalInterface instanceof zzeo ? (zzeo) iInterfaceQueryLocalInterface : new zzep(iBinder);
    }
}
