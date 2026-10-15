package com.google.gson;

import java.io.IOException;

/* JADX INFO: compiled from: TypeAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class w<T> {

    /* JADX INFO: compiled from: TypeAdapter.java */
    class a extends w<T> {
        a() {
        }

        @Override // com.google.gson.w
        public T b(h7.a aVar) throws IOException {
            if (aVar.x() != h7.b.NULL) {
                return (T) w.this.b(aVar);
            }
            aVar.t();
            return null;
        }

        @Override // com.google.gson.w
        public void d(h7.c cVar, T t10) throws IOException {
            if (t10 == null) {
                cVar.n();
            } else {
                w.this.d(cVar, t10);
            }
        }
    }

    public final w<T> a() {
        return new a();
    }

    public abstract T b(h7.a aVar) throws IOException;

    public final l c(T t10) {
        try {
            d7.f fVar = new d7.f();
            d(fVar, t10);
            return fVar.F();
        } catch (IOException e10) {
            throw new m(e10);
        }
    }

    public abstract void d(h7.c cVar, T t10) throws IOException;
}
