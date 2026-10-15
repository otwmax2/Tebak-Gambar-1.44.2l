package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.auth.api.phone.SmsCodeBrowserClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-api-phone@@17.5.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzv extends GoogleApi<Api.ApiOptions.NoOptions> implements SmsCodeBrowserClient {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Api.ClientKey<zzw> f21261k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzw, Api.ApiOptions.NoOptions> f21262l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Api<Api.ApiOptions.NoOptions> f21263m;

    static {
        Api.ClientKey<zzw> clientKey = new Api.ClientKey<>();
        f21261k = clientKey;
        zzt zztVar = new zzt();
        f21262l = zztVar;
        f21263m = new Api<>("SmsCodeBrowser.API", zztVar, clientKey);
    }
}
