package com.google.android.gms.auth.api;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.auth.zzbe;
import com.google.android.gms.internal.auth.zzbt;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@KeepForSdk
public final class AuthProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    public static final Api<AuthProxyOptions> f6548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    public static final ProxyApi f6549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Api.ClientKey<zzbe> f6550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzbe, AuthProxyOptions> f6551d;

    static {
        Api.ClientKey<zzbe> clientKey = new Api.ClientKey<>();
        f6550c = clientKey;
        c cVar = new c();
        f6551d = cVar;
        f6548a = new Api<>("Auth.PROXY_API", cVar, clientKey);
        f6549b = new zzbt();
    }
}
