package com.google.android.gms.auth.api.credentials;

import com.google.android.gms.auth.api.Auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class CredentialsOptions extends Auth.AuthCredentialsOptions {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final CredentialsOptions f6634s = new Builder().b();

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    public static final class Builder extends Auth.AuthCredentialsOptions.Builder {
        public CredentialsOptions b() {
            return new CredentialsOptions(this, null);
        }
    }

    /* synthetic */ CredentialsOptions(Builder builder, zbd zbdVar) {
        super(builder);
    }
}
