package b2;

import java.util.Objects;

/* JADX INFO: compiled from: ErrorWrappingGlideException.java */
/* JADX INFO: loaded from: classes.dex */
public class j extends Exception {
    public j(Error error) {
        super(error);
        Objects.requireNonNull(error, "The causing error must not be null");
    }

    @Override // java.lang.Throwable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Error getCause() {
        return (Error) super.getCause();
    }
}
