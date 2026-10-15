package com.google.android.play.core.assetpacks;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class f extends v4.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ int f25880p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ String f25881q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ String f25882r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ int f25883s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ y4.p f25884t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ s f25885u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    f(s sVar, y4.p pVar, int i10, String str, String str2, int i11, y4.p pVar2) {
        super(pVar);
        this.f25885u = sVar;
        this.f25880p = i10;
        this.f25881q = str;
        this.f25882r = str2;
        this.f25883s = i11;
        this.f25884t = pVar2;
    }

    @Override // v4.b
    protected final void a() {
        try {
            ((v4.i0) this.f25885u.f26070d.e()).H1(this.f25885u.f26067a, s.k(this.f25880p, this.f25881q, this.f25882r, this.f25883s), s.g(), new p(this.f25885u, this.f25884t));
        } catch (RemoteException e10) {
            s.f26065g.c(e10, "notifyChunkTransferred", new Object[0]);
        }
    }
}
