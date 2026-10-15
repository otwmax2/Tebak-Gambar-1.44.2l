package com.google.android.gms.internal.firebase_auth;

import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkn implements Comparable, Map.Entry {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Comparable f22860o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Object f22861p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final /* synthetic */ zzki f22862q;

    zzkn(zzki zzkiVar, Map.Entry entry) {
        this(zzkiVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean c(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return ((Comparable) getKey()).compareTo((Comparable) ((zzkn) obj).getKey());
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
        return c(this.f22860o, entry.getKey()) && c(this.f22861p, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f22860o;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f22861p;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f22860o;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f22861p;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f22862q.r();
        Object obj2 = this.f22861p;
        this.f22861p = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f22860o);
        String strValueOf2 = String.valueOf(this.f22861p);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 1 + strValueOf2.length());
        sb.append(strValueOf);
        sb.append("=");
        sb.append(strValueOf2);
        return sb.toString();
    }

    zzkn(zzki zzkiVar, Comparable comparable, Object obj) {
        this.f22862q = zzkiVar;
        this.f22860o = comparable;
        this.f22861p = obj;
    }
}
