package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import ka.c;
import okio.e;
import okio.l;
import okio.n;
import qa.g;

/* JADX INFO: loaded from: classes2.dex */
public final class PublicSuffixDatabase {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f33332e = {42};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f33333f = new String[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f33334g = {"*"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final PublicSuffixDatabase f33335h = new PublicSuffixDatabase();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f33336a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CountDownLatch f33337b = new CountDownLatch(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f33338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f33339d;

    private static String a(byte[] bArr, byte[][] bArr2, int i10) {
        int i11;
        boolean z10;
        int i12;
        int i13;
        int length = bArr.length;
        int i14 = 0;
        while (i14 < length) {
            int i15 = (i14 + length) / 2;
            while (i15 > -1 && bArr[i15] != 10) {
                i15--;
            }
            int i16 = i15 + 1;
            int i17 = 1;
            while (true) {
                i11 = i16 + i17;
                if (bArr[i11] == 10) {
                    break;
                }
                i17++;
            }
            int i18 = i11 - i16;
            int i19 = i10;
            boolean z11 = false;
            int i20 = 0;
            int i21 = 0;
            while (true) {
                if (z11) {
                    i12 = 46;
                    z10 = false;
                } else {
                    z10 = z11;
                    i12 = bArr2[i19][i20] & 255;
                }
                i13 = i12 - (bArr[i16 + i21] & 255);
                if (i13 == 0) {
                    i21++;
                    i20++;
                    if (i21 == i18) {
                        break;
                    }
                    if (bArr2[i19].length != i20) {
                        z11 = z10;
                    } else {
                        if (i19 == bArr2.length - 1) {
                            break;
                        }
                        i19++;
                        z11 = true;
                        i20 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i13 >= 0) {
                if (i13 <= 0) {
                    int i22 = i18 - i21;
                    int length2 = bArr2[i19].length - i20;
                    while (true) {
                        i19++;
                        if (i19 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i19].length;
                    }
                    if (length2 >= i22) {
                        if (length2 <= i22) {
                            return new String(bArr, i16, i18, c.f31647j);
                        }
                    }
                }
                i14 = i11 + 1;
            }
            length = i16 - 1;
        }
        return null;
    }

    private String[] b(String[] strArr) {
        String str;
        String strA;
        String strA2;
        int i10 = 0;
        if (this.f33336a.get() || !this.f33336a.compareAndSet(false, true)) {
            try {
                this.f33337b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            f();
        }
        synchronized (this) {
            if (this.f33338c == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        byte[][] bArr = new byte[length][];
        for (int i11 = 0; i11 < strArr.length; i11++) {
            bArr[i11] = strArr[i11].getBytes(c.f31647j);
        }
        int i12 = 0;
        while (true) {
            str = null;
            if (i12 >= length) {
                strA = null;
                break;
            }
            strA = a(this.f33338c, bArr, i12);
            if (strA != null) {
                break;
            }
            i12++;
        }
        if (length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i13 = 0; i13 < bArr2.length - 1; i13++) {
                bArr2[i13] = f33332e;
                strA2 = a(this.f33338c, bArr2, i13);
                if (strA2 != null) {
                    break;
                }
            }
            strA2 = null;
        } else {
            strA2 = null;
        }
        if (strA2 != null) {
            while (true) {
                if (i10 >= length - 1) {
                    break;
                }
                String strA3 = a(this.f33339d, bArr, i10);
                if (strA3 != null) {
                    str = strA3;
                    break;
                }
                i10++;
            }
        }
        if (str != null) {
            return ("!" + str).split("\\.");
        }
        if (strA == null && strA2 == null) {
            return f33334g;
        }
        String[] strArrSplit = strA != null ? strA.split("\\.") : f33333f;
        String[] strArrSplit2 = strA2 != null ? strA2.split("\\.") : f33333f;
        return strArrSplit.length > strArrSplit2.length ? strArrSplit : strArrSplit2;
    }

    public static PublicSuffixDatabase c() {
        return f33335h;
    }

    private void e() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        e eVarC = n.c(new l(n.j(resourceAsStream)));
        try {
            byte[] bArr = new byte[eVarC.readInt()];
            eVarC.readFully(bArr);
            byte[] bArr2 = new byte[eVarC.readInt()];
            eVarC.readFully(bArr2);
            synchronized (this) {
                this.f33338c = bArr;
                this.f33339d = bArr2;
            }
            this.f33337b.countDown();
        } finally {
            c.g(eVarC);
        }
    }

    private void f() {
        boolean z10 = false;
        while (true) {
            try {
                try {
                    e();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z10 = true;
                } catch (IOException e10) {
                    g.l().s(5, "Failed to read public suffix list", e10);
                    if (z10) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public String d(String str) {
        int length;
        int length2;
        Objects.requireNonNull(str, "domain == null");
        String[] strArrSplit = IDN.toUnicode(str).split("\\.");
        String[] strArrB = b(strArrSplit);
        if (strArrSplit.length == strArrB.length && strArrB[0].charAt(0) != '!') {
            return null;
        }
        if (strArrB[0].charAt(0) == '!') {
            length = strArrSplit.length;
            length2 = strArrB.length;
        } else {
            length = strArrSplit.length;
            length2 = strArrB.length + 1;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArrSplit2 = str.split("\\.");
        for (int i10 = length - length2; i10 < strArrSplit2.length; i10++) {
            sb.append(strArrSplit2[i10]);
            sb.append('.');
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }
}
