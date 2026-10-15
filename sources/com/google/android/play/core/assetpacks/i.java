package com.google.android.play.core.assetpacks;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class i extends v4.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ int f25933p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ String f25934q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ String f25935r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ int f25936s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ y4.p f25937t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final /* synthetic */ s f25938u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    i(s sVar, y4.p pVar, int i10, String str, String str2, int i11, y4.p pVar2) {
        super(pVar);
        this.f25938u = sVar;
        this.f25933p = i10;
        this.f25934q = str;
        this.f25935r = str2;
        this.f25936s = i11;
        this.f25937t = pVar2;
    }

    @Override // v4.b
    protected final void a() {
        try {
            ((v4.i0) this.f25938u.f26070d.e()).P7(this.f25938u.f26067a, s.k(this.f25933p, this.f25934q, this.f25935r, this.f25936s), s.g(), new m(this.f25938u, this.f25937t));
        } catch (RemoteException e10) {
            s.f26065g.b("getChunkFileDescriptor(%s, %s, %d, session=%d)", this.f25934q, this.f25935r, Integer.valueOf(this.f25936s), Integer.valueOf(this.f25933p));
            this.f25937t.d(new RuntimeException(e10));
        }
    }
}
