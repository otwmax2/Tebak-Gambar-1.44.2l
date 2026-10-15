package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class Common {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @KeepForSdk
    public static final Api.ClientKey<zah> f7466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @KeepForSdk
    public static final Api<Api.ApiOptions.NoOptions> f7467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zah, Api.ApiOptions.NoOptions> f7468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final zae f7469d;

    static {
        Api.ClientKey<zah> clientKey = new Api.ClientKey<>();
        f7466a = clientKey;
        a aVar = new a();
        f7468c = aVar;
        f7467b = new Api<>("Common.API", aVar, clientKey);
        f7469d = new zae();
    }
}
