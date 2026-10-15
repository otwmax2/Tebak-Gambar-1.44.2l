package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class q extends zabw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<zabe> f7134a;

    q(zabe zabeVar) {
        this.f7134a = new WeakReference<>(zabeVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabw
    public final void a() {
        zabe zabeVar = this.f7134a.get();
        if (zabeVar == null) {
            return;
        }
        zabe.r(zabeVar);
    }
}
