package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class h implements BaseGmsClient.ConnectionProgressReportCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<zaaw> f7106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Api<?> f7107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f7108c;

    public h(zaaw zaawVar, Api<?> api, boolean z10) {
        this.f7106a = new WeakReference<>(zaawVar);
        this.f7107b = api;
        this.f7108c = z10;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void a(ConnectionResult connectionResult) {
        Lock lock;
        zaaw zaawVar = this.f7106a.get();
        if (zaawVar == null) {
            return;
        }
        Preconditions.o(Looper.myLooper() == zaawVar.f7163a.B.j(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
        zaawVar.f7164b.lock();
        try {
            if (zaawVar.o(0)) {
                if (!connectionResult.Z3()) {
                    zaawVar.m(connectionResult, this.f7107b, this.f7108c);
                }
                if (zaawVar.p()) {
                    zaawVar.n();
                }
                lock = zaawVar.f7164b;
            } else {
                lock = zaawVar.f7164b;
            }
            lock.unlock();
        } catch (Throwable th) {
            zaawVar.f7164b.unlock();
            throw th;
        }
    }
}
