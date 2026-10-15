package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class TaskApiCall<A extends Api.AnyClient, ResultT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Feature[] f7057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f7058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f7059c;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public static class Builder<A extends Api.AnyClient, ResultT> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RemoteCall<A, TaskCompletionSource<ResultT>> f7060a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Feature[] f7062c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f7061b = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f7063d = 0;

        private Builder() {
        }

        /* synthetic */ Builder(zacw zacwVar) {
        }

        @KeepForSdk
        public TaskApiCall<A, ResultT> a() {
            Preconditions.b(this.f7060a != null, "execute parameter required");
            return new f0(this, this.f7062c, this.f7061b, this.f7063d);
        }

        @KeepForSdk
        public Builder<A, ResultT> b(RemoteCall<A, TaskCompletionSource<ResultT>> remoteCall) {
            this.f7060a = remoteCall;
            return this;
        }

        @KeepForSdk
        public Builder<A, ResultT> c(boolean z10) {
            this.f7061b = z10;
            return this;
        }

        @KeepForSdk
        public Builder<A, ResultT> d(Feature... featureArr) {
            this.f7062c = featureArr;
            return this;
        }

        @KeepForSdk
        public Builder<A, ResultT> e(int i10) {
            this.f7063d = i10;
            return this;
        }
    }

    @KeepForSdk
    @Deprecated
    public TaskApiCall() {
        this.f7057a = null;
        this.f7058b = false;
        this.f7059c = 0;
    }

    @KeepForSdk
    protected TaskApiCall(Feature[] featureArr, boolean z10, int i10) {
        this.f7057a = featureArr;
        boolean z11 = false;
        if (featureArr != null && z10) {
            z11 = true;
        }
        this.f7058b = z11;
        this.f7059c = i10;
    }

    @KeepForSdk
    public static <A extends Api.AnyClient, ResultT> Builder<A, ResultT> a() {
        return new Builder<>(null);
    }

    @KeepForSdk
    protected abstract void b(A a10, TaskCompletionSource<ResultT> taskCompletionSource) throws RemoteException;

    @KeepForSdk
    public boolean c() {
        return this.f7058b;
    }

    public final int d() {
        return this.f7059c;
    }

    public final Feature[] e() {
        return this.f7057a;
    }
}
