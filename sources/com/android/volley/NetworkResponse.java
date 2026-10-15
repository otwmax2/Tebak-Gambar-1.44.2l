package com.android.volley;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class NetworkResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5094a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f5095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, String> f5096c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<Header> f5097d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f5098e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f5099f;

    @Deprecated
    public NetworkResponse(int i10, byte[] bArr, Map<String, String> map, boolean z10, long j10) {
        this(i10, bArr, map, a(map), z10, j10);
    }

    private static List<Header> a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new Header(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    private static Map<String, String> b(List<Header> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Header header : list) {
            treeMap.put(header.a(), header.b());
        }
        return treeMap;
    }

    public NetworkResponse(int i10, byte[] bArr, boolean z10, long j10, List<Header> list) {
        this(i10, bArr, b(list), list, z10, j10);
    }

    @Deprecated
    public NetworkResponse(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }

    private NetworkResponse(int i10, byte[] bArr, Map<String, String> map, List<Header> list, boolean z10, long j10) {
        this.f5094a = i10;
        this.f5095b = bArr;
        this.f5096c = map;
        if (list == null) {
            this.f5097d = null;
        } else {
            this.f5097d = Collections.unmodifiableList(list);
        }
        this.f5098e = z10;
        this.f5099f = j10;
    }
}
