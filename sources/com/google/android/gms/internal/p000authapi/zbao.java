package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.auth.api.identity.CredentialSavingClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zbao extends GoogleApi implements CredentialSavingClient {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Api.ClientKey f21276k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Api.AbstractClientBuilder f21277l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Api f21278m;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        f21276k = clientKey;
        zbal zbalVar = new zbal();
        f21277l = zbalVar;
        f21278m = new Api("Auth.Api.Identity.CredentialSaving.API", zbalVar, clientKey);
    }
}
