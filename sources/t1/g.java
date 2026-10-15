package t1;

/* JADX INFO: compiled from: ExecutorException.java */
/* JADX INFO: loaded from: classes.dex */
public class g extends RuntimeException {
    public g(Exception exc) {
        super("An exception was thrown by an Executor", exc);
    }
}
