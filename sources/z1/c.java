package z1;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

/* JADX INFO: compiled from: Key.java */
/* JADX INFO: loaded from: classes.dex */
public interface c {
    void a(MessageDigest messageDigest) throws UnsupportedEncodingException;

    boolean equals(Object obj);

    int hashCode();
}
