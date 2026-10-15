package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
final class zzii implements Serializable, zzif {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Object f23573o;

    zzii(Object obj) {
        this.f23573o = obj;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof zzii)) {
            return false;
        }
        Object obj2 = this.f23573o;
        Object obj3 = ((zzii) obj).f23573o;
        return obj2 == obj3 || obj2.equals(obj3);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f23573o});
    }

    public final String toString() {
        String string = this.f23573o.toString();
        StringBuilder sb = new StringBuilder(string.length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(string);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzif
    public final Object zza() {
        return this.f23573o;
    }
}
