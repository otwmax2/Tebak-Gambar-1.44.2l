package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class a0 implements BaseGmsClient.ConnectionProgressReportCallbacks, zacs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Api.Client f7076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ApiKey<?> f7077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private IAccountAccessor f7078c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Set<Scope> f7079d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7080e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ GoogleApiManager f7081f;

    public a0(GoogleApiManager googleApiManager, Api.Client client, ApiKey<?> apiKey) {
        this.f7081f = googleApiManager;
        this.f7076a = client;
        this.f7077b = apiKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h() {
        IAccountAccessor iAccountAccessor;
        if (!this.f7080e || (iAccountAccessor = this.f7078c) == null) {
            return;
        }
        this.f7076a.d(iAccountAccessor, this.f7079d);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void a(ConnectionResult connectionResult) {
        this.f7081f.D.post(new z(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    public final void b(ConnectionResult connectionResult) {
        zabq zabqVar = (zabq) this.f7081f.f7028z.get(this.f7077b);
        if (zabqVar != null) {
            zabqVar.F(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    public final void c(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        if (iAccountAccessor == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            b(new ConnectionResult(4));
        } else {
            this.f7078c = iAccountAccessor;
            this.f7079d = set;
            h();
        }
    }
}
