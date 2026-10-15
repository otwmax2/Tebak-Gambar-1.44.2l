package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;

/* JADX INFO: compiled from: LogWriter.java */
/* JADX INFO: loaded from: classes.dex */
final class b0 extends Writer {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f3153o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private StringBuilder f3154p = new StringBuilder(128);

    b0(String str) {
        this.f3153o = str;
    }

    private void b() {
        if (this.f3154p.length() > 0) {
            Log.d(this.f3153o, this.f3154p.toString());
            StringBuilder sb = this.f3154p;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        b();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        b();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            char c10 = cArr[i10 + i12];
            if (c10 == '\n') {
                b();
            } else {
                this.f3154p.append(c10);
            }
        }
    }
}
