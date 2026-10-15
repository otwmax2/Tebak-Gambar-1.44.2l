package w2;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.Objects;

/* JADX INFO: compiled from: StringSignature.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements z1.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f35983a;

    public c(String str) {
        Objects.requireNonNull(str, "Signature cannot be null!");
        this.f35983a = str;
    }

    @Override // z1.c
    public void a(MessageDigest messageDigest) throws UnsupportedEncodingException {
        messageDigest.update(this.f35983a.getBytes("UTF-8"));
    }

    @Override // z1.c
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f35983a.equals(((c) obj).f35983a);
    }

    @Override // z1.c
    public int hashCode() {
        return this.f35983a.hashCode();
    }

    public String toString() {
        return "StringSignature{signature='" + this.f35983a + "'}";
    }
}
