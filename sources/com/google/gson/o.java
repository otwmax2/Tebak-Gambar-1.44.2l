package com.google.gson;

import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: JsonObject.java */
/* JADX INFO: loaded from: classes2.dex */
public final class o extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c7.h<String, l> f26735a = new c7.h<>();

    public l A(String str) {
        return this.f26735a.get(str);
    }

    public i B(String str) {
        return (i) this.f26735a.get(str);
    }

    public o C(String str) {
        return (o) this.f26735a.get(str);
    }

    public r D(String str) {
        return (r) this.f26735a.get(str);
    }

    public boolean E(String str) {
        return this.f26735a.containsKey(str);
    }

    public Set<String> H() {
        return this.f26735a.keySet();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof o) && ((o) obj).f26735a.equals(this.f26735a));
    }

    public int hashCode() {
        return this.f26735a.hashCode();
    }

    public void t(String str, l lVar) {
        c7.h<String, l> hVar = this.f26735a;
        if (lVar == null) {
            lVar = n.f26734a;
        }
        hVar.put(str, lVar);
    }

    public void u(String str, Boolean bool) {
        t(str, bool == null ? n.f26734a : new r(bool));
    }

    public void v(String str, Number number) {
        t(str, number == null ? n.f26734a : new r(number));
    }

    public void x(String str, String str2) {
        t(str, str2 == null ? n.f26734a : new r(str2));
    }

    public Set<Map.Entry<String, l>> y() {
        return this.f26735a.entrySet();
    }
}
