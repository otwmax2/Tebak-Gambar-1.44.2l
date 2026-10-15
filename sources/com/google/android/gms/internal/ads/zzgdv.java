package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgdv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f19066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class f19067b;

    /* synthetic */ zzgdv(Class cls, Class cls2, zzgdu zzgduVar) {
        this.f19066a = cls;
        this.f19067b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgdv)) {
            return false;
        }
        zzgdv zzgdvVar = (zzgdv) obj;
        return zzgdvVar.f19066a.equals(this.f19066a) && zzgdvVar.f19067b.equals(this.f19067b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19066a, this.f19067b});
    }

    public final String toString() {
        return this.f19066a.getSimpleName() + " with primitive type: " + this.f19067b.getSimpleName();
    }
}
