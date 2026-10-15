package b2;

import android.util.Log;
import d2.a;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: DecodeJob.java */
/* JADX INFO: loaded from: classes.dex */
class a<A, T, Z> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final b f4548m = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f4549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4551c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a2.c<A> f4552d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final s2.b<A, T> f4553e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final z1.g<T> f4554f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p2.c<T, Z> f4555g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final InterfaceC0080a f4556h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b2.b f4557i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final v1.i f4558j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final b f4559k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private volatile boolean f4560l;

    /* JADX INFO: renamed from: b2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DecodeJob.java */
    interface InterfaceC0080a {
        d2.a a();
    }

    /* JADX INFO: compiled from: DecodeJob.java */
    static class b {
        b() {
        }

        public OutputStream a(File file) throws FileNotFoundException {
            return new BufferedOutputStream(new FileOutputStream(file));
        }
    }

    /* JADX INFO: compiled from: DecodeJob.java */
    class c<DataType> implements a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final z1.b<DataType> f4561a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final DataType f4562b;

        public c(z1.b<DataType> bVar, DataType datatype) {
            this.f4561a = bVar;
            this.f4562b = datatype;
        }

        @Override // d2.a.b
        public boolean a(File file) {
            OutputStream outputStreamA = null;
            try {
                try {
                    outputStreamA = a.this.f4559k.a(file);
                    boolean zB = this.f4561a.b(this.f4562b, outputStreamA);
                    if (outputStreamA == null) {
                        return zB;
                    }
                    try {
                        outputStreamA.close();
                        return zB;
                    } catch (IOException unused) {
                        return zB;
                    }
                } catch (FileNotFoundException e10) {
                    if (Log.isLoggable("DecodeJob", 3)) {
                        Log.d("DecodeJob", "Failed to find file to write to disk cache", e10);
                    }
                    if (outputStreamA != null) {
                        try {
                            outputStreamA.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return false;
                }
            } catch (Throwable th) {
                if (outputStreamA != null) {
                    try {
                        outputStreamA.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        }
    }

    public a(f fVar, int i10, int i11, a2.c<A> cVar, s2.b<A, T> bVar, z1.g<T> gVar, p2.c<T, Z> cVar2, InterfaceC0080a interfaceC0080a, b2.b bVar2, v1.i iVar) {
        this(fVar, i10, i11, cVar, bVar, gVar, cVar2, interfaceC0080a, bVar2, iVar, f4548m);
    }

    private l<T> b(A a10) throws IOException {
        long jB = x2.d.b();
        this.f4556h.a().a(this.f4549a.b(), new c(this.f4553e.a(), a10));
        if (Log.isLoggable("DecodeJob", 2)) {
            j("Wrote source to cache", jB);
        }
        long jB2 = x2.d.b();
        l<T> lVarI = i(this.f4549a.b());
        if (Log.isLoggable("DecodeJob", 2) && lVarI != null) {
            j("Decoded source from cache", jB2);
        }
        return lVarI;
    }

    private l<T> e(A a10) throws IOException {
        if (this.f4557i.e()) {
            return b(a10);
        }
        long jB = x2.d.b();
        l<T> lVarB = this.f4553e.f().b(a10, this.f4550b, this.f4551c);
        if (!Log.isLoggable("DecodeJob", 2)) {
            return lVarB;
        }
        j("Decoded from source", jB);
        return lVarB;
    }

    private l<T> g() throws Exception {
        try {
            long jB = x2.d.b();
            A aB = this.f4552d.b(this.f4558j);
            if (Log.isLoggable("DecodeJob", 2)) {
                j("Fetched data", jB);
            }
            if (this.f4560l) {
                return null;
            }
            return e(aB);
        } finally {
            this.f4552d.c();
        }
    }

    private l<T> i(z1.c cVar) throws IOException {
        File fileC = this.f4556h.a().c(cVar);
        if (fileC == null) {
            return null;
        }
        try {
            l<T> lVarB = this.f4553e.g().b(fileC, this.f4550b, this.f4551c);
            if (lVarB == null) {
            }
            return lVarB;
        } finally {
            this.f4556h.a().b(cVar);
        }
    }

    private void j(String str, long j10) {
        Log.v("DecodeJob", str + " in " + x2.d.a(j10) + ", key: " + this.f4549a);
    }

    private l<Z> k(l<T> lVar) {
        if (lVar == null) {
            return null;
        }
        return this.f4555g.b(lVar);
    }

    private l<T> l(l<T> lVar) {
        if (lVar == null) {
            return null;
        }
        l<T> lVarB = this.f4554f.b(lVar, this.f4550b, this.f4551c);
        if (!lVar.equals(lVarB)) {
            lVar.b();
        }
        return lVarB;
    }

    private l<Z> m(l<T> lVar) {
        long jB = x2.d.b();
        l<T> lVarL = l(lVar);
        if (Log.isLoggable("DecodeJob", 2)) {
            j("Transformed resource from source", jB);
        }
        n(lVarL);
        long jB2 = x2.d.b();
        l<Z> lVarK = k(lVarL);
        if (Log.isLoggable("DecodeJob", 2)) {
            j("Transcoded transformed from source", jB2);
        }
        return lVarK;
    }

    private void n(l<T> lVar) {
        if (lVar == null || !this.f4557i.c()) {
            return;
        }
        long jB = x2.d.b();
        this.f4556h.a().a(this.f4549a, new c(this.f4553e.d(), lVar));
        if (Log.isLoggable("DecodeJob", 2)) {
            j("Wrote transformed from source to cache", jB);
        }
    }

    public void c() {
        this.f4560l = true;
        this.f4552d.cancel();
    }

    public l<Z> d() throws Exception {
        return m(g());
    }

    public l<Z> f() throws Exception {
        if (!this.f4557i.c()) {
            return null;
        }
        long jB = x2.d.b();
        l<T> lVarI = i(this.f4549a);
        if (Log.isLoggable("DecodeJob", 2)) {
            j("Decoded transformed from cache", jB);
        }
        long jB2 = x2.d.b();
        l<Z> lVarK = k(lVarI);
        if (Log.isLoggable("DecodeJob", 2)) {
            j("Transcoded transformed from cache", jB2);
        }
        return lVarK;
    }

    public l<Z> h() throws Exception {
        if (!this.f4557i.e()) {
            return null;
        }
        long jB = x2.d.b();
        l<T> lVarI = i(this.f4549a.b());
        if (Log.isLoggable("DecodeJob", 2)) {
            j("Decoded source from cache", jB);
        }
        return m(lVarI);
    }

    a(f fVar, int i10, int i11, a2.c<A> cVar, s2.b<A, T> bVar, z1.g<T> gVar, p2.c<T, Z> cVar2, InterfaceC0080a interfaceC0080a, b2.b bVar2, v1.i iVar, b bVar3) {
        this.f4549a = fVar;
        this.f4550b = i10;
        this.f4551c = i11;
        this.f4552d = cVar;
        this.f4553e = bVar;
        this.f4554f = gVar;
        this.f4555g = cVar2;
        this.f4556h = interfaceC0080a;
        this.f4557i = bVar2;
        this.f4558j = iVar;
        this.f4559k = bVar3;
    }
}
