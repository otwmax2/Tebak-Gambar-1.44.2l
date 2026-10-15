package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzgl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f19254a;

    public final void a(int i10) {
        this.f19254a |= Integer.MIN_VALUE;
    }

    public void b() {
        this.f19254a = 0;
    }

    public final void c(int i10) {
        this.f19254a = i10;
    }

    protected final boolean d(int i10) {
        return (this.f19254a & i10) == i10;
    }

    public final boolean e() {
        return d(268435456);
    }

    public final boolean f() {
        return d(Integer.MIN_VALUE);
    }

    public final boolean g() {
        return d(4);
    }

    public final boolean h() {
        return d(1);
    }
}
