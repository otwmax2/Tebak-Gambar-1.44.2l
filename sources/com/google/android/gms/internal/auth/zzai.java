package com.google.android.gms.internal.auth;

import android.accounts.Account;
import com.google.android.gms.auth.account.WorkAccountApi;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzai implements WorkAccountApi.AddAccountResult {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Account f21327q = new Account("DUMMY_NAME", "com.google");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21328o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Account f21329p;

    public zzai(Status status, Account account) {
        this.f21328o = status;
        this.f21329p = account == null ? f21327q : account;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21328o;
    }
}
