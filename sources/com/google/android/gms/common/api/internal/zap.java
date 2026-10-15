package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.base.zaq;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zap extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected volatile boolean f7280p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected final AtomicReference<l0> f7281q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Handler f7282r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected final GoogleApiAvailability f7283s;

    @VisibleForTesting
    zap(LifecycleFragment lifecycleFragment, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment);
        this.f7281q = new AtomicReference<>(null);
        this.f7282r = new zaq(Looper.getMainLooper());
        this.f7283s = googleApiAvailability;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(ConnectionResult connectionResult, int i10) {
        this.f7281q.set(null);
        m(connectionResult, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        this.f7281q.set(null);
        n();
    }

    private static final int p(l0 l0Var) {
        if (l0Var == null) {
            return -1;
        }
        return l0Var.a();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void e(int i10, int i11, Intent intent) {
        l0 l0Var = this.f7281q.get();
        if (i10 != 1) {
            if (i10 == 2) {
                int i12 = this.f7283s.i(b());
                if (i12 == 0) {
                    o();
                    return;
                } else {
                    if (l0Var == null) {
                        return;
                    }
                    if (l0Var.b().V3() == 18 && i12 == 18) {
                        return;
                    }
                }
            }
        } else if (i11 == -1) {
            o();
            return;
        } else if (i11 == 0) {
            if (l0Var == null) {
                return;
            }
            l(new ConnectionResult(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, l0Var.b().toString()), p(l0Var));
            return;
        }
        if (l0Var != null) {
            l(l0Var.b(), l0Var.a());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void f(Bundle bundle) {
        super.f(bundle);
        if (bundle != null) {
            this.f7281q.set(bundle.getBoolean("resolving_error", false) ? new l0(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void i(Bundle bundle) {
        super.i(bundle);
        l0 l0Var = this.f7281q.get();
        if (l0Var == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", l0Var.a());
        bundle.putInt("failed_status", l0Var.b().V3());
        bundle.putParcelable("failed_resolution", l0Var.b().X3());
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void j() {
        super.j();
        this.f7280p = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void k() {
        super.k();
        this.f7280p = false;
    }

    protected abstract void m(ConnectionResult connectionResult, int i10);

    protected abstract void n();

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        l(new ConnectionResult(13, null), p(this.f7281q.get()));
    }

    public final void s(ConnectionResult connectionResult, int i10) {
        l0 l0Var = new l0(connectionResult, i10);
        if (this.f7281q.compareAndSet(null, l0Var)) {
            this.f7282r.post(new n0(this, l0Var));
        }
    }
}
