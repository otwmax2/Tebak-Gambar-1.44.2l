package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import androidx.loader.app.a;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class h implements a.InterfaceC0058a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ SignInHubActivity f6782a;

    /* synthetic */ h(SignInHubActivity signInHubActivity, zbv zbvVar) {
        this.f6782a = signInHubActivity;
    }

    @Override // androidx.loader.app.a.InterfaceC0058a
    public final void a(t0.b bVar) {
    }

    @Override // androidx.loader.app.a.InterfaceC0058a
    public final t0.b b(int i10, Bundle bundle) {
        return new zbc(this.f6782a, GoogleApiClient.i());
    }

    @Override // androidx.loader.app.a.InterfaceC0058a
    public final /* bridge */ /* synthetic */ void c(t0.b bVar, Object obj) {
        SignInHubActivity signInHubActivity = this.f6782a;
        signInHubActivity.setResult(signInHubActivity.f6771r, signInHubActivity.f6772s);
        this.f6782a.finish();
    }
}
