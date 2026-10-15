package com.google.android.gms.internal.drive;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzmp implements Comparable, Map.Entry {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Comparable f22294o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Object f22295p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final /* synthetic */ zzmi f22296q;

    zzmp(zzmi zzmiVar, Map.Entry entry) {
        this(zzmiVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean c(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return ((Comparable) getKey()).compareTo((Comparable) ((zzmp) obj).getKey());
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
        return c(this.f22294o, entry.getKey()) && c(this.f22295p, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f22294o;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f22295p;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f22294o;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f22295p;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f22296q.r();
        Object obj2 = this.f22295p;
        this.f22295p = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f22294o);
        String strValueOf2 = String.valueOf(this.f22295p);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 1 + strValueOf2.length());
        sb.append(strValueOf);
        sb.append("=");
        sb.append(strValueOf2);
        return sb.toString();
    }

    zzmp(zzmi zzmiVar, Comparable comparable, Object obj) {
        this.f22296q = zzmiVar;
        this.f22294o = comparable;
        this.f22295p = obj;
    }
}
