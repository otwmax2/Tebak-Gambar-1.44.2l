package com.google.android.gms.internal.ads;

import android.util.SparseBooleanArray;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseBooleanArray f21072a = new SparseBooleanArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f21073b;

    public final zzy a(int i10) {
        zzdl.f(!this.f21073b);
        this.f21072a.append(i10, true);
        return this;
    }

    public final zzaa b() {
        zzdl.f(!this.f21073b);
        this.f21073b = true;
        return new zzaa(this.f21072a, null);
    }
}
