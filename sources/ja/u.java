package ja;

import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Interceptor.java */
/* JADX INFO: loaded from: classes2.dex */
public interface u {

    /* JADX INFO: compiled from: Interceptor.java */
    /* JADX INFO: loaded from: classes.dex */
    public interface a {
        int a();

        int b();

        @Nullable
        i c();

        int d();

        c0 e(a0 a0Var) throws IOException;

        a0 f();
    }

    c0 intercept(a aVar) throws IOException;
}
