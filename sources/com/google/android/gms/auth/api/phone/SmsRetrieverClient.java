package com.google.android.gms.auth.api.phone;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.internal.p001authapiphone.zzw;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-api-phone@@17.5.1 */
/* JADX INFO: loaded from: classes.dex */
public abstract class SmsRetrieverClient extends GoogleApi<Api.ApiOptions.NoOptions> implements SmsRetrieverApi {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Api.ClientKey<zzw> f6699k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzw, Api.ApiOptions.NoOptions> f6700l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Api<Api.ApiOptions.NoOptions> f6701m;

    static {
        Api.ClientKey<zzw> clientKey = new Api.ClientKey<>();
        f6699k = clientKey;
        a aVar = new a();
        f6700l = aVar;
        f6701m = new Api<>("SmsRetriever.API", aVar, clientKey);
    }
}
