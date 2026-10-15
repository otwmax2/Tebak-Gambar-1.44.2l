package com.google.android.gms.auth.api;

import android.os.Bundle;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zbd;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.p000authapi.zbl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class Auth {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static final Api<AuthProxyOptions> f6532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Api<AuthCredentialsOptions> f6533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Api<GoogleSignInOptions> f6534c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static final ProxyApi f6535d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CredentialsApi f6536e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final GoogleSignInApi f6537f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Api.ClientKey f6538g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Api.ClientKey f6539h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Api.AbstractClientBuilder f6540i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Api.AbstractClientBuilder f6541j;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    @Deprecated
    public static class AuthCredentialsOptions implements Api.ApiOptions.Optional {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public static final AuthCredentialsOptions f6542r = new AuthCredentialsOptions(new Builder());

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final String f6543o = null;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final boolean f6544p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final String f6545q;

        /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
        @Deprecated
        public static class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            protected Boolean f6546a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            protected String f6547b;

            public Builder() {
                this.f6546a = Boolean.FALSE;
            }

            @ShowFirstParty
            public final Builder a(String str) {
                this.f6547b = str;
                return this;
            }

            @ShowFirstParty
            public Builder(AuthCredentialsOptions authCredentialsOptions) {
                this.f6546a = Boolean.FALSE;
                AuthCredentialsOptions.b(authCredentialsOptions);
                this.f6546a = Boolean.valueOf(authCredentialsOptions.f6544p);
                this.f6547b = authCredentialsOptions.f6545q;
            }
        }

        public AuthCredentialsOptions(Builder builder) {
            this.f6544p = builder.f6546a.booleanValue();
            this.f6545q = builder.f6547b;
        }

        static /* bridge */ /* synthetic */ String b(AuthCredentialsOptions authCredentialsOptions) {
            String str = authCredentialsOptions.f6543o;
            return null;
        }

        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", null);
            bundle.putBoolean("force_save_dialog", this.f6544p);
            bundle.putString("log_session_id", this.f6545q);
            return bundle;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AuthCredentialsOptions)) {
                return false;
            }
            AuthCredentialsOptions authCredentialsOptions = (AuthCredentialsOptions) obj;
            String str = authCredentialsOptions.f6543o;
            return Objects.b(null, null) && this.f6544p == authCredentialsOptions.f6544p && Objects.b(this.f6545q, authCredentialsOptions.f6545q);
        }

        public int hashCode() {
            return Objects.c(null, Boolean.valueOf(this.f6544p), this.f6545q);
        }
    }

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        f6538g = clientKey;
        Api.ClientKey clientKey2 = new Api.ClientKey();
        f6539h = clientKey2;
        a aVar = new a();
        f6540i = aVar;
        b bVar = new b();
        f6541j = bVar;
        f6532a = AuthProxy.f6548a;
        f6533b = new Api<>("Auth.CREDENTIALS_API", aVar, clientKey);
        f6534c = new Api<>("Auth.GOOGLE_SIGN_IN_API", bVar, clientKey2);
        f6535d = AuthProxy.f6549b;
        f6536e = new zbl();
        f6537f = new zbd();
    }

    private Auth() {
    }
}
