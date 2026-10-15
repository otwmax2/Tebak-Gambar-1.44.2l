package com.google.gson;

import com.vungle.mediation.BuildConfig;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: GsonBuilder.java */
/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f26724h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c7.d f26717a = c7.d.f4907u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private v f26718b = v.f26737o;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f26719c = d.f26683o;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Type, h<?>> f26720d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<x> f26721e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<x> f26722f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f26723g = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f26725i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f26726j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f26727k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f26728l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f26729m = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f26730n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f26731o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f26732p = false;

    private void a(String str, int i10, int i11, List<x> list) {
        a aVar;
        a aVar2;
        a aVar3;
        if (str != null && !BuildConfig.FLAVOR.equals(str.trim())) {
            aVar = new a(Date.class, str);
            aVar2 = new a(Timestamp.class, str);
            aVar3 = new a(java.sql.Date.class, str);
        } else {
            if (i10 == 2 || i11 == 2) {
                return;
            }
            a aVar4 = new a(Date.class, i10, i11);
            a aVar5 = new a(Timestamp.class, i10, i11);
            a aVar6 = new a(java.sql.Date.class, i10, i11);
            aVar = aVar4;
            aVar2 = aVar5;
            aVar3 = aVar6;
        }
        list.add(d7.n.b(Date.class, aVar));
        list.add(d7.n.b(Timestamp.class, aVar2));
        list.add(d7.n.b(java.sql.Date.class, aVar3));
    }

    public f b() {
        List<x> arrayList = new ArrayList<>(this.f26721e.size() + this.f26722f.size() + 3);
        arrayList.addAll(this.f26721e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f26722f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        a(this.f26724h, this.f26725i, this.f26726j, arrayList);
        return new f(this.f26717a, this.f26719c, this.f26720d, this.f26723g, this.f26727k, this.f26731o, this.f26729m, this.f26730n, this.f26732p, this.f26728l, this.f26718b, this.f26724h, this.f26725i, this.f26726j, this.f26721e, this.f26722f, arrayList);
    }

    public g c(Type type, Object obj) {
        boolean z10 = obj instanceof t;
        c7.a.a(z10 || (obj instanceof k) || (obj instanceof h) || (obj instanceof w));
        if (obj instanceof h) {
            this.f26720d.put(type, (h) obj);
        }
        if (z10 || (obj instanceof k)) {
            this.f26721e.add(d7.l.f(g7.a.get(type), obj));
        }
        if (obj instanceof w) {
            this.f26721e.add(d7.n.a(g7.a.get(type), (w) obj));
        }
        return this;
    }

    public g d(x xVar) {
        this.f26721e.add(xVar);
        return this;
    }
}
