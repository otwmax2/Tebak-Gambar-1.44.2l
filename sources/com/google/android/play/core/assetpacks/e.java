package com.google.android.play.core.assetpacks;

import android.os.RemoteException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class e extends v4.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ Map f25850p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ y4.p f25851q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ s f25852r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    e(s sVar, y4.p pVar, Map map, y4.p pVar2) {
        super(pVar);
        this.f25852r = sVar;
        this.f25850p = map;
        this.f25851q = pVar2;
    }

    @Override // v4.b
    protected final void a() {
        try {
            ((v4.i0) this.f25852r.f26070d.e()).H9(this.f25852r.f26067a, s.n(this.f25850p), new n(this.f25852r, this.f25851q));
        } catch (RemoteException e10) {
            s.f26065g.c(e10, "syncPacks", new Object[0]);
            this.f25851q.d(new RuntimeException(e10));
        }
    }
}
