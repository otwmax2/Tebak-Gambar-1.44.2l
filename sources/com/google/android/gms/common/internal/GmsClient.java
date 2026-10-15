package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class GmsClient<T extends IInterface> extends BaseGmsClient<T> implements Api.Client, zaj {
    private final ClientSettings T;
    private final Set<Scope> U;
    private final Account V;

    @KeepForSdk
    @Deprecated
    protected GmsClient(Context context, Looper looper, int i10, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, i10, clientSettings, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
    }

    private final Set<Scope> q0(Set<Scope> set) {
        Set<Scope> setP0 = p0(set);
        Iterator<Scope> it = setP0.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return setP0;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final Executor B() {
        return null;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @KeepForSdk
    protected final Set<Scope> H() {
        return this.U;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @KeepForSdk
    public Set<Scope> c() {
        return t() ? this.U : Collections.emptySet();
    }

    @KeepForSdk
    protected final ClientSettings o0() {
        return this.T;
    }

    @KeepForSdk
    protected Set<Scope> p0(Set<Scope> set) {
        return set;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Account z() {
        return this.V;
    }

    @KeepForSdk
    protected GmsClient(Context context, Looper looper, int i10, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, GmsClientSupervisor.b(context), GoogleApiAvailability.p(), i10, clientSettings, (ConnectionCallbacks) Preconditions.k(connectionCallbacks), (OnConnectionFailedListener) Preconditions.k(onConnectionFailedListener));
    }

    @VisibleForTesting
    protected GmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailability googleApiAvailability, int i10, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, gmsClientSupervisor, googleApiAvailability, i10, connectionCallbacks == null ? null : new c(connectionCallbacks), onConnectionFailedListener == null ? null : new d(onConnectionFailedListener), clientSettings.l());
        this.T = clientSettings;
        this.V = clientSettings.a();
        this.U = q0(clientSettings.d());
    }
}
