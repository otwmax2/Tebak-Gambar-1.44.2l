package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzakk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f9430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f9431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f9432d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f9433e;

    private zzakk(int i10, byte[] bArr, Map map, List list, boolean z10, long j10) {
        this.f9429a = i10;
        this.f9430b = bArr;
        this.f9431c = map;
        this.f9432d = list == null ? null : Collections.unmodifiableList(list);
        this.f9433e = z10;
    }

    private static List a(Map map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(new zzakg((String) entry.getKey(), (String) entry.getValue()));
        }
        return arrayList;
    }

    @Deprecated
    public zzakk(int i10, byte[] bArr, Map map, boolean z10, long j10) {
        this(i10, bArr, map, a(map), z10, j10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public zzakk(int i10, byte[] bArr, boolean z10, long j10, List list) {
        Map treeMap;
        if (list == null) {
            treeMap = null;
        } else if (list.isEmpty()) {
            treeMap = Collections.emptyMap();
        } else {
            treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzakg zzakgVar = (zzakg) it.next();
                treeMap.put(zzakgVar.a(), zzakgVar.b());
            }
        }
        this(i10, bArr, treeMap, list, z10, j10);
    }

    @Deprecated
    public zzakk(byte[] bArr, Map map) {
        this(200, bArr, map, a(map), false, 0L);
    }
}
