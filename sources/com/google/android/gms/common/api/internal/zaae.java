package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zaae extends zap {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final o.b<ApiKey<?>> f7158t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final GoogleApiManager f7159u;

    @VisibleForTesting
    zaae(LifecycleFragment lifecycleFragment, GoogleApiManager googleApiManager, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment, googleApiAvailability);
        this.f7158t = new o.b<>();
        this.f7159u = googleApiManager;
        this.f7031o.a("ConnectionlessLifecycleHelper", this);
    }

    public static void u(Activity activity, GoogleApiManager googleApiManager, ApiKey<?> apiKey) {
        LifecycleFragment lifecycleFragmentC = LifecycleCallback.c(activity);
        zaae zaaeVar = (zaae) lifecycleFragmentC.b("ConnectionlessLifecycleHelper", zaae.class);
        if (zaaeVar == null) {
            zaaeVar = new zaae(lifecycleFragmentC, googleApiManager, GoogleApiAvailability.p());
        }
        Preconditions.l(apiKey, "ApiKey cannot be null");
        zaaeVar.f7158t.add(apiKey);
        googleApiManager.d(zaaeVar);
    }

    private final void v() {
        if (this.f7158t.isEmpty()) {
            return;
        }
        this.f7159u.d(this);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void h() {
        super.h();
        v();
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void j() {
        super.j();
        v();
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void k() {
        super.k();
        this.f7159u.e(this);
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void m(ConnectionResult connectionResult, int i10) {
        this.f7159u.I(connectionResult, i10);
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void n() {
        this.f7159u.b();
    }

    final o.b<ApiKey<?>> t() {
        return this.f7158t;
    }
}
