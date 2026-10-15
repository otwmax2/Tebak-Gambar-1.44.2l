package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class z implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ ConnectionResult f7154o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ a0 f7155p;

    z(a0 a0Var, ConnectionResult connectionResult) {
        this.f7155p = a0Var;
        this.f7154o = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a0 a0Var = this.f7155p;
        zabq zabqVar = (zabq) a0Var.f7081f.f7028z.get(a0Var.f7077b);
        if (zabqVar == null) {
            return;
        }
        if (!this.f7154o.Z3()) {
            zabqVar.E(this.f7154o, null);
            return;
        }
        this.f7155p.f7080e = true;
        if (this.f7155p.f7076a.t()) {
            this.f7155p.h();
            return;
        }
        try {
            a0 a0Var2 = this.f7155p;
            a0Var2.f7076a.d(null, a0Var2.f7076a.c());
        } catch (SecurityException e10) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e10);
            this.f7155p.f7076a.e("Failed to get service from broker.");
            zabqVar.E(new ConnectionResult(10), null);
        }
    }
}
