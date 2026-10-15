package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
abstract class z0 extends y0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f24407b;

    z0(zzgi zzgiVar) {
        super(zzgiVar);
        this.f24394a.d();
    }

    protected void d() {
    }

    protected abstract boolean e();

    protected final void f() {
        if (!i()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void g() {
        if (this.f24407b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (e()) {
            return;
        }
        this.f24394a.b();
        this.f24407b = true;
    }

    public final void h() {
        if (this.f24407b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        d();
        this.f24394a.b();
        this.f24407b = true;
    }

    final boolean i() {
        return this.f24407b;
    }
}
