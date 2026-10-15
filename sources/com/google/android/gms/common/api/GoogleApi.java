package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.NonGmsServiceBrokerClient;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.zaae;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.api.internal.zabv;
import com.google.android.gms.common.api.internal.zact;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public abstract class GoogleApi<O extends Api.ApiOptions> implements HasApiKey<O> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f6950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f6951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Api<O> f6952c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final O f6953d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ApiKey<O> f6954e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Looper f6955f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f6956g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotOnlyInitialized
    private final GoogleApiClient f6957h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final StatusExceptionMapper f6958i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected final GoogleApiManager f6959j;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public static class Settings {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @KeepForSdk
        public static final Settings f6960c = new Builder().a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StatusExceptionMapper f6961a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Looper f6962b;

        /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
        @KeepForSdk
        public static class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private StatusExceptionMapper f6963a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private Looper f6964b;

            @KeepForSdk
            public Builder() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @KeepForSdk
            public Settings a() {
                if (this.f6963a == null) {
                    this.f6963a = new ApiExceptionMapper();
                }
                if (this.f6964b == null) {
                    this.f6964b = Looper.getMainLooper();
                }
                return new Settings(this.f6963a, this.f6964b);
            }

            @KeepForSdk
            public Builder b(Looper looper) {
                Preconditions.l(looper, "Looper must not be null.");
                this.f6964b = looper;
                return this;
            }

            @KeepForSdk
            public Builder c(StatusExceptionMapper statusExceptionMapper) {
                Preconditions.l(statusExceptionMapper, "StatusExceptionMapper must not be null.");
                this.f6963a = statusExceptionMapper;
                return this;
            }
        }

        @KeepForSdk
        private Settings(StatusExceptionMapper statusExceptionMapper, Account account, Looper looper) {
            this.f6961a = statusExceptionMapper;
            this.f6962b = looper;
        }
    }

    @KeepForSdk
    public GoogleApi(Activity activity, Api<O> api, O o10, Settings settings) {
        this(activity, activity, api, o10, settings);
    }

    private final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T x(int i10, T t10) {
        t10.o();
        this.f6959j.F(this, i10, t10);
        return t10;
    }

    private final <TResult, A extends Api.AnyClient> Task<TResult> y(int i10, TaskApiCall<A, TResult> taskApiCall) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f6959j.G(this, i10, taskApiCall, taskCompletionSource, this.f6958i);
        return taskCompletionSource.a();
    }

    @KeepForSdk
    public GoogleApiClient g() {
        return this.f6957h;
    }

    @KeepForSdk
    protected ClientSettings.Builder h() {
        Account accountL2;
        GoogleSignInAccount googleSignInAccountR1;
        GoogleSignInAccount googleSignInAccountR12;
        ClientSettings.Builder builder = new ClientSettings.Builder();
        O o10 = this.f6953d;
        if (!(o10 instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) || (googleSignInAccountR12 = ((Api.ApiOptions.HasGoogleSignInAccountOptions) o10).R1()) == null) {
            O o11 = this.f6953d;
            accountL2 = o11 instanceof Api.ApiOptions.HasAccountOptions ? ((Api.ApiOptions.HasAccountOptions) o11).l2() : null;
        } else {
            accountL2 = googleSignInAccountR12.l2();
        }
        builder.d(accountL2);
        O o12 = this.f6953d;
        Set<Scope> setEmptySet = (!(o12 instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) || (googleSignInAccountR1 = ((Api.ApiOptions.HasGoogleSignInAccountOptions) o12).R1()) == null) ? Collections.emptySet() : googleSignInAccountR1.c4();
        builder.c(setEmptySet);
        builder.e(this.f6950a.getClass().getName());
        builder.b(this.f6950a.getPackageName());
        return builder;
    }

    @KeepForSdk
    public <TResult, A extends Api.AnyClient> Task<TResult> i(TaskApiCall<A, TResult> taskApiCall) {
        return y(2, taskApiCall);
    }

    @KeepForSdk
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T j(T t10) {
        x(0, t10);
        return t10;
    }

    @KeepForSdk
    public <TResult, A extends Api.AnyClient> Task<TResult> k(TaskApiCall<A, TResult> taskApiCall) {
        return y(0, taskApiCall);
    }

    @KeepForSdk
    public Task<Boolean> l(ListenerHolder.ListenerKey<?> listenerKey) {
        return m(listenerKey, 0);
    }

    @KeepForSdk
    public Task<Boolean> m(ListenerHolder.ListenerKey<?> listenerKey, int i10) {
        Preconditions.l(listenerKey, "Listener key cannot be null.");
        return this.f6959j.A(this, listenerKey, i10);
    }

    @KeepForSdk
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T n(T t10) {
        x(1, t10);
        return t10;
    }

    @KeepForSdk
    public <TResult, A extends Api.AnyClient> Task<TResult> o(TaskApiCall<A, TResult> taskApiCall) {
        return y(1, taskApiCall);
    }

    public final ApiKey<O> p() {
        return this.f6954e;
    }

    @KeepForSdk
    public O q() {
        return this.f6953d;
    }

    @KeepForSdk
    public Context r() {
        return this.f6950a;
    }

    @KeepForSdk
    protected String s() {
        return this.f6951b;
    }

    @KeepForSdk
    public Looper t() {
        return this.f6955f;
    }

    public final int u() {
        return this.f6956g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Api.Client v(Looper looper, zabq<O> zabqVar) {
        Api.Client clientB = ((Api.AbstractClientBuilder) Preconditions.k(this.f6952c.a())).b(this.f6950a, looper, h().a(), this.f6953d, zabqVar, zabqVar);
        String strS = s();
        if (strS != null && (clientB instanceof BaseGmsClient)) {
            ((BaseGmsClient) clientB).U(strS);
        }
        if (strS != null && (clientB instanceof NonGmsServiceBrokerClient)) {
            ((NonGmsServiceBrokerClient) clientB).w(strS);
        }
        return clientB;
    }

    public final zact w(Context context, Handler handler) {
        return new zact(context, handler, h().a());
    }

    @KeepForSdk
    @Deprecated
    public GoogleApi(Activity activity, Api<O> api, O o10, StatusExceptionMapper statusExceptionMapper) {
        Settings.Builder builder = new Settings.Builder();
        builder.c(statusExceptionMapper);
        builder.b(activity.getMainLooper());
        this(activity, (Api) api, (Api.ApiOptions) o10, builder.a());
    }

    private GoogleApi(Context context, Activity activity, Api<O> api, O o10, Settings settings) {
        Preconditions.l(context, "Null context is not permitted.");
        Preconditions.l(api, "Api must not be null.");
        Preconditions.l(settings, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f6950a = context.getApplicationContext();
        String str = null;
        if (PlatformVersion.m()) {
            try {
                str = (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(context, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        this.f6951b = str;
        this.f6952c = api;
        this.f6953d = o10;
        this.f6955f = settings.f6962b;
        ApiKey<O> apiKeyA = ApiKey.a(api, o10, str);
        this.f6954e = apiKeyA;
        this.f6957h = new zabv(this);
        GoogleApiManager googleApiManagerY = GoogleApiManager.y(this.f6950a);
        this.f6959j = googleApiManagerY;
        this.f6956g = googleApiManagerY.n();
        this.f6958i = settings.f6961a;
        if (activity != null && !(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            zaae.u(activity, googleApiManagerY, apiKeyA);
        }
        googleApiManagerY.c(this);
    }

    @KeepForSdk
    public GoogleApi(Context context, Api<O> api, O o10, Settings settings) {
        this(context, null, api, o10, settings);
    }

    @KeepForSdk
    @Deprecated
    public GoogleApi(Context context, Api<O> api, O o10, StatusExceptionMapper statusExceptionMapper) {
        Settings.Builder builder = new Settings.Builder();
        builder.c(statusExceptionMapper);
        this(context, api, o10, builder.a());
    }
}
