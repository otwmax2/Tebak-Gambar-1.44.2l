package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class BaseImplementation {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public static abstract class ApiMethodImpl<R extends Result, A extends Api.AnyClient> extends BasePendingResult<R> implements ResultHolder<R> {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        @KeepForSdk
        private final Api.AnyClientKey<A> f6995r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        @KeepForSdk
        private final Api<?> f6996s;

        @KeepForSdk
        protected ApiMethodImpl(Api<?> api, GoogleApiClient googleApiClient) {
            super((GoogleApiClient) Preconditions.l(googleApiClient, "GoogleApiClient must not be null"));
            Preconditions.l(api, "Api must not be null");
            this.f6995r = (Api.AnyClientKey<A>) api.b();
            this.f6996s = api;
        }

        @KeepForSdk
        private void x(RemoteException remoteException) {
            a(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
        }

        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        @KeepForSdk
        public final void a(Status status) {
            Preconditions.b(!status.a4(), "Failed result must not be success");
            R rF = f(status);
            k(rF);
            v(rF);
        }

        @KeepForSdk
        public /* bridge */ /* synthetic */ void b(Object obj) {
            super.k((Result) obj);
        }

        @KeepForSdk
        protected abstract void s(A a10) throws RemoteException;

        @KeepForSdk
        public final Api<?> t() {
            return this.f6996s;
        }

        @KeepForSdk
        public final Api.AnyClientKey<A> u() {
            return this.f6995r;
        }

        @KeepForSdk
        protected void v(R r10) {
        }

        @KeepForSdk
        public final void w(A a10) throws DeadObjectException {
            try {
                s(a10);
            } catch (DeadObjectException e10) {
                x(e10);
                throw e10;
            } catch (RemoteException e11) {
                x(e11);
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public interface ResultHolder<R> {
        @KeepForSdk
        void a(Status status);

        @KeepForSdk
        void b(R r10);
    }
}
