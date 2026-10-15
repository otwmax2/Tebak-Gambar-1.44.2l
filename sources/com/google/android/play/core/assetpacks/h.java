package com.google.android.play.core.assetpacks;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class h extends v4.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ int f25923p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ y4.p f25924q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ s f25925r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    h(s sVar, y4.p pVar, int i10, y4.p pVar2) {
        super(pVar);
        this.f25925r = sVar;
        this.f25923p = i10;
        this.f25924q = pVar2;
    }

    @Override // v4.b
    protected final void a() {
        try {
            ((v4.i0) this.f25925r.f26070d.e()).B3(this.f25925r.f26067a, s.h(this.f25923p), s.g(), new r(this.f25925r, this.f25924q));
        } catch (RemoteException e10) {
            s.f26065g.c(e10, "notifySessionFailed", new Object[0]);
        }
    }
}
