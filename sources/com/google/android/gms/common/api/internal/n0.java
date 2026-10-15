package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class n0 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final l0 f7129o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zap f7130p;

    n0(zap zapVar, l0 l0Var) {
        this.f7130p = zapVar;
        this.f7129o = l0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f7130p.f7280p) {
            ConnectionResult connectionResultB = this.f7129o.b();
            if (connectionResultB.Y3()) {
                zap zapVar = this.f7130p;
                zapVar.f7031o.startActivityForResult(GoogleApiActivity.a(zapVar.b(), (PendingIntent) Preconditions.k(connectionResultB.X3()), this.f7129o.a(), false), 1);
                return;
            }
            zap zapVar2 = this.f7130p;
            if (zapVar2.f7283s.d(zapVar2.b(), connectionResultB.V3(), null) != null) {
                zap zapVar3 = this.f7130p;
                zapVar3.f7283s.y(zapVar3.b(), this.f7130p.f7031o, connectionResultB.V3(), 2, this.f7130p);
            } else {
                if (connectionResultB.V3() != 18) {
                    this.f7130p.l(connectionResultB, this.f7129o.a());
                    return;
                }
                zap zapVar4 = this.f7130p;
                Dialog dialogT = zapVar4.f7283s.t(zapVar4.b(), this.f7130p);
                zap zapVar5 = this.f7130p;
                zapVar5.f7283s.u(zapVar5.b().getApplicationContext(), new m0(this, dialogT));
            }
        }
    }
}
