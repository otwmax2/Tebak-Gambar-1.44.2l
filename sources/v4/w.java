package v4;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class w implements Closeable {
    public abstract long b();

    protected abstract InputStream c(long j10, long j11) throws IOException;

    public final synchronized InputStream d() throws IOException {
        return c(0L, b());
    }
}
