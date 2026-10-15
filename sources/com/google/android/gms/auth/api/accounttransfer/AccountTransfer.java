package com.google.android.gms.auth.api.accounttransfer;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.auth.zzao;
import com.google.android.gms.internal.auth.zzap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
public final class AccountTransfer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Api.ClientKey<zzap> f6566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Api.AbstractClientBuilder<zzap, zzq> f6567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Api<zzq> f6568c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Deprecated
    public static final zzao f6569d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Deprecated
    public static final zzao f6570e;

    static {
        Api.ClientKey<zzap> clientKey = new Api.ClientKey<>();
        f6566a = clientKey;
        a aVar = new a();
        f6567b = aVar;
        f6568c = new Api<>("AccountTransfer.ACCOUNT_TRANSFER_API", aVar, clientKey);
        f6569d = new zzao();
        f6570e = new zzao();
    }

    private AccountTransfer() {
    }
}
