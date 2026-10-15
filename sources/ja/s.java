package ja;

import com.facebook.internal.security.CertificateUtil;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Headers.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f31161a;

    /* JADX INFO: compiled from: Headers.java */
    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final List<String> f31162a = new ArrayList(20);

        public a a(String str, String str2) {
            s.a(str);
            s.b(str2, str);
            return c(str, str2);
        }

        a b(String str) {
            int iIndexOf = str.indexOf(CertificateUtil.DELIMITER, 1);
            return iIndexOf != -1 ? c(str.substring(0, iIndexOf), str.substring(iIndexOf + 1)) : str.startsWith(CertificateUtil.DELIMITER) ? c(BuildConfig.FLAVOR, str.substring(1)) : c(BuildConfig.FLAVOR, str);
        }

        a c(String str, String str2) {
            this.f31162a.add(str);
            this.f31162a.add(str2.trim());
            return this;
        }

        public s d() {
            return new s(this);
        }

        public a e(String str) {
            int i10 = 0;
            while (i10 < this.f31162a.size()) {
                if (str.equalsIgnoreCase(this.f31162a.get(i10))) {
                    this.f31162a.remove(i10);
                    this.f31162a.remove(i10);
                    i10 -= 2;
                }
                i10 += 2;
            }
            return this;
        }

        public a f(String str, String str2) {
            s.a(str);
            s.b(str2, str);
            e(str);
            c(str, str2);
            return this;
        }
    }

    s(a aVar) {
        List<String> list = aVar.f31162a;
        this.f31161a = (String[]) list.toArray(new String[list.size()]);
    }

    static void a(String str) {
        Objects.requireNonNull(str, "name == null");
        if (str.isEmpty()) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt <= ' ' || cCharAt >= 127) {
                throw new IllegalArgumentException(ka.c.r("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i10), str));
            }
        }
    }

    static void b(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("value for name " + str2 + " == null");
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                throw new IllegalArgumentException(ka.c.r("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt), Integer.valueOf(i10), str2, str));
            }
        }
    }

    private static String d(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public static s g(String... strArr) {
        Objects.requireNonNull(strArr, "namesAndValues == null");
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (int i10 = 0; i10 < strArr2.length; i10++) {
            if (strArr2[i10] == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i10] = strArr2[i10].trim();
        }
        for (int i11 = 0; i11 < strArr2.length; i11 += 2) {
            String str = strArr2[i11];
            String str2 = strArr2[i11 + 1];
            a(str);
            b(str2, str);
        }
        return new s(strArr2);
    }

    @Nullable
    public String c(String str) {
        return d(this.f31161a, str);
    }

    public String e(int i10) {
        return this.f31161a[i10 * 2];
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof s) && Arrays.equals(((s) obj).f31161a, this.f31161a);
    }

    public a f() {
        a aVar = new a();
        Collections.addAll(aVar.f31162a, this.f31161a);
        return aVar;
    }

    public int h() {
        return this.f31161a.length / 2;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f31161a);
    }

    public String i(int i10) {
        return this.f31161a[(i10 * 2) + 1];
    }

    public List<String> j(String str) {
        int iH = h();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < iH; i10++) {
            if (str.equalsIgnoreCase(e(i10))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(i(i10));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int iH = h();
        for (int i10 = 0; i10 < iH; i10++) {
            sb.append(e(i10));
            sb.append(": ");
            sb.append(i(i10));
            sb.append("\n");
        }
        return sb.toString();
    }

    private s(String[] strArr) {
        this.f31161a = strArr;
    }
}
