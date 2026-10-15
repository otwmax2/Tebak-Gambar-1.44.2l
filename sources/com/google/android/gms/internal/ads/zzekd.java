package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzekd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f16821a = new AtomicBoolean(false);

    public final void a(boolean z10) {
        this.f16821a.set(true);
    }

    public final boolean b() {
        return this.f16821a.get();
    }
}
