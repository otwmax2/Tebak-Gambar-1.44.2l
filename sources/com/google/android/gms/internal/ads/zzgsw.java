package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgsw implements Map.Entry, Comparable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Comparable f19598o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Object f19599p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzgtc f19600q;

    zzgsw(zzgtc zzgtcVar, Comparable comparable, Object obj) {
        this.f19600q = zzgtcVar;
        this.f19598o = comparable;
        this.f19599p = obj;
    }

    private static final boolean e(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public final Comparable c() {
        return this.f19598o;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f19598o.compareTo(((zzgsw) obj).f19598o);
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
        return e(this.f19598o, entry.getKey()) && e(this.f19599p, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f19598o;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f19599p;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f19598o;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f19599p;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f19600q.p();
        Object obj2 = this.f19599p;
        this.f19599p = obj;
        return obj2;
    }

    public final String toString() {
        return String.valueOf(this.f19598o) + "=" + String.valueOf(this.f19599p);
    }
}
