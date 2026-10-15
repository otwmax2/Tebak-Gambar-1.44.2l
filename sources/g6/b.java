package g6;

import java.io.OutputStream;

/* JADX INFO: compiled from: LengthCountingOutputStream.java */
/* JADX INFO: loaded from: classes2.dex */
final class b extends OutputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f29906o = 0;

    b() {
    }

    long b() {
        return this.f29906o;
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        this.f29906o++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.f29906o += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        int i12;
        if (i10 >= 0 && i10 <= bArr.length && i11 >= 0 && (i12 = i10 + i11) <= bArr.length && i12 >= 0) {
            this.f29906o += (long) i11;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
