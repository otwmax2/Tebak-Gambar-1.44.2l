package u7;

import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: compiled from: ByteMatrix.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[][] f35617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f35618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f35619c;

    public b(int i10, int i11) {
        this.f35617a = (byte[][]) Array.newInstance((Class<?>) byte.class, i11, i10);
        this.f35618b = i10;
        this.f35619c = i11;
    }

    public void a(byte b10) {
        for (byte[] bArr : this.f35617a) {
            Arrays.fill(bArr, b10);
        }
    }

    public byte b(int i10, int i11) {
        return this.f35617a[i11][i10];
    }

    public byte[][] c() {
        return this.f35617a;
    }

    public int d() {
        return this.f35619c;
    }

    public int e() {
        return this.f35618b;
    }

    public void f(int i10, int i11, int i12) {
        this.f35617a[i11][i10] = (byte) i12;
    }

    public void g(int i10, int i11, boolean z10) {
        this.f35617a[i11][i10] = z10 ? (byte) 1 : (byte) 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.f35618b * 2 * this.f35619c) + 2);
        for (int i10 = 0; i10 < this.f35619c; i10++) {
            byte[] bArr = this.f35617a[i10];
            for (int i11 = 0; i11 < this.f35618b; i11++) {
                byte b10 = bArr[i11];
                if (b10 == 0) {
                    sb.append(" 0");
                } else if (b10 != 1) {
                    sb.append("  ");
                } else {
                    sb.append(" 1");
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
