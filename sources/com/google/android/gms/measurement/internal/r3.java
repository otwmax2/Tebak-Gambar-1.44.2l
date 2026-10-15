package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
abstract class r3 extends q3 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f24271c;

    r3(zzli zzliVar) {
        super(zzliVar);
        this.f24263b.l();
    }

    protected final void d() {
        if (!f()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void e() {
        if (this.f24271c) {
            throw new IllegalStateException("Can't initialize twice");
        }
        g();
        this.f24263b.g();
        this.f24271c = true;
    }

    final boolean f() {
        return this.f24271c;
    }

    protected abstract boolean g();
}
