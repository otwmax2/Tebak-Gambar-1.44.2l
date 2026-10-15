package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.auth.api.phone.SmsCodeAutofillClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-api-phone@@17.5.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzr extends GoogleApi<Api.ApiOptions.NoOptions> implements SmsCodeAutofillClient {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Api.ClientKey<zzw> f21256k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzw, Api.ApiOptions.NoOptions> f21257l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Api<Api.ApiOptions.NoOptions> f21258m;

    static {
        Api.ClientKey<zzw> clientKey = new Api.ClientKey<>();
        f21256k = clientKey;
        zzn zznVar = new zzn();
        f21257l = zznVar;
        f21258m = new Api<>("SmsCodeAutofill.API", zznVar, clientKey);
    }
}
