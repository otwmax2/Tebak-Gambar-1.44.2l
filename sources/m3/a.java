package m3;

import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import java.util.Objects;
import m3.f;

/* JADX INFO: compiled from: AutoValue_BackendRequest.java */
/* JADX INFO: loaded from: classes.dex */
final class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Iterable<l3.i> f32127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f32128b;

    /* JADX INFO: compiled from: AutoValue_BackendRequest.java */
    static final class b extends f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Iterable<l3.i> f32129a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte[] f32130b;

        b() {
        }

        @Override // m3.f.a
        public f a() {
            Iterable<l3.i> iterable = this.f32129a;
            String str = BuildConfig.FLAVOR;
            if (iterable == null) {
                str = BuildConfig.FLAVOR + " events";
            }
            if (str.isEmpty()) {
                return new a(this.f32129a, this.f32130b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // m3.f.a
        public f.a b(Iterable<l3.i> iterable) {
            Objects.requireNonNull(iterable, "Null events");
            this.f32129a = iterable;
            return this;
        }

        @Override // m3.f.a
        public f.a c(byte[] bArr) {
            this.f32130b = bArr;
            return this;
        }
    }

    @Override // m3.f
    public Iterable<l3.i> b() {
        return this.f32127a;
    }

    @Override // m3.f
    public byte[] c() {
        return this.f32128b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f32127a.equals(fVar.b())) {
            if (Arrays.equals(this.f32128b, fVar instanceof a ? ((a) fVar).f32128b : fVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f32127a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f32128b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f32127a + ", extras=" + Arrays.toString(this.f32128b) + "}";
    }

    private a(Iterable<l3.i> iterable, byte[] bArr) {
        this.f32127a = iterable;
        this.f32128b = bArr;
    }
}
