package y1;

import com.facebook.internal.NativeProtocol;

/* JADX INFO: compiled from: NeuQuant.java */
/* JADX INFO: loaded from: classes.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f36611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected byte[] f36612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f36613c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f36614d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int[] f36616f = new int[256];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int[] f36617g = new int[256];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int[] f36618h = new int[256];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int[] f36619i = new int[32];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int[][] f36615e = new int[256][];

    public c(byte[] bArr, int i10, int i11) {
        this.f36612b = bArr;
        this.f36613c = i10;
        this.f36614d = i11;
        for (int i12 = 0; i12 < 256; i12++) {
            int[][] iArr = this.f36615e;
            iArr[i12] = new int[4];
            int[] iArr2 = iArr[i12];
            int i13 = (i12 << 12) / 256;
            iArr2[2] = i13;
            iArr2[1] = i13;
            iArr2[0] = i13;
            this.f36618h[i12] = 256;
            this.f36617g[i12] = 0;
        }
    }

    protected void a(int i10, int i11, int i12, int i13, int i14) {
        int i15 = i11 - i10;
        if (i15 < -1) {
            i15 = -1;
        }
        int i16 = i11 + i10;
        if (i16 > 256) {
            i16 = 256;
        }
        int i17 = i11 + 1;
        int i18 = i11 - 1;
        int i19 = 1;
        while (true) {
            if (i17 >= i16 && i18 <= i15) {
                return;
            }
            int i20 = i19 + 1;
            int i21 = this.f36619i[i19];
            if (i17 < i16) {
                int i22 = i17 + 1;
                int[] iArr = this.f36615e[i17];
                try {
                    iArr[0] = iArr[0] - (((iArr[0] - i12) * i21) / 262144);
                    iArr[1] = iArr[1] - (((iArr[1] - i13) * i21) / 262144);
                    iArr[2] = iArr[2] - (((iArr[2] - i14) * i21) / 262144);
                } catch (Exception unused) {
                }
                i17 = i22;
            }
            if (i18 > i15) {
                int i23 = i18 - 1;
                int[] iArr2 = this.f36615e[i18];
                try {
                    iArr2[0] = iArr2[0] - (((iArr2[0] - i12) * i21) / 262144);
                    iArr2[1] = iArr2[1] - (((iArr2[1] - i13) * i21) / 262144);
                    iArr2[2] = iArr2[2] - ((i21 * (iArr2[2] - i14)) / 262144);
                } catch (Exception unused2) {
                }
                i19 = i20;
                i18 = i23;
            } else {
                i19 = i20;
            }
        }
    }

    protected void b(int i10, int i11, int i12, int i13, int i14) {
        int[] iArr = this.f36615e[i11];
        iArr[0] = iArr[0] - (((iArr[0] - i12) * i10) / 1024);
        iArr[1] = iArr[1] - (((iArr[1] - i13) * i10) / 1024);
        iArr[2] = iArr[2] - ((i10 * (iArr[2] - i14)) / 1024);
    }

    public byte[] c() {
        byte[] bArr = new byte[768];
        int[] iArr = new int[256];
        for (int i10 = 0; i10 < 256; i10++) {
            iArr[this.f36615e[i10][3]] = i10;
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 < 256) {
            int i13 = iArr[i11];
            int i14 = i12 + 1;
            int[][] iArr2 = this.f36615e;
            bArr[i12] = (byte) iArr2[i13][0];
            int i15 = i14 + 1;
            bArr[i14] = (byte) iArr2[i13][1];
            bArr[i15] = (byte) iArr2[i13][2];
            i11++;
            i12 = i15 + 1;
        }
        return bArr;
    }

    protected int d(int i10, int i11, int i12) {
        int i13 = Integer.MAX_VALUE;
        int i14 = Integer.MAX_VALUE;
        int i15 = -1;
        int i16 = -1;
        for (int i17 = 0; i17 < 256; i17++) {
            int[] iArr = this.f36615e[i17];
            int i18 = iArr[0] - i10;
            if (i18 < 0) {
                i18 = -i18;
            }
            int i19 = iArr[1] - i11;
            if (i19 < 0) {
                i19 = -i19;
            }
            int i20 = i18 + i19;
            int i21 = iArr[2] - i12;
            if (i21 < 0) {
                i21 = -i21;
            }
            int i22 = i20 + i21;
            if (i22 < i13) {
                i15 = i17;
                i13 = i22;
            }
            int[] iArr2 = this.f36617g;
            int i23 = i22 - (iArr2[i17] >> 12);
            if (i23 < i14) {
                i16 = i17;
                i14 = i23;
            }
            int[] iArr3 = this.f36618h;
            int i24 = iArr3[i17] >> 10;
            iArr3[i17] = iArr3[i17] - i24;
            iArr2[i17] = iArr2[i17] + (i24 << 10);
        }
        int[] iArr4 = this.f36618h;
        iArr4[i15] = iArr4[i15] + 64;
        int[] iArr5 = this.f36617g;
        iArr5[i15] = iArr5[i15] - NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
        return i16;
    }

    public void e() {
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < 256) {
            int[] iArr = this.f36615e[i10];
            int i13 = iArr[1];
            int i14 = i10 + 1;
            int i15 = i10;
            for (int i16 = i14; i16 < 256; i16++) {
                int[] iArr2 = this.f36615e[i16];
                if (iArr2[1] < i13) {
                    i13 = iArr2[1];
                    i15 = i16;
                }
            }
            int[] iArr3 = this.f36615e[i15];
            if (i10 != i15) {
                int i17 = iArr3[0];
                iArr3[0] = iArr[0];
                iArr[0] = i17;
                int i18 = iArr3[1];
                iArr3[1] = iArr[1];
                iArr[1] = i18;
                int i19 = iArr3[2];
                iArr3[2] = iArr[2];
                iArr[2] = i19;
                int i20 = iArr3[3];
                iArr3[3] = iArr[3];
                iArr[3] = i20;
            }
            if (i13 != i11) {
                this.f36616f[i11] = (i12 + i10) >> 1;
                while (true) {
                    i11++;
                    if (i11 >= i13) {
                        break;
                    } else {
                        this.f36616f[i11] = i10;
                    }
                }
                i12 = i10;
                i11 = i13;
            }
            i10 = i14;
        }
        this.f36616f[i11] = (i12 + 255) >> 1;
        for (int i21 = i11 + 1; i21 < 256; i21++) {
            this.f36616f[i21] = 255;
        }
    }

    public void f() {
        int i10 = this.f36613c;
        if (i10 < 1509) {
            this.f36614d = 1;
        }
        int i11 = this.f36614d;
        this.f36611a = ((i11 - 1) / 3) + 30;
        byte[] bArr = this.f36612b;
        int i12 = i10 / (i11 * 3);
        int i13 = i12 / 100;
        for (int i14 = 0; i14 < 32; i14++) {
            this.f36619i[i14] = 1024 * (((1024 - (i14 * i14)) * 256) / 1024);
        }
        int i15 = this.f36613c;
        int i16 = i15 < 1509 ? 3 : i15 % 499 != 0 ? 1497 : i15 % 491 != 0 ? 1473 : i15 % 487 != 0 ? 1461 : 1509;
        int i17 = i13;
        int i18 = 0;
        int i19 = 2048;
        int i20 = 32;
        int i21 = 1024;
        int i22 = 0;
        while (i18 < i12) {
            int i23 = (bArr[i22 + 0] & 255) << 4;
            int i24 = (bArr[i22 + 1] & 255) << 4;
            int i25 = (bArr[i22 + 2] & 255) << 4;
            int iD = d(i23, i24, i25);
            int i26 = i18;
            b(i21, iD, i23, i24, i25);
            if (i20 != 0) {
                a(i20, iD, i23, i24, i25);
            }
            int i27 = i22 + i16;
            if (i27 >= i10) {
                i27 -= this.f36613c;
            }
            i22 = i27;
            i18 = i26 + 1;
            if (i17 == 0) {
                i17 = 1;
            }
            if (i18 % i17 == 0) {
                i21 -= i21 / this.f36611a;
                i19 -= i19 / 30;
                int i28 = i19 >> 6;
                i20 = i28 <= 1 ? 0 : i28;
                for (int i29 = 0; i29 < i20; i29++) {
                    int i30 = i20 * i20;
                    this.f36619i[i29] = (((i30 - (i29 * i29)) * 256) / i30) * i21;
                }
            }
        }
    }

    public int g(int i10, int i11, int i12) {
        int i13 = this.f36616f[i11];
        int i14 = i13 - 1;
        int i15 = 1000;
        int i16 = -1;
        while (true) {
            if (i13 >= 256 && i14 < 0) {
                return i16;
            }
            if (i13 < 256) {
                int[] iArr = this.f36615e[i13];
                int i17 = iArr[1] - i11;
                if (i17 >= i15) {
                    i13 = 256;
                } else {
                    i13++;
                    if (i17 < 0) {
                        i17 = -i17;
                    }
                    int i18 = iArr[0] - i10;
                    if (i18 < 0) {
                        i18 = -i18;
                    }
                    int i19 = i17 + i18;
                    if (i19 < i15) {
                        int i20 = iArr[2] - i12;
                        if (i20 < 0) {
                            i20 = -i20;
                        }
                        int i21 = i19 + i20;
                        if (i21 < i15) {
                            i16 = iArr[3];
                            i15 = i21;
                        }
                    }
                }
            }
            if (i14 >= 0) {
                int[] iArr2 = this.f36615e[i14];
                int i22 = i11 - iArr2[1];
                if (i22 >= i15) {
                    i14 = -1;
                } else {
                    i14--;
                    if (i22 < 0) {
                        i22 = -i22;
                    }
                    int i23 = iArr2[0] - i10;
                    if (i23 < 0) {
                        i23 = -i23;
                    }
                    int i24 = i22 + i23;
                    if (i24 < i15) {
                        int i25 = iArr2[2] - i12;
                        if (i25 < 0) {
                            i25 = -i25;
                        }
                        int i26 = i25 + i24;
                        if (i26 < i15) {
                            i16 = iArr2[3];
                            i15 = i26;
                        }
                    }
                }
            }
        }
    }

    public byte[] h() {
        f();
        i();
        e();
        return c();
    }

    public void i() {
        for (int i10 = 0; i10 < 256; i10++) {
            int[][] iArr = this.f36615e;
            int[] iArr2 = iArr[i10];
            iArr2[0] = iArr2[0] >> 4;
            int[] iArr3 = iArr[i10];
            iArr3[1] = iArr3[1] >> 4;
            int[] iArr4 = iArr[i10];
            iArr4[2] = iArr4[2] >> 4;
            iArr[i10][3] = i10;
        }
    }
}
