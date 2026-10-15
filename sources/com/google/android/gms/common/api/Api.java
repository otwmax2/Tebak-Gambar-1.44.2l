package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class Api<O extends ApiOptions> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AbstractClientBuilder<?, O> f6939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ClientKey<?> f6940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f6941c;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @VisibleForTesting
    @KeepForSdk
    public static abstract class AbstractClientBuilder<T extends Client, O> extends BaseClientBuilder<T, O> {
        @KeepForSdk
        @Deprecated
        public T b(Context context, Looper looper, ClientSettings clientSettings, O o10, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return (T) c(context, looper, clientSettings, o10, connectionCallbacks, onConnectionFailedListener);
        }

        @KeepForSdk
        public T c(Context context, Looper looper, ClientSettings clientSettings, O o10, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public interface AnyClient {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public static class AnyClientKey<C extends AnyClient> {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    public interface ApiOptions {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final NoOptions f6942b = new NoOptions(null);

        /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        public interface HasAccountOptions extends HasOptions, NotRequiredOptions {
            Account l2();
        }

        /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        public interface HasGoogleSignInAccountOptions extends HasOptions {
            GoogleSignInAccount R1();
        }

        /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        public interface HasOptions extends ApiOptions {
        }

        /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        public static final class NoOptions implements NotRequiredOptions {
            private NoOptions() {
            }

            /* synthetic */ NoOptions(zaa zaaVar) {
            }
        }

        /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        public interface NotRequiredOptions extends ApiOptions {
        }

        /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        public interface Optional extends HasOptions, NotRequiredOptions {
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @VisibleForTesting
    @KeepForSdk
    public static abstract class BaseClientBuilder<T extends AnyClient, O> {
        @KeepForSdk
        public int a() {
            return Integer.MAX_VALUE;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public interface Client extends AnyClient {
        @KeepForSdk
        boolean a();

        @KeepForSdk
        boolean b();

        @KeepForSdk
        Set<Scope> c();

        @KeepForSdk
        void d(IAccountAccessor iAccountAccessor, Set<Scope> set);

        @KeepForSdk
        void e(String str);

        @KeepForSdk
        boolean f();

        @KeepForSdk
        String g();

        @KeepForSdk
        void h(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks);

        @KeepForSdk
        void i();

        @KeepForSdk
        void j(BaseGmsClient.SignOutCallbacks signOutCallbacks);

        @KeepForSdk
        void k(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

        @KeepForSdk
        boolean l();

        @KeepForSdk
        int n();

        @KeepForSdk
        Feature[] o();

        @KeepForSdk
        String r();

        @KeepForSdk
        Intent s();

        @KeepForSdk
        boolean t();
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @VisibleForTesting
    @KeepForSdk
    public static final class ClientKey<C extends Client> extends AnyClientKey<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @KeepForSdk
    public <C extends Client> Api(String str, AbstractClientBuilder<C, O> abstractClientBuilder, ClientKey<C> clientKey) {
        Preconditions.l(abstractClientBuilder, "Cannot construct an Api with a null ClientBuilder");
        Preconditions.l(clientKey, "Cannot construct an Api with a null ClientKey");
        this.f6941c = str;
        this.f6939a = abstractClientBuilder;
        this.f6940b = clientKey;
    }

    public final AbstractClientBuilder<?, O> a() {
        return this.f6939a;
    }

    public final AnyClientKey<?> b() {
        return this.f6940b;
    }

    public final BaseClientBuilder<?, O> c() {
        return this.f6939a;
    }

    public final String d() {
        return this.f6941c;
    }
}
