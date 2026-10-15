package com.google.android.play.core.assetpacks;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class o extends k<Void> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ s f26020q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    o(s sVar, y4.p<Void> pVar) {
        super(sVar, pVar);
        this.f26020q = sVar;
    }

    @Override // com.google.android.play.core.assetpacks.k, v4.k0
    public final void o9(Bundle bundle, Bundle bundle2) {
        super.o9(bundle, bundle2);
        if (!this.f26020q.f26072f.compareAndSet(true, false)) {
            s.f26065g.e("Expected keepingAlive to be true, but was false.", new Object[0]);
        }
        if (bundle.getBoolean("keep_alive")) {
            this.f26020q.c();
        }
    }
}
