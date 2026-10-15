package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class n extends com.google.android.gms.signin.internal.zac {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final WeakReference<zaaw> f7128o;

    n(zaaw zaawVar) {
        this.f7128o = new WeakReference<>(zaawVar);
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae
    public final void v3(com.google.android.gms.signin.internal.zak zakVar) {
        zaaw zaawVar = this.f7128o.get();
        if (zaawVar == null) {
            return;
        }
        zaawVar.f7163a.n(new m(this, zaawVar, zaawVar, zakVar));
    }
}
