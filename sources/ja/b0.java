package ja;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RequestBody.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b0 {

    /* JADX INFO: compiled from: RequestBody.java */
    class a extends b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ v f30954a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ okio.f f30955b;

        a(v vVar, okio.f fVar) {
            this.f30954a = vVar;
            this.f30955b = fVar;
        }

        @Override // ja.b0
        public long contentLength() throws IOException {
            return this.f30955b.J();
        }

        @Override // ja.b0
        @Nullable
        public v contentType() {
            return this.f30954a;
        }

        @Override // ja.b0
        public void writeTo(okio.d dVar) throws IOException {
            dVar.c3(this.f30955b);
        }
    }

    /* JADX INFO: compiled from: RequestBody.java */
    class b extends b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ v f30956a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f30957b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ byte[] f30958c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f30959d;

        b(v vVar, int i10, byte[] bArr, int i11) {
            this.f30956a = vVar;
            this.f30957b = i10;
            this.f30958c = bArr;
            this.f30959d = i11;
        }

        @Override // ja.b0
        public long contentLength() {
            return this.f30957b;
        }

        @Override // ja.b0
        @Nullable
        public v contentType() {
            return this.f30956a;
        }

        @Override // ja.b0
        public void writeTo(okio.d dVar) throws IOException {
            dVar.W1(this.f30958c, this.f30959d, this.f30957b);
        }
    }

    /* JADX INFO: compiled from: RequestBody.java */
    class c extends b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ v f30960a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f30961b;

        c(v vVar, File file) {
            this.f30960a = vVar;
            this.f30961b = file;
        }

        @Override // ja.b0
        public long contentLength() {
            return this.f30961b.length();
        }

        @Override // ja.b0
        @Nullable
        public v contentType() {
            return this.f30960a;
        }

        @Override // ja.b0
        public void writeTo(okio.d dVar) throws IOException {
            okio.u uVarI = null;
            try {
                uVarI = okio.n.i(this.f30961b);
                dVar.h2(uVarI);
            } finally {
                ka.c.g(uVarI);
            }
        }
    }

    public static b0 create(@Nullable v vVar, String str) {
        Charset charset = ka.c.f31647j;
        if (vVar != null) {
            Charset charsetA = vVar.a();
            if (charsetA == null) {
                vVar = v.d(vVar + "; charset=utf-8");
            } else {
                charset = charsetA;
            }
        }
        return create(vVar, str.getBytes(charset));
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    @Nullable
    public abstract v contentType();

    public abstract void writeTo(okio.d dVar) throws IOException;

    public static b0 create(@Nullable v vVar, okio.f fVar) {
        return new a(vVar, fVar);
    }

    public static b0 create(@Nullable v vVar, byte[] bArr) {
        return create(vVar, bArr, 0, bArr.length);
    }

    public static b0 create(@Nullable v vVar, byte[] bArr, int i10, int i11) {
        Objects.requireNonNull(bArr, "content == null");
        ka.c.f(bArr.length, i10, i11);
        return new b(vVar, i11, bArr, i10);
    }

    public static b0 create(@Nullable v vVar, File file) {
        Objects.requireNonNull(file, "file == null");
        return new c(vVar, file);
    }
}
