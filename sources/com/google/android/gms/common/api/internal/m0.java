package com.google.android.gms.common.api.internal;

import android.app.Dialog;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class m0 extends zabw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Dialog f7126a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ n0 f7127b;

    m0(n0 n0Var, Dialog dialog) {
        this.f7127b = n0Var;
        this.f7126a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.zabw
    public final void a() {
        this.f7127b.f7130p.o();
        if (this.f7126a.isShowing()) {
            this.f7126a.dismiss();
        }
    }
}
