package l0;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: Table.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f31864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ByteBuffer f31865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f31866c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f31867d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    d f31868e = d.a();

    protected int a(int i10) {
        return i10 + this.f31865b.getInt(i10);
    }

    protected int b(int i10) {
        if (i10 < this.f31867d) {
            return this.f31865b.getShort(this.f31866c + i10);
        }
        return 0;
    }

    protected void c(int i10, ByteBuffer byteBuffer) {
        this.f31865b = byteBuffer;
        if (byteBuffer == null) {
            this.f31864a = 0;
            this.f31866c = 0;
            this.f31867d = 0;
        } else {
            this.f31864a = i10;
            int i11 = i10 - byteBuffer.getInt(i10);
            this.f31866c = i11;
            this.f31867d = this.f31865b.getShort(i11);
        }
    }

    protected int d(int i10) {
        int i11 = i10 + this.f31864a;
        return i11 + this.f31865b.getInt(i11) + 4;
    }

    protected int e(int i10) {
        int i11 = i10 + this.f31864a;
        return this.f31865b.getInt(i11 + this.f31865b.getInt(i11));
    }
}
