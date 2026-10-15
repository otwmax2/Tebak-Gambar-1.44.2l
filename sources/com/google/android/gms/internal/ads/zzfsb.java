package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfsb extends zzfrs implements Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final zzfrs f18659o;

    zzfsb(zzfrs zzfrsVar) {
        this.f18659o = zzfrsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrs
    public final zzfrs a() {
        return this.f18659o;
    }

    @Override // com.google.android.gms.internal.ads.zzfrs, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f18659o.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfsb) {
            return this.f18659o.equals(((zzfsb) obj).f18659o);
        }
        return false;
    }

    public final int hashCode() {
        return -this.f18659o.hashCode();
    }

    public final String toString() {
        zzfrs zzfrsVar = this.f18659o;
        Objects.toString(zzfrsVar);
        return zzfrsVar.toString().concat(".reverse()");
    }
}
