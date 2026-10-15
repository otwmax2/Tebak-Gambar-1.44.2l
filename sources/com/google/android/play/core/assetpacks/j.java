package com.google.android.play.core.assetpacks;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class j extends v4.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ y4.p f25946p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ s f25947q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    j(s sVar, y4.p pVar, y4.p pVar2) {
        super(pVar);
        this.f25947q = sVar;
        this.f25946p = pVar2;
    }

    @Override // v4.b
    protected final void a() {
        try {
            ((v4.i0) this.f25947q.f26071e.e()).R8(this.f25947q.f26067a, s.g(), new o(this.f25947q, this.f25946p));
        } catch (RemoteException e10) {
            s.f26065g.c(e10, "keepAlive", new Object[0]);
        }
    }
}
