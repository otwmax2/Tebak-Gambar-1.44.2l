package com.google.android.gms.internal.auth;

import java.io.Serializable;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
final class zzdj<T> implements Serializable, zzdg {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final T f21447o;

    zzdj(T t10) {
        this.f21447o = t10;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof zzdj)) {
            return false;
        }
        T t10 = this.f21447o;
        T t11 = ((zzdj) obj).f21447o;
        return t10 == t11 || t10.equals(t11);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f21447o});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f21447o);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(strValueOf);
        sb.append(")");
        return sb.toString();
    }
}
