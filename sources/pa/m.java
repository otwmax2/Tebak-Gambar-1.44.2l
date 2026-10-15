package pa;

import java.util.Arrays;

/* JADX INFO: compiled from: Settings.java */
/* JADX INFO: loaded from: classes2.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f33714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f33715b = new int[10];

    void a() {
        this.f33714a = 0;
        Arrays.fill(this.f33715b, 0);
    }

    int b(int i10) {
        return this.f33715b[i10];
    }

    int c() {
        if ((this.f33714a & 2) != 0) {
            return this.f33715b[1];
        }
        return -1;
    }

    int d() {
        if ((this.f33714a & 128) != 0) {
            return this.f33715b[7];
        }
        return 65535;
    }

    int e(int i10) {
        return (this.f33714a & 16) != 0 ? this.f33715b[4] : i10;
    }

    int f(int i10) {
        return (this.f33714a & 32) != 0 ? this.f33715b[5] : i10;
    }

    boolean g(int i10) {
        return ((1 << i10) & this.f33714a) != 0;
    }

    void h(m mVar) {
        for (int i10 = 0; i10 < 10; i10++) {
            if (mVar.g(i10)) {
                i(i10, mVar.b(i10));
            }
        }
    }

    m i(int i10, int i11) {
        if (i10 >= 0) {
            int[] iArr = this.f33715b;
            if (i10 < iArr.length) {
                this.f33714a = (1 << i10) | this.f33714a;
                iArr[i10] = i11;
            }
        }
        return this;
    }

    int j() {
        return Integer.bitCount(this.f33714a);
    }
}
