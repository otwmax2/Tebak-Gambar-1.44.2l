package y4;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class g {
    public static <ResultT> ResultT a(e<ResultT> eVar) throws ExecutionException, InterruptedException {
        v4.s.a(eVar, "Task must not be null");
        if (eVar.f()) {
            return (ResultT) d(eVar);
        }
        v vVar = new v(null);
        e(eVar, vVar);
        vVar.a();
        return (ResultT) d(eVar);
    }

    public static <ResultT> e<ResultT> b(Exception exc) {
        t tVar = new t();
        tVar.h(exc);
        return tVar;
    }

    public static <ResultT> e<ResultT> c(ResultT resultt) {
        t tVar = new t();
        tVar.i(resultt);
        return tVar;
    }

    private static <ResultT> ResultT d(e<ResultT> eVar) throws ExecutionException {
        if (eVar.g()) {
            return eVar.e();
        }
        throw new ExecutionException(eVar.d());
    }

    private static void e(e<?> eVar, w wVar) {
        Executor executor = f.f36961b;
        eVar.c(executor, wVar);
        eVar.b(executor, wVar);
    }
}
