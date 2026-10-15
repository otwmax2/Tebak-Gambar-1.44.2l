package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class RegisterListenerMethod<A extends Api.AnyClient, L> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ListenerHolder<L> f7051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Feature[] f7052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f7053c;

    @KeepForSdk
    public void a() {
        this.f7051a.a();
    }

    @KeepForSdk
    public ListenerHolder.ListenerKey<L> b() {
        return this.f7051a.b();
    }

    @KeepForSdk
    public Feature[] c() {
        return this.f7052b;
    }

    @KeepForSdk
    protected abstract void d(A a10, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException;

    public final boolean e() {
        return this.f7053c;
    }
}
