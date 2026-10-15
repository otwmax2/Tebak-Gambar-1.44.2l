package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zada<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ResultTransform<? super R, ? extends Result> f7257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zada<? extends Result> f7258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile ResultCallbacks<? super R> f7259c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f7260d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Status f7261e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final WeakReference<GoogleApiClient> f7262f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final h0 f7263g;

    private final void g(Status status) {
        synchronized (this.f7260d) {
            this.f7261e = status;
            h(status);
        }
    }

    private final void h(Status status) {
        synchronized (this.f7260d) {
            ResultTransform<? super R, ? extends Result> resultTransform = this.f7257a;
            if (resultTransform != null) {
                ((zada) Preconditions.k(this.f7258b)).g((Status) Preconditions.l(resultTransform.a(status), "onFailure must not return null"));
            } else if (i()) {
                ((ResultCallbacks) Preconditions.k(this.f7259c)).b(status);
            }
        }
    }

    @GuardedBy("mSyncToken")
    private final boolean i() {
        return (this.f7259c == null || this.f7262f.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).c();
            } catch (RuntimeException e10) {
                Log.w("TransformedResultImpl", "Unable to release ".concat(String.valueOf(result)), e10);
            }
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void a(R r10) {
        synchronized (this.f7260d) {
            if (!r10.V2().a4()) {
                g(r10.V2());
                j(r10);
            } else if (this.f7257a != null) {
                zaco.a().submit(new g0(this, r10));
            } else if (i()) {
                ((ResultCallbacks) Preconditions.k(this.f7259c)).c(r10);
            }
        }
    }

    final void f() {
        this.f7259c = null;
    }
}
