package y4;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class e<ResultT> {
    public abstract e<ResultT> a(a<ResultT> aVar);

    public abstract e<ResultT> b(Executor executor, b bVar);

    public abstract e<ResultT> c(Executor executor, c<? super ResultT> cVar);

    public abstract Exception d();

    public abstract ResultT e();

    public abstract boolean f();

    public abstract boolean g();
}
