package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgee {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f19085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgoj f19086b;

    /* synthetic */ zzgee(Class cls, zzgoj zzgojVar, zzged zzgedVar) {
        this.f19085a = cls;
        this.f19086b = zzgojVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgee)) {
            return false;
        }
        zzgee zzgeeVar = (zzgee) obj;
        return zzgeeVar.f19085a.equals(this.f19085a) && zzgeeVar.f19086b.equals(this.f19086b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19085a, this.f19086b});
    }

    public final String toString() {
        return this.f19085a.getSimpleName() + ", object identifier: " + String.valueOf(this.f19086b);
    }
}
