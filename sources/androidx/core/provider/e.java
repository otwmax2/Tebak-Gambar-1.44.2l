package androidx.core.provider;

import android.util.Base64;
import java.util.List;

/* JADX INFO: compiled from: FontRequest.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f2300c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<List<byte[]>> f2301d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f2302e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f2303f;

    public e(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f2298a = (String) androidx.core.util.h.f(str);
        this.f2299b = (String) androidx.core.util.h.f(str2);
        this.f2300c = (String) androidx.core.util.h.f(str3);
        this.f2301d = (List) androidx.core.util.h.f(list);
        this.f2303f = a(str, str2, str3);
    }

    private String a(String str, String str2, String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    public List<List<byte[]>> b() {
        return this.f2301d;
    }

    public int c() {
        return this.f2302e;
    }

    String d() {
        return this.f2303f;
    }

    public String e() {
        return this.f2298a;
    }

    public String f() {
        return this.f2299b;
    }

    public String g() {
        return this.f2300c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f2298a + ", mProviderPackage: " + this.f2299b + ", mQuery: " + this.f2300c + ", mCertificates:");
        for (int i10 = 0; i10 < this.f2301d.size(); i10++) {
            sb.append(" [");
            List<byte[]> list = this.f2301d.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i11), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f2302e);
        return sb.toString();
    }
}
