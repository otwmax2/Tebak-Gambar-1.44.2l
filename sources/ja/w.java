package ja;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: MultipartBody.java */
/* JADX INFO: loaded from: classes.dex */
public final class w extends b0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final v f31187f = v.c("multipart/mixed");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final v f31188g = v.c("multipart/alternative");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final v f31189h = v.c("multipart/digest");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final v f31190i = v.c("multipart/parallel");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final v f31191j = v.c("multipart/form-data");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final byte[] f31192k = {58, 32};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final byte[] f31193l = {13, 10};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final byte[] f31194m = {45, 45};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final okio.f f31195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f31196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v f31197c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<b> f31198d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f31199e = -1;

    /* JADX INFO: compiled from: MultipartBody.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final okio.f f31200a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private v f31201b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<b> f31202c;

        public a() {
            this(UUID.randomUUID().toString());
        }

        public a a(@Nullable s sVar, b0 b0Var) {
            return b(b.a(sVar, b0Var));
        }

        public a b(b bVar) {
            Objects.requireNonNull(bVar, "part == null");
            this.f31202c.add(bVar);
            return this;
        }

        public w c() {
            if (this.f31202c.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            return new w(this.f31200a, this.f31201b, this.f31202c);
        }

        public a d(v vVar) {
            Objects.requireNonNull(vVar, "type == null");
            if (vVar.e().equals("multipart")) {
                this.f31201b = vVar;
                return this;
            }
            throw new IllegalArgumentException("multipart != " + vVar);
        }

        public a(String str) {
            this.f31201b = w.f31187f;
            this.f31202c = new ArrayList();
            this.f31200a = okio.f.l(str);
        }
    }

    /* JADX INFO: compiled from: MultipartBody.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        final s f31203a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final b0 f31204b;

        private b(@Nullable s sVar, b0 b0Var) {
            this.f31203a = sVar;
            this.f31204b = b0Var;
        }

        public static b a(@Nullable s sVar, b0 b0Var) {
            Objects.requireNonNull(b0Var, "body == null");
            if (sVar != null && sVar.c("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (sVar == null || sVar.c("Content-Length") == null) {
                return new b(sVar, b0Var);
            }
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }
    }

    w(okio.f fVar, v vVar, List<b> list) {
        this.f31195a = fVar;
        this.f31196b = vVar;
        this.f31197c = v.c(vVar + "; boundary=" + fVar.O());
        this.f31198d = ka.c.t(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long a(@Nullable okio.d dVar, boolean z10) throws IOException {
        okio.c cVar;
        if (z10) {
            dVar = new okio.c();
            cVar = dVar;
        } else {
            cVar = 0;
        }
        int size = this.f31198d.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = this.f31198d.get(i10);
            s sVar = bVar.f31203a;
            b0 b0Var = bVar.f31204b;
            dVar.Y2(f31194m);
            dVar.c3(this.f31195a);
            dVar.Y2(f31193l);
            if (sVar != null) {
                int iH = sVar.h();
                for (int i11 = 0; i11 < iH; i11++) {
                    dVar.H1(sVar.e(i11)).Y2(f31192k).H1(sVar.i(i11)).Y2(f31193l);
                }
            }
            v vVarContentType = b0Var.contentType();
            if (vVarContentType != null) {
                dVar.H1("Content-Type: ").H1(vVarContentType.toString()).Y2(f31193l);
            }
            long jContentLength = b0Var.contentLength();
            if (jContentLength != -1) {
                dVar.H1("Content-Length: ").D3(jContentLength).Y2(f31193l);
            } else if (z10) {
                cVar.b();
                return -1L;
            }
            byte[] bArr = f31193l;
            dVar.Y2(bArr);
            if (z10) {
                j10 += jContentLength;
            } else {
                b0Var.writeTo(dVar);
            }
            dVar.Y2(bArr);
        }
        byte[] bArr2 = f31194m;
        dVar.Y2(bArr2);
        dVar.c3(this.f31195a);
        dVar.Y2(bArr2);
        dVar.Y2(f31193l);
        if (!z10) {
            return j10;
        }
        long jS = j10 + cVar.s();
        cVar.b();
        return jS;
    }

    @Override // ja.b0
    public long contentLength() throws IOException {
        long j10 = this.f31199e;
        if (j10 != -1) {
            return j10;
        }
        long jA = a(null, true);
        this.f31199e = jA;
        return jA;
    }

    @Override // ja.b0
    public v contentType() {
        return this.f31197c;
    }

    @Override // ja.b0
    public void writeTo(okio.d dVar) throws IOException {
        a(dVar, false);
    }
}
