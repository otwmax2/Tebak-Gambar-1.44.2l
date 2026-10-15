package y1;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: LZWEncoder.java */
/* JADX INFO: loaded from: classes.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f36588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f36589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f36590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f36591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f36592e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f36593f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f36594g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f36596i;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f36603p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f36604q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f36605r;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f36609v;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f36595h = 12;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f36597j = 4096;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int[] f36598k = new int[5003];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int[] f36599l = new int[5003];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f36600m = 5003;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f36601n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f36602o = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f36606s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f36607t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int[] f36608u = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    byte[] f36610w = new byte[256];

    b(int i10, int i11, byte[] bArr, int i12) {
        this.f36588a = i10;
        this.f36589b = i11;
        this.f36590c = bArr;
        this.f36591d = Math.max(2, i12);
    }

    private int h() {
        int i10 = this.f36592e;
        if (i10 == 0) {
            return -1;
        }
        this.f36592e = i10 - 1;
        byte[] bArr = this.f36590c;
        int i11 = this.f36593f;
        this.f36593f = i11 + 1;
        return bArr[i11] & 255;
    }

    final int a(int i10) {
        return (1 << i10) - 1;
    }

    void b(byte b10, OutputStream outputStream) throws IOException {
        byte[] bArr = this.f36610w;
        int i10 = this.f36609v;
        int i11 = i10 + 1;
        this.f36609v = i11;
        bArr[i10] = b10;
        if (i11 >= 254) {
            g(outputStream);
        }
    }

    void c(OutputStream outputStream) throws IOException {
        d(this.f36600m);
        int i10 = this.f36604q;
        this.f36601n = i10 + 2;
        this.f36602o = true;
        i(i10, outputStream);
    }

    void d(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            this.f36598k[i11] = -1;
        }
    }

    void e(int i10, OutputStream outputStream) throws IOException {
        int[] iArr;
        this.f36603p = i10;
        int i11 = 0;
        this.f36602o = false;
        this.f36594g = i10;
        this.f36596i = a(i10);
        int i12 = 1 << (i10 - 1);
        this.f36604q = i12;
        this.f36605r = i12 + 1;
        this.f36601n = i12 + 2;
        this.f36609v = 0;
        int iH = h();
        for (int i13 = this.f36600m; i13 < 65536; i13 *= 2) {
            i11++;
        }
        int i14 = 8 - i11;
        int i15 = this.f36600m;
        d(i15);
        i(this.f36604q, outputStream);
        while (true) {
            int iH2 = h();
            if (iH2 == -1) {
                i(iH, outputStream);
                i(this.f36605r, outputStream);
                return;
            }
            int i16 = (iH2 << this.f36595h) + iH;
            int i17 = (iH2 << i14) ^ iH;
            int[] iArr2 = this.f36598k;
            if (iArr2[i17] == i16) {
                iH = this.f36599l[i17];
            } else {
                if (iArr2[i17] >= 0) {
                    int i18 = i15 - i17;
                    if (i17 == 0) {
                        i18 = 1;
                    }
                    do {
                        i17 -= i18;
                        if (i17 < 0) {
                            i17 += i15;
                        }
                        iArr = this.f36598k;
                        if (iArr[i17] == i16) {
                            iH = this.f36599l[i17];
                            break;
                        }
                    } while (iArr[i17] >= 0);
                }
                i(iH, outputStream);
                int i19 = this.f36601n;
                if (i19 < this.f36597j) {
                    int[] iArr3 = this.f36599l;
                    this.f36601n = i19 + 1;
                    iArr3[i17] = i19;
                    this.f36598k[i17] = i16;
                } else {
                    c(outputStream);
                }
                iH = iH2;
            }
        }
    }

    void f(OutputStream outputStream) throws IOException {
        outputStream.write(this.f36591d);
        this.f36592e = this.f36588a * this.f36589b;
        this.f36593f = 0;
        e(this.f36591d + 1, outputStream);
        outputStream.write(0);
    }

    void g(OutputStream outputStream) throws IOException {
        int i10 = this.f36609v;
        if (i10 > 0) {
            outputStream.write(i10);
            outputStream.write(this.f36610w, 0, this.f36609v);
            this.f36609v = 0;
        }
    }

    void i(int i10, OutputStream outputStream) throws IOException {
        int i11 = this.f36606s;
        int[] iArr = this.f36608u;
        int i12 = this.f36607t;
        int i13 = i11 & iArr[i12];
        this.f36606s = i13;
        if (i12 > 0) {
            this.f36606s = i13 | (i10 << i12);
        } else {
            this.f36606s = i10;
        }
        this.f36607t = i12 + this.f36594g;
        while (this.f36607t >= 8) {
            b((byte) (this.f36606s & 255), outputStream);
            this.f36606s >>= 8;
            this.f36607t -= 8;
        }
        if (this.f36601n > this.f36596i || this.f36602o) {
            if (this.f36602o) {
                int i14 = this.f36603p;
                this.f36594g = i14;
                this.f36596i = a(i14);
                this.f36602o = false;
            } else {
                int i15 = this.f36594g + 1;
                this.f36594g = i15;
                if (i15 == this.f36595h) {
                    this.f36596i = this.f36597j;
                } else {
                    this.f36596i = a(i15);
                }
            }
        }
        if (i10 == this.f36605r) {
            while (this.f36607t > 0) {
                b((byte) (this.f36606s & 255), outputStream);
                this.f36606s >>= 8;
                this.f36607t -= 8;
            }
            g(outputStream);
        }
    }
}
