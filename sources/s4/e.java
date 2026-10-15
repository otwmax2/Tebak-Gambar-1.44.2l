package s4;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class e extends InputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Enumeration<File> f34559o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private InputStream f34560p;

    public e(Enumeration<File> enumeration) throws IOException {
        this.f34559o = enumeration;
        b();
    }

    final void b() throws IOException {
        InputStream inputStream = this.f34560p;
        if (inputStream != null) {
            inputStream.close();
        }
        this.f34560p = this.f34559o.hasMoreElements() ? new FileInputStream(this.f34559o.nextElement()) : null;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        InputStream inputStream = this.f34560p;
        if (inputStream != null) {
            inputStream.close();
            this.f34560p = null;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        while (true) {
            InputStream inputStream = this.f34560p;
            if (inputStream == null) {
                return -1;
            }
            int i10 = inputStream.read();
            if (i10 != -1) {
                return i10;
            }
            b();
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f34560p == null) {
            return -1;
        }
        Objects.requireNonNull(bArr);
        if (i10 < 0 || i11 < 0 || i11 > bArr.length - i10) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 == 0) {
            return 0;
        }
        do {
            int i12 = this.f34560p.read(bArr, i10, i11);
            if (i12 > 0) {
                return i12;
            }
            b();
        } while (this.f34560p != null);
        return -1;
    }
}
