package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgeg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f19087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class f19088b;

    /* synthetic */ zzgeg(Class cls, Class cls2, zzgef zzgefVar) {
        this.f19087a = cls;
        this.f19088b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgeg)) {
            return false;
        }
        zzgeg zzgegVar = (zzgeg) obj;
        return zzgegVar.f19087a.equals(this.f19087a) && zzgegVar.f19088b.equals(this.f19088b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19087a, this.f19088b});
    }

    public final String toString() {
        return this.f19087a.getSimpleName() + " with serialization type: " + this.f19088b.getSimpleName();
    }
}
