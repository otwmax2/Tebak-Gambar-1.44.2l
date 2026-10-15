package l3;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: EncodedPayload.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j3.b f31942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f31943b;

    public h(j3.b bVar, byte[] bArr) {
        Objects.requireNonNull(bVar, "encoding is null");
        Objects.requireNonNull(bArr, "bytes is null");
        this.f31942a = bVar;
        this.f31943b = bArr;
    }

    public byte[] a() {
        return this.f31943b;
    }

    public j3.b b() {
        return this.f31942a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f31942a.equals(hVar.f31942a)) {
            return Arrays.equals(this.f31943b, hVar.f31943b);
        }
        return false;
    }

    public int hashCode() {
        return ((this.f31942a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f31943b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f31942a + ", bytes=[...]}";
    }
}
