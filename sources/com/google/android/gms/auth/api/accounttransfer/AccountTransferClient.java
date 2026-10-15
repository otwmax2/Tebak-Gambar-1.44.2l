package com.google.android.gms.auth.api.accounttransfer;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.internal.auth.zzap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public class AccountTransferClient extends GoogleApi<zzq> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Api.ClientKey<zzap> f6571k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzap, zzq> f6572l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Api<zzq> f6573m;

    static {
        Api.ClientKey<zzap> clientKey = new Api.ClientKey<>();
        f6571k = clientKey;
        b bVar = new b();
        f6572l = bVar;
        f6573m = new Api<>("AccountTransfer.ACCOUNT_TRANSFER_API", bVar, clientKey);
    }
}
