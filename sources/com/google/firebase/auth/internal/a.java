package com.google.firebase.auth.internal;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class a implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final /* synthetic */ FederatedSignInActivity f26278o;

    a(FederatedSignInActivity federatedSignInActivity) {
        this.f26278o = federatedSignInActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f26278o.D();
        FederatedSignInActivity.C(null);
    }
}
