package wa;

import ja.a0;
import ja.b0;
import ja.q;
import ja.s;
import ja.t;
import ja.v;
import ja.w;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RequestBuilder.java */
/* JADX INFO: loaded from: classes.dex */
final class k {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final char[] f36099k = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f36100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t f36101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private String f36102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private t.a f36103d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a0.a f36104e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private v f36105f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f36106g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private w.a f36107h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private q.a f36108i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private b0 f36109j;

    /* JADX INFO: compiled from: RequestBuilder.java */
    /* JADX INFO: loaded from: classes2.dex */
    private static class a extends b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b0 f36110a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final v f36111b;

        a(b0 b0Var, v vVar) {
            this.f36110a = b0Var;
            this.f36111b = vVar;
        }

        @Override // ja.b0
        public long contentLength() throws IOException {
            return this.f36110a.contentLength();
        }

        @Override // ja.b0
        public v contentType() {
            return this.f36111b;
        }

        @Override // ja.b0
        public void writeTo(okio.d dVar) throws IOException {
            this.f36110a.writeTo(dVar);
        }
    }

    k(String str, t tVar, @Nullable String str2, @Nullable s sVar, @Nullable v vVar, boolean z10, boolean z11, boolean z12) {
        this.f36100a = str;
        this.f36101b = tVar;
        this.f36102c = str2;
        a0.a aVar = new a0.a();
        this.f36104e = aVar;
        this.f36105f = vVar;
        this.f36106g = z10;
        if (sVar != null) {
            aVar.e(sVar);
        }
        if (z11) {
            this.f36108i = new q.a();
        } else if (z12) {
            w.a aVar2 = new w.a();
            this.f36107h = aVar2;
            aVar2.d(w.f31191j);
        }
    }

    private static String h(String str, boolean z10) {
        int length = str.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z10 && (iCodePointAt == 47 || iCodePointAt == 37))) {
                okio.c cVar = new okio.c();
                cVar.K(str, 0, iCharCount);
                i(cVar, str, iCharCount, length, z10);
                return cVar.o();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str;
    }

    private static void i(okio.c cVar, String str, int i10, int i11, boolean z10) {
        okio.c cVar2 = null;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (!z10 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z10 && (iCodePointAt == 47 || iCodePointAt == 37))) {
                    if (cVar2 == null) {
                        cVar2 = new okio.c();
                    }
                    cVar2.M(iCodePointAt);
                    while (!cVar2.S0()) {
                        int i12 = cVar2.readByte() & 255;
                        cVar.T0(37);
                        char[] cArr = f36099k;
                        cVar.T0(cArr[(i12 >> 4) & 15]);
                        cVar.T0(cArr[i12 & 15]);
                    }
                } else {
                    cVar.M(iCodePointAt);
                }
            }
            i10 += Character.charCount(iCodePointAt);
        }
    }

    void a(String str, String str2, boolean z10) {
        if (z10) {
            this.f36108i.b(str, str2);
        } else {
            this.f36108i.a(str, str2);
        }
    }

    void b(String str, String str2) {
        if (!"Content-Type".equalsIgnoreCase(str)) {
            this.f36104e.a(str, str2);
            return;
        }
        v vVarD = v.d(str2);
        if (vVarD != null) {
            this.f36105f = vVarD;
            return;
        }
        throw new IllegalArgumentException("Malformed content type: " + str2);
    }

    void c(s sVar, b0 b0Var) {
        this.f36107h.a(sVar, b0Var);
    }

    void d(w.b bVar) {
        this.f36107h.b(bVar);
    }

    void e(String str, String str2, boolean z10) {
        String str3 = this.f36102c;
        if (str3 == null) {
            throw new AssertionError();
        }
        this.f36102c = str3.replace("{" + str + "}", h(str2, z10));
    }

    void f(String str, @Nullable String str2, boolean z10) {
        String str3 = this.f36102c;
        if (str3 != null) {
            t.a aVarQ = this.f36101b.q(str3);
            this.f36103d = aVarQ;
            if (aVarQ == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f36101b + ", Relative: " + this.f36102c);
            }
            this.f36102c = null;
        }
        if (z10) {
            this.f36103d.a(str, str2);
        } else {
            this.f36103d.b(str, str2);
        }
    }

    a0 g() {
        t tVarG;
        t.a aVar = this.f36103d;
        if (aVar != null) {
            tVarG = aVar.c();
        } else {
            tVarG = this.f36101b.G(this.f36102c);
            if (tVarG == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f36101b + ", Relative: " + this.f36102c);
            }
        }
        b0 aVar2 = this.f36109j;
        if (aVar2 == null) {
            q.a aVar3 = this.f36108i;
            if (aVar3 != null) {
                aVar2 = aVar3.c();
            } else {
                w.a aVar4 = this.f36107h;
                if (aVar4 != null) {
                    aVar2 = aVar4.c();
                } else if (this.f36106g) {
                    aVar2 = b0.create((v) null, new byte[0]);
                }
            }
        }
        v vVar = this.f36105f;
        if (vVar != null) {
            if (aVar2 != null) {
                aVar2 = new a(aVar2, vVar);
            } else {
                this.f36104e.a("Content-Type", vVar.toString());
            }
        }
        return this.f36104e.i(tVarG).f(this.f36100a, aVar2).b();
    }

    void j(b0 b0Var) {
        this.f36109j = b0Var;
    }

    void k(Object obj) {
        this.f36102c = obj.toString();
    }
}
