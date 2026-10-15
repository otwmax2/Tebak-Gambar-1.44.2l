package com.google.android.gms.auth.account;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.auth.zzal;
import com.google.android.gms.internal.auth.zzam;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public class WorkAccount {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Api<Api.ApiOptions.NoOptions> f6528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    public static final WorkAccountApi f6529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Api.ClientKey<zzam> f6530c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzam, Api.ApiOptions.NoOptions> f6531d;

    static {
        Api.ClientKey<zzam> clientKey = new Api.ClientKey<>();
        f6530c = clientKey;
        a aVar = new a();
        f6531d = aVar;
        f6528a = new Api<>("WorkAccount.API", aVar, clientKey);
        f6529b = new zzal();
    }

    private WorkAccount() {
    }
}
