package com.google.android.play.core.assetpacks;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class g2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f25913a = new byte[4096];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f25914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f25915c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f25916d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f25917e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f25918f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f25919g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f25920h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f25921i;

    public g2() {
        d();
    }

    private final int e(int i10, byte[] bArr, int i11, int i12) {
        int i13 = this.f25914b;
        if (i13 >= i10) {
            return 0;
        }
        int iMin = Math.min(i12, i10 - i13);
        System.arraycopy(bArr, i11, this.f25913a, this.f25914b, iMin);
        int i14 = this.f25914b + iMin;
        this.f25914b = i14;
        if (i14 < i10) {
            return -1;
        }
        return iMin;
    }

    public final int a() {
        return this.f25918f;
    }

    public final int b(byte[] bArr, int i10, int i11) {
        int iE = e(30, bArr, i10, i11);
        if (iE == -1) {
            return -1;
        }
        if (this.f25915c == -1) {
            long jB = n0.b(this.f25913a, 0);
            this.f25915c = jB;
            if (jB == 67324752) {
                this.f25920h = false;
                this.f25916d = n0.b(this.f25913a, 18);
                this.f25919g = n0.a(this.f25913a, 8);
                this.f25917e = n0.a(this.f25913a, 26);
                int iA = this.f25917e + 30 + n0.a(this.f25913a, 28);
                this.f25918f = iA;
                int length = this.f25913a.length;
                if (length < iA) {
                    do {
                        length += length;
                    } while (length < iA);
                    this.f25913a = Arrays.copyOf(this.f25913a, length);
                }
            } else {
                this.f25920h = true;
            }
        }
        int iE2 = e(this.f25918f, bArr, i10 + iE, i11 - iE);
        if (iE2 == -1) {
            return -1;
        }
        int i12 = iE + iE2;
        if (!this.f25920h && this.f25921i == null) {
            this.f25921i = new String(this.f25913a, 30, this.f25917e);
        }
        return i12;
    }

    public final h3 c() {
        int i10 = this.f25914b;
        int i11 = this.f25918f;
        if (i10 < i11) {
            return new m0(this.f25921i, this.f25916d, this.f25919g, true, this.f25920h, Arrays.copyOf(this.f25913a, i10));
        }
        m0 m0Var = new m0(this.f25921i, this.f25916d, this.f25919g, false, this.f25920h, Arrays.copyOf(this.f25913a, i11));
        d();
        return m0Var;
    }

    public final void d() {
        this.f25914b = 0;
        this.f25917e = -1;
        this.f25915c = -1L;
        this.f25920h = false;
        this.f25918f = 30;
        this.f25916d = -1L;
        this.f25919g = -1;
        this.f25921i = null;
    }
}
