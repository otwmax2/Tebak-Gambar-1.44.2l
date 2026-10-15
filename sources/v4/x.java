package v4;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class x extends w {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final w f35831o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f35832p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final long f35833q;

    public x(w wVar, long j10, long j11) {
        this.f35831o = wVar;
        long jE = e(j10);
        this.f35832p = jE;
        this.f35833q = e(jE + j11);
    }

    private final long e(long j10) {
        if (j10 < 0) {
            return 0L;
        }
        return j10 > this.f35831o.b() ? this.f35831o.b() : j10;
    }

    @Override // v4.w
    public final long b() {
        return this.f35833q - this.f35832p;
    }

    @Override // v4.w
    protected final InputStream c(long j10, long j11) throws IOException {
        long jE = e(this.f35832p);
        return this.f35831o.c(jE, e(j11 + jE) - jE);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }
}
