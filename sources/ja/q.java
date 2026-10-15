package ja;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: FormBody.java */
/* JADX INFO: loaded from: classes.dex */
public final class q extends b0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final v f31151c = v.c("application/x-www-form-urlencoded");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<String> f31152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<String> f31153b;

    /* JADX INFO: compiled from: FormBody.java */
    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f31154a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<String> f31155b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Charset f31156c;

        public a() {
            this(null);
        }

        public a a(String str, String str2) {
            Objects.requireNonNull(str, "name == null");
            Objects.requireNonNull(str2, "value == null");
            this.f31154a.add(t.c(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true, this.f31156c));
            this.f31155b.add(t.c(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true, this.f31156c));
            return this;
        }

        public a b(String str, String str2) {
            Objects.requireNonNull(str, "name == null");
            Objects.requireNonNull(str2, "value == null");
            this.f31154a.add(t.c(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true, this.f31156c));
            this.f31155b.add(t.c(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true, this.f31156c));
            return this;
        }

        public q c() {
            return new q(this.f31154a, this.f31155b);
        }

        public a(Charset charset) {
            this.f31154a = new ArrayList();
            this.f31155b = new ArrayList();
            this.f31156c = charset;
        }
    }

    q(List<String> list, List<String> list2) {
        this.f31152a = ka.c.t(list);
        this.f31153b = ka.c.t(list2);
    }

    private long e(@Nullable okio.d dVar, boolean z10) {
        okio.c cVar = z10 ? new okio.c() : dVar.B();
        int size = this.f31152a.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                cVar.T0(38);
            }
            cVar.H1(this.f31152a.get(i10));
            cVar.T0(61);
            cVar.H1(this.f31153b.get(i10));
        }
        if (!z10) {
            return 0L;
        }
        long jS = cVar.s();
        cVar.b();
        return jS;
    }

    public String a(int i10) {
        return this.f31152a.get(i10);
    }

    public String b(int i10) {
        return this.f31153b.get(i10);
    }

    public int c() {
        return this.f31152a.size();
    }

    @Override // ja.b0
    public long contentLength() {
        return e(null, true);
    }

    @Override // ja.b0
    public v contentType() {
        return f31151c;
    }

    public String d(int i10) {
        return t.v(b(i10), true);
    }

    @Override // ja.b0
    public void writeTo(okio.d dVar) throws IOException {
        e(dVar, false);
    }
}
