package l3;

import android.content.Context;
import java.io.Closeable;
import java.io.IOException;
import javax.inject.Singleton;

/* JADX INFO: compiled from: TransportRuntimeComponent.java */
/* JADX INFO: loaded from: classes.dex */
@Singleton
abstract class v implements Closeable {

    /* JADX INFO: compiled from: TransportRuntimeComponent.java */
    interface a {
        a a(Context context);

        v build();
    }

    v() {
    }

    abstract t3.d b();

    abstract u c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        b().close();
    }
}
