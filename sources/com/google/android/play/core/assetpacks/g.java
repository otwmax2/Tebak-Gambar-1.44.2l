package com.google.android.play.core.assetpacks;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class g extends v4.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ int f25899p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ String f25900q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ y4.p f25901r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ int f25902s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ s f25903t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    g(s sVar, y4.p pVar, int i10, String str, y4.p pVar2, int i11) {
        super(pVar);
        this.f25903t = sVar;
        this.f25899p = i10;
        this.f25900q = str;
        this.f25901r = pVar2;
        this.f25902s = i11;
    }

    @Override // v4.b
    protected final void a() {
        try {
            ((v4.i0) this.f25903t.f26070d.e()).t2(this.f25903t.f26067a, s.x(this.f25899p, this.f25900q), s.g(), new q(this.f25903t, this.f25901r, this.f25899p, this.f25900q, this.f25902s));
        } catch (RemoteException e10) {
            s.f26065g.c(e10, "notifyModuleCompleted", new Object[0]);
        }
    }
}
