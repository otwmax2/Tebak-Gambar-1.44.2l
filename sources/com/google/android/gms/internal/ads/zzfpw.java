package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfpw extends zzfrs implements Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Comparator f18587o;

    zzfpw(Comparator comparator) {
        Objects.requireNonNull(comparator);
        this.f18587o = comparator;
    }

    @Override // com.google.android.gms.internal.ads.zzfrs, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f18587o.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfpw) {
            return this.f18587o.equals(((zzfpw) obj).f18587o);
        }
        return false;
    }

    public final int hashCode() {
        return this.f18587o.hashCode();
    }

    public final String toString() {
        return this.f18587o.toString();
    }
}
