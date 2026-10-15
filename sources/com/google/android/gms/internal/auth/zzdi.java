package com.google.android.gms.internal.auth;

import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
final class zzdi<T> implements zzdg<T> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @CheckForNull
    volatile zzdg<T> f21445o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @CheckForNull
    T f21446p;

    zzdi(zzdg<T> zzdgVar) {
        Objects.requireNonNull(zzdgVar);
        this.f21445o = zzdgVar;
    }

    public final String toString() {
        Object string = this.f21445o;
        if (string == null) {
            String strValueOf = String.valueOf(this.f21446p);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(strValueOf);
            sb.append(">");
            string = sb.toString();
        }
        String strValueOf2 = String.valueOf(string);
        StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(strValueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
