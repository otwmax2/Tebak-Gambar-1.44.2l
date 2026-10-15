package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.List;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfnx implements Serializable, zzfnv {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List f18487o;

    @Override // com.google.android.gms.internal.ads.zzfnv
    public final boolean a(Object obj) {
        for (int i10 = 0; i10 < this.f18487o.size(); i10++) {
            if (!((zzfnv) this.f18487o.get(i10)).a(obj)) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzfnx) {
            return this.f18487o.equals(((zzfnx) obj).f18487o);
        }
        return false;
    }

    public final int hashCode() {
        return this.f18487o.hashCode() + 306654252;
    }

    public final String toString() {
        List list = this.f18487o;
        StringBuilder sb = new StringBuilder("Predicates.");
        sb.append("and(");
        boolean z10 = true;
        for (Object obj : list) {
            if (!z10) {
                sb.append(',');
            }
            sb.append(obj);
            z10 = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
