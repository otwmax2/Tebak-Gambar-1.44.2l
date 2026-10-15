package q3;

/* JADX INFO: compiled from: Retries.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static <TInput, TResult, TException extends Throwable> TResult a(int i10, TInput tinput, a<TInput, TResult, TException> aVar, c<TInput, TResult> cVar) throws Throwable {
        TResult tresultA;
        if (i10 < 1) {
            return aVar.a(tinput);
        }
        do {
            tresultA = aVar.a(tinput);
            tinput = cVar.a(tinput, tresultA);
            if (tinput == null) {
                break;
            }
            i10--;
        } while (i10 >= 1);
        return tresultA;
    }
}
