package b2;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

/* JADX INFO: compiled from: OriginalKey.java */
/* JADX INFO: loaded from: classes.dex */
class k implements z1.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z1.c f4635b;

    public k(String str, z1.c cVar) {
        this.f4634a = str;
        this.f4635b = cVar;
    }

    @Override // z1.c
    public void a(MessageDigest messageDigest) throws UnsupportedEncodingException {
        messageDigest.update(this.f4634a.getBytes("UTF-8"));
        this.f4635b.a(messageDigest);
    }

    @Override // z1.c
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return this.f4634a.equals(kVar.f4634a) && this.f4635b.equals(kVar.f4635b);
    }

    @Override // z1.c
    public int hashCode() {
        return (this.f4634a.hashCode() * 31) + this.f4635b.hashCode();
    }
}
