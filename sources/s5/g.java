package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_FilesPayload_File.java */
/* JADX INFO: loaded from: classes2.dex */
final class g extends f0.d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f34789b;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_FilesPayload_File.java */
    static final class b extends f0.d.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34790a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte[] f34791b;

        b() {
        }

        @Override // s5.f0.d.b.a
        public f0.d.b a() {
            String str = this.f34790a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " filename";
            }
            if (this.f34791b == null) {
                str2 = str2 + " contents";
            }
            if (str2.isEmpty()) {
                return new g(this.f34790a, this.f34791b);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.d.b.a
        public f0.d.b.a b(byte[] bArr) {
            Objects.requireNonNull(bArr, "Null contents");
            this.f34791b = bArr;
            return this;
        }

        @Override // s5.f0.d.b.a
        public f0.d.b.a c(String str) {
            Objects.requireNonNull(str, "Null filename");
            this.f34790a = str;
            return this;
        }
    }

    @Override // s5.f0.d.b
    public byte[] b() {
        return this.f34789b;
    }

    @Override // s5.f0.d.b
    public String c() {
        return this.f34788a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.d.b)) {
            return false;
        }
        f0.d.b bVar = (f0.d.b) obj;
        if (this.f34788a.equals(bVar.c())) {
            if (Arrays.equals(this.f34789b, bVar instanceof g ? ((g) bVar).f34789b : bVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f34788a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f34789b);
    }

    public String toString() {
        return "File{filename=" + this.f34788a + ", contents=" + Arrays.toString(this.f34789b) + "}";
    }

    private g(String str, byte[] bArr) {
        this.f34788a = str;
        this.f34789b = bArr;
    }
}
