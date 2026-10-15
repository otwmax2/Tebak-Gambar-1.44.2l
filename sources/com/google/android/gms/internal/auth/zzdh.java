package com.google.android.gms.internal.auth;

import java.io.Serializable;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
final class zzdh<T> implements Serializable, zzdg {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final zzdg<T> f21442o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    volatile transient boolean f21443p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @CheckForNull
    transient T f21444q;

    zzdh(zzdg<T> zzdgVar) {
        Objects.requireNonNull(zzdgVar);
        this.f21442o = zzdgVar;
    }

    public final String toString() {
        Object string;
        if (this.f21443p) {
            String strValueOf = String.valueOf(this.f21444q);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(strValueOf);
            sb.append(">");
            string = sb.toString();
        } else {
            string = this.f21442o;
        }
        String strValueOf2 = String.valueOf(string);
        StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(strValueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
