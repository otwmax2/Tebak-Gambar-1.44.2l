package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zacc extends zap {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TaskCompletionSource<Void> f7236t;

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void g() {
        super.g();
        this.f7236t.d(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void m(ConnectionResult connectionResult, int i10) {
        String strW3 = connectionResult.W3();
        if (strW3 == null) {
            strW3 = "Error connecting to Google Play services";
        }
        this.f7236t.b(new ApiException(new Status(connectionResult, strW3, connectionResult.V3())));
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void n() {
        Activity activityD = this.f7031o.d();
        if (activityD == null) {
            this.f7236t.d(new ApiException(new Status(8)));
            return;
        }
        int i10 = this.f7283s.i(activityD);
        if (i10 == 0) {
            this.f7236t.e(null);
        } else {
            if (this.f7236t.a().s()) {
                return;
            }
            s(new ConnectionResult(i10, null), 0);
        }
    }
}
