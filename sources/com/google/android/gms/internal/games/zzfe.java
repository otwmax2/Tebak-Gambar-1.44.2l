package com.google.android.gms.internal.games;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference<zzfd> f23185a = new AtomicReference<>();

    public final void a() {
        zzfd zzfdVar = this.f23185a.get();
        if (zzfdVar != null) {
            zzfdVar.a();
        }
    }

    protected abstract zzfd b();

    public final void c(String str, int i10) {
        zzfd zzfdVarB = this.f23185a.get();
        if (zzfdVarB == null) {
            zzfdVarB = b();
            if (!this.f23185a.compareAndSet(null, zzfdVarB)) {
                zzfdVarB = this.f23185a.get();
            }
        }
        zzfdVarB.e(str, i10);
    }
}
