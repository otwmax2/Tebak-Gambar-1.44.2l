package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public class GoogleSignInResult implements Result {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Status f6755o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private GoogleSignInAccount f6756p;

    public GoogleSignInResult(GoogleSignInAccount googleSignInAccount, Status status) {
        this.f6756p = googleSignInAccount;
        this.f6755o = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status V2() {
        return this.f6755o;
    }

    public GoogleSignInAccount a() {
        return this.f6756p;
    }

    public boolean b() {
        return this.f6755o.a4();
    }
}
