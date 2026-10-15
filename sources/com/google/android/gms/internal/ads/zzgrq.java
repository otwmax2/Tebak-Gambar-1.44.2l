package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgrq extends LinkedHashMap {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final zzgrq f19539p;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f19540o;

    static {
        zzgrq zzgrqVar = new zzgrq();
        f19539p = zzgrqVar;
        zzgrqVar.f19540o = false;
    }

    private zzgrq() {
        this.f19540o = true;
    }

    public static zzgrq a() {
        return f19539p;
    }

    private static int j(Object obj) {
        if (obj instanceof byte[]) {
            return zzgqw.b((byte[]) obj);
        }
        if (obj instanceof zzgqo) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    private final void k() {
        if (!this.f19540o) {
            throw new UnsupportedOperationException();
        }
    }

    public final zzgrq b() {
        return isEmpty() ? new zzgrq() : new zzgrq(this);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        k();
        super.clear();
    }

    public final void d() {
        this.f19540o = false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (this == map) {
            return true;
        }
        if (size() != map.size()) {
            return false;
        }
        Iterator it = entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!map.containsKey(entry.getKey())) {
                return false;
            }
            Object value = entry.getValue();
            Object obj2 = map.get(entry.getKey());
            if (!(((value instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj2) : value.equals(obj2))) {
                return false;
            }
        }
        return true;
    }

    public final void f(zzgrq zzgrqVar) {
        k();
        if (zzgrqVar.isEmpty()) {
            return;
        }
        putAll(zzgrqVar);
    }

    public final boolean h() {
        return this.f19540o;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Iterator it = entrySet().iterator();
        int iJ = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            iJ += j(entry.getValue()) ^ j(entry.getKey());
        }
        return iJ;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        k();
        zzgqw.e(obj);
        zzgqw.e(obj2);
        return super.put(obj, obj2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        k();
        for (Object obj : map.keySet()) {
            zzgqw.e(obj);
            zzgqw.e(map.get(obj));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        k();
        return super.remove(obj);
    }

    private zzgrq(Map map) {
        super(map);
        this.f19540o = true;
    }
}
