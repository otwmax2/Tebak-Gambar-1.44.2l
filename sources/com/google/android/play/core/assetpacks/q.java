package com.google.android.play.core.assetpacks;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class q extends k<Void> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final int f26043q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final String f26044r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final int f26045s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final /* synthetic */ s f26046t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    q(s sVar, y4.p<Void> pVar, int i10, String str, int i11) {
        super(sVar, pVar);
        this.f26046t = sVar;
        this.f26043q = i10;
        this.f26044r = str;
        this.f26045s = i11;
    }

    @Override // com.google.android.play.core.assetpacks.k, v4.k0
    public final void X(Bundle bundle) {
        this.f26046t.f26070d.s(this.f25959o);
        s.f26065g.b("onError(%d), retrying notifyModuleCompleted...", Integer.valueOf(bundle.getInt("error_code")));
        int i10 = this.f26045s;
        if (i10 > 0) {
            this.f26046t.j(this.f26043q, this.f26044r, i10 - 1);
        }
    }
}
