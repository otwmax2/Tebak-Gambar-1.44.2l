package com.google.android.gms.internal.measurement;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmb implements Map.Entry, Comparable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Comparable f23741o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Object f23742p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzmh f23743q;

    zzmb(zzmh zzmhVar, Comparable comparable, Object obj) {
        this.f23743q = zzmhVar;
        this.f23741o = comparable;
        this.f23742p = obj;
    }

    private static final boolean e(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public final Comparable c() {
        return this.f23741o;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f23741o.compareTo(((zzmb) obj).f23741o);
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
        return e(this.f23741o, entry.getKey()) && e(this.f23742p, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f23741o;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f23742p;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f23741o;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f23742p;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f23743q.p();
        Object obj2 = this.f23742p;
        this.f23742p = obj;
        return obj2;
    }

    public final String toString() {
        return String.valueOf(this.f23741o) + "=" + String.valueOf(this.f23742p);
    }
}
