package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
abstract class r extends l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f24264b;

    r(zzgi zzgiVar) {
        super(zzgiVar);
        this.f24394a.d();
    }

    protected final void d() {
        if (!h()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void e() {
        if (this.f24264b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (i()) {
            return;
        }
        this.f24394a.b();
        this.f24264b = true;
    }

    public final void f() {
        if (this.f24264b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        g();
        this.f24394a.b();
        this.f24264b = true;
    }

    protected void g() {
    }

    final boolean h() {
        return this.f24264b;
    }

    protected abstract boolean i();
}
