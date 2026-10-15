package pa;

import com.vungle.mediation.BuildConfig;
import java.io.IOException;

/* JADX INFO: compiled from: Http2.java */
/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final okio.f f33595a = okio.f.l("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f33596b = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String[] f33597c = new String[64];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String[] f33598d = new String[256];

    static {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            String[] strArr = f33598d;
            if (i11 >= strArr.length) {
                break;
            }
            strArr[i11] = ka.c.r("%8s", Integer.toBinaryString(i11)).replace(' ', '0');
            i11++;
        }
        String[] strArr2 = f33597c;
        strArr2[0] = BuildConfig.FLAVOR;
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i12 = 0; i12 < 1; i12++) {
            int i13 = iArr[i12];
            String[] strArr3 = f33597c;
            strArr3[i13 | 8] = strArr3[i13] + "|PADDED";
        }
        String[] strArr4 = f33597c;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i14 = 0; i14 < 3; i14++) {
            int i15 = iArr2[i14];
            for (int i16 = 0; i16 < 1; i16++) {
                int i17 = iArr[i16];
                String[] strArr5 = f33597c;
                int i18 = i17 | i15;
                strArr5[i18] = strArr5[i17] + '|' + strArr5[i15];
                strArr5[i18 | 8] = strArr5[i17] + '|' + strArr5[i15] + "|PADDED";
            }
        }
        while (true) {
            String[] strArr6 = f33597c;
            if (i10 >= strArr6.length) {
                return;
            }
            if (strArr6[i10] == null) {
                strArr6[i10] = f33598d[i10];
            }
            i10++;
        }
    }

    private e() {
    }

    static String a(byte b10, byte b11) {
        if (b11 == 0) {
            return BuildConfig.FLAVOR;
        }
        if (b10 != 2 && b10 != 3) {
            if (b10 == 4 || b10 == 6) {
                return b11 == 1 ? "ACK" : f33598d[b11];
            }
            if (b10 != 7 && b10 != 8) {
                String[] strArr = f33597c;
                String str = b11 < strArr.length ? strArr[b11] : f33598d[b11];
                return (b10 != 5 || (b11 & 4) == 0) ? (b10 != 0 || (b11 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return f33598d[b11];
    }

    static String b(boolean z10, int i10, int i11, byte b10, byte b11) {
        String[] strArr = f33596b;
        String strR = b10 < strArr.length ? strArr[b10] : ka.c.r("0x%02x", Byte.valueOf(b10));
        String strA = a(b10, b11);
        Object[] objArr = new Object[5];
        objArr[0] = z10 ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i10);
        objArr[2] = Integer.valueOf(i11);
        objArr[3] = strR;
        objArr[4] = strA;
        return ka.c.r("%s 0x%08x %5d %-13s %s", objArr);
    }

    static IllegalArgumentException c(String str, Object... objArr) {
        throw new IllegalArgumentException(ka.c.r(str, objArr));
    }

    static IOException d(String str, Object... objArr) throws IOException {
        throw new IOException(ka.c.r(str, objArr));
    }
}
