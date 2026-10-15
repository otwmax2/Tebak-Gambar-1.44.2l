package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: JsonArray.java */
/* JADX INFO: loaded from: classes2.dex */
public final class i extends l implements Iterable<l> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List<l> f26733o;

    public i() {
        this.f26733o = new ArrayList();
    }

    @Override // com.google.gson.l
    public boolean c() {
        if (this.f26733o.size() == 1) {
            return this.f26733o.get(0).c();
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof i) && ((i) obj).f26733o.equals(this.f26733o));
    }

    @Override // com.google.gson.l
    public double g() {
        if (this.f26733o.size() == 1) {
            return this.f26733o.get(0).g();
        }
        throw new IllegalStateException();
    }

    public int hashCode() {
        return this.f26733o.hashCode();
    }

    @Override // com.google.gson.l
    public float i() {
        if (this.f26733o.size() == 1) {
            return this.f26733o.get(0).i();
        }
        throw new IllegalStateException();
    }

    @Override // java.lang.Iterable
    public Iterator<l> iterator() {
        return this.f26733o.iterator();
    }

    @Override // com.google.gson.l
    public int j() {
        if (this.f26733o.size() == 1) {
            return this.f26733o.get(0).j();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.l
    public long n() {
        if (this.f26733o.size() == 1) {
            return this.f26733o.get(0).n();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.l
    public String o() {
        if (this.f26733o.size() == 1) {
            return this.f26733o.get(0).o();
        }
        throw new IllegalStateException();
    }

    public int size() {
        return this.f26733o.size();
    }

    public void t(l lVar) {
        if (lVar == null) {
            lVar = n.f26734a;
        }
        this.f26733o.add(lVar);
    }

    public void u(String str) {
        this.f26733o.add(str == null ? n.f26734a : new r(str));
    }

    public l v(int i10) {
        return this.f26733o.get(i10);
    }

    public i(int i10) {
        this.f26733o = new ArrayList(i10);
    }
}
