package com.google.android.gms.internal.common;

import org.jspecify.nullness.NullMarked;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@NullMarked
final class zzai extends zzag {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final zzag f21684s = new zzai(new Object[0], 0);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final transient Object[] f21685q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient int f21686r;

    zzai(Object[] objArr, int i10) {
        this.f21685q = objArr;
        this.f21686r = i10;
    }

    @Override // com.google.android.gms.internal.common.zzag, com.google.android.gms.internal.common.zzac
    final int c(Object[] objArr, int i10) {
        System.arraycopy(this.f21685q, 0, objArr, 0, this.f21686r);
        return this.f21686r;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int g() {
        return this.f21686r;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzs.a(i10, this.f21686r, "index");
        Object obj = this.f21685q[i10];
        obj.getClass();
        return obj;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int i() {
        return 0;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final boolean l() {
        return false;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final Object[] m() {
        return this.f21685q;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f21686r;
    }
}
