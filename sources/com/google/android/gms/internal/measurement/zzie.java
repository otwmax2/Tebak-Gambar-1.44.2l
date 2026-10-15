package com.google.android.gms.internal.measurement;

import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
final class zzie extends zzid {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f23566o;

    zzie(Object obj) {
        this.f23566o = obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzid
    public final Object a() {
        return this.f23566o;
    }

    @Override // com.google.android.gms.internal.measurement.zzid
    public final boolean b() {
        return true;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzie) {
            return this.f23566o.equals(((zzie) obj).f23566o);
        }
        return false;
    }

    public final int hashCode() {
        return this.f23566o.hashCode() + 1502476572;
    }

    public final String toString() {
        String string = this.f23566o.toString();
        StringBuilder sb = new StringBuilder(string.length() + 13);
        sb.append("Optional.of(");
        sb.append(string);
        sb.append(")");
        return sb.toString();
    }
}
