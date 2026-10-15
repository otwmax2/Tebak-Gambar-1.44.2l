package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class n extends k<List<String>> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ s f26009q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    n(s sVar, y4.p<List<String>> pVar) {
        super(sVar, pVar);
        this.f26009q = sVar;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.android.play.core.assetpacks.k, v4.k0
    public final void g2(List<Bundle> list) {
        super.g2(list);
        this.f25959o.e((T) s.u(this.f26009q, list));
    }
}
