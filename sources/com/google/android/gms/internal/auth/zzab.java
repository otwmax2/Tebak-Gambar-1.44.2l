package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzab extends GoogleApi<Api.ApiOptions.NoOptions> implements zzg {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Api.ClientKey<zzi> f21318k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzi, Api.ApiOptions.NoOptions> f21319l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Api<Api.ApiOptions.NoOptions> f21320m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Logger f21321n;

    static {
        Api.ClientKey<zzi> clientKey = new Api.ClientKey<>();
        f21318k = clientKey;
        zzv zzvVar = new zzv();
        f21319l = zzvVar;
        f21320m = new Api<>("GoogleAuthService.API", zzvVar, clientKey);
        f21321n = com.google.android.gms.auth.zzd.a("GoogleAuthServiceClient");
    }

    static /* synthetic */ void z(Status status, Object obj, TaskCompletionSource taskCompletionSource) {
        if (TaskUtil.c(status, obj, taskCompletionSource)) {
            return;
        }
        f21321n.h("The task is already complete.", new Object[0]);
    }
}
