package com.google.android.gms.internal.ads;

import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfnz extends zzfnq {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f18488o;

    zzfnz(Object obj) {
        this.f18488o = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzfnq
    public final zzfnq a(zzfnj zzfnjVar) {
        Object objA = zzfnjVar.a(this.f18488o);
        zzfnu.c(objA, "the Function passed to Optional.transform() must not return null.");
        return new zzfnz(objA);
    }

    @Override // com.google.android.gms.internal.ads.zzfnq
    public final Object b(Object obj) {
        return this.f18488o;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzfnz) {
            return this.f18488o.equals(((zzfnz) obj).f18488o);
        }
        return false;
    }

    public final int hashCode() {
        return this.f18488o.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.f18488o + ")";
    }
}
