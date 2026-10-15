package com.google.firebase.abt.component;

import android.content.Context;
import c5.c;
import java.util.HashMap;
import java.util.Map;
import k6.b;

/* JADX INFO: compiled from: AbtComponent.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, c> f26230a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f26231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b<e5.a> f26232c;

    protected a(Context context, b<e5.a> bVar) {
        this.f26231b = context;
        this.f26232c = bVar;
    }

    protected c a(String str) {
        return new c(this.f26231b, this.f26232c, str);
    }

    public synchronized c b(String str) {
        if (!this.f26230a.containsKey(str)) {
            this.f26230a.put(str, a(str));
        }
        return this.f26230a.get(str);
    }
}
