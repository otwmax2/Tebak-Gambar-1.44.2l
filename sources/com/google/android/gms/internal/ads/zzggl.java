package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzggl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzggl f19184b = new zzggj().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f19185a;

    public final Map a() {
        return this.f19185a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzggl) {
            return this.f19185a.equals(((zzggl) obj).f19185a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f19185a.hashCode();
    }

    public final String toString() {
        return this.f19185a.toString();
    }
}
