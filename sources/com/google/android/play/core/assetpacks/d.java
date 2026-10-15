package com.google.android.play.core.assetpacks;

import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class d extends v4.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ List f25835p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ y4.p f25836q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ s f25837r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    d(s sVar, y4.p pVar, List list, y4.p pVar2) {
        super(pVar);
        this.f25837r = sVar;
        this.f25835p = list;
        this.f25836q = pVar2;
    }

    @Override // v4.b
    protected final void a() {
        try {
            ((v4.i0) this.f25837r.f26070d.e()).F2(this.f25837r.f26067a, s.t(this.f25835p), s.g(), new l(this.f25837r, this.f25836q));
        } catch (RemoteException e10) {
            s.f26065g.c(e10, "cancelDownloads(%s)", this.f25835p);
        }
    }
}
