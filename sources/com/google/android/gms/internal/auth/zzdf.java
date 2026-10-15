package com.google.android.gms.internal.auth;

import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
final class zzdf<T> extends zzde<T> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final T f21441o;

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzdf) {
            return this.f21441o.equals(((zzdf) obj).f21441o);
        }
        return false;
    }

    public final int hashCode() {
        return this.f21441o.hashCode() + 1502476572;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f21441o);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 13);
        sb.append("Optional.of(");
        sb.append(strValueOf);
        sb.append(")");
        return sb.toString();
    }
}
