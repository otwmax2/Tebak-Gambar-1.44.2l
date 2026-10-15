package com.google.android.gms.internal.auth;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgi implements Map.Entry, Comparable<zzgi> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Comparable f21553o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Object f21554p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzgl f21555q;

    zzgi(zzgl zzglVar, Comparable comparable, Object obj) {
        this.f21555q = zzglVar;
        this.f21553o = comparable;
        this.f21554p = obj;
    }

    private static final boolean e(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public final Comparable c() {
        return this.f21553o;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(zzgi zzgiVar) {
        return this.f21553o.compareTo(zzgiVar.f21553o);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return e(this.f21553o, entry.getKey()) && e(this.f21554p, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.f21553o;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f21554p;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f21553o;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f21554p;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f21555q.p();
        Object obj2 = this.f21554p;
        this.f21554p = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f21553o);
        String strValueOf2 = String.valueOf(this.f21554p);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 1 + strValueOf2.length());
        sb.append(strValueOf);
        sb.append("=");
        sb.append(strValueOf2);
        return sb.toString();
    }
}
