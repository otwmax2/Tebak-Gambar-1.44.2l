package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zbc extends t0.a implements SignInConnectionListener {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Semaphore f6786p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Set f6787q;

    public zbc(Context context, Set set) {
        super(context);
        this.f6786p = new Semaphore(0);
        this.f6787q = set;
    }

    @Override // t0.a
    public final /* bridge */ /* synthetic */ Object A() {
        Iterator it = this.f6787q.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (((GoogleApiClient) it.next()).k(this)) {
                i10++;
            }
        }
        try {
            this.f6786p.tryAcquire(i10, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e10) {
            Log.i("GACSignInLoader", "Unexpected InterruptedException", e10);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // t0.b
    protected final void o() {
        this.f6786p.drainPermits();
        h();
    }

    @Override // com.google.android.gms.common.api.internal.SignInConnectionListener
    public final void onComplete() {
        this.f6786p.release();
    }
}
