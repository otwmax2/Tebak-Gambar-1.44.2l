package d2;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: compiled from: SafeKeyGenerator.java */
/* JADX INFO: loaded from: classes.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x2.e<z1.c, String> f28624a = new x2.e<>(1000);

    j() {
    }

    public String a(z1.c cVar) {
        String strG;
        synchronized (this.f28624a) {
            strG = this.f28624a.g(cVar);
        }
        if (strG == null) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                cVar.a(messageDigest);
                strG = x2.h.m(messageDigest.digest());
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            } catch (NoSuchAlgorithmException e11) {
                e11.printStackTrace();
            }
            synchronized (this.f28624a) {
                this.f28624a.k(cVar, strG);
            }
        }
        return strG;
    }
}
