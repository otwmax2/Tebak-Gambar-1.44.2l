package com.google.android.gms.internal.p000authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.GetPhoneNumberHintIntentRequest;
import com.google.android.gms.auth.api.identity.SignInClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zbay extends GoogleApi implements SignInClient {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Api.ClientKey f21290l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Api.AbstractClientBuilder f21291m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Api f21292n;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f21293k;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        f21290l = clientKey;
        zbat zbatVar = new zbat();
        f21291m = zbatVar;
        f21292n = new Api("Auth.Api.Identity.SignIn.API", zbatVar, clientKey);
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ void A(zbaz zbazVar, TaskCompletionSource taskCompletionSource) throws RemoteException {
        ((zbai) zbazVar.I()).Ra(new zbav(this, taskCompletionSource), this.f21293k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ void z(GetPhoneNumberHintIntentRequest getPhoneNumberHintIntentRequest, zbaz zbazVar, TaskCompletionSource taskCompletionSource) throws RemoteException {
        ((zbai) zbazVar.I()).Q4(new zbax(this, taskCompletionSource), getPhoneNumberHintIntentRequest, this.f21293k);
    }
}
