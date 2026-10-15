package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f23255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f23256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f23257c;

    public zzaa(String str, long j10, Map map) {
        this.f23255a = str;
        this.f23256b = j10;
        HashMap map2 = new HashMap();
        this.f23257c = map2;
        if (map != null) {
            map2.putAll(map);
        }
    }

    public final long a() {
        return this.f23256b;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final zzaa clone() {
        return new zzaa(this.f23255a, this.f23256b, new HashMap(this.f23257c));
    }

    public final Object c(String str) {
        if (this.f23257c.containsKey(str)) {
            return this.f23257c.get(str);
        }
        return null;
    }

    public final String d() {
        return this.f23255a;
    }

    public final Map e() {
        return this.f23257c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaa)) {
            return false;
        }
        zzaa zzaaVar = (zzaa) obj;
        if (this.f23256b == zzaaVar.f23256b && this.f23255a.equals(zzaaVar.f23255a)) {
            return this.f23257c.equals(zzaaVar.f23257c);
        }
        return false;
    }

    public final void f(String str) {
        this.f23255a = str;
    }

    public final void g(String str, Object obj) {
        if (obj == null) {
            this.f23257c.remove(str);
        } else {
            this.f23257c.put(str, obj);
        }
    }

    public final int hashCode() {
        int iHashCode = this.f23255a.hashCode();
        long j10 = this.f23256b;
        return (((iHashCode * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f23257c.hashCode();
    }

    public final String toString() {
        return "Event{name='" + this.f23255a + "', timestamp=" + this.f23256b + ", params=" + this.f23257c.toString() + "}";
    }
}
