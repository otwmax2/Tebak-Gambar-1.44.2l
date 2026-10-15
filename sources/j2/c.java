package j2;

import b2.l;
import java.util.Objects;

/* JADX INFO: compiled from: SimpleResource.java */
/* JADX INFO: loaded from: classes.dex */
public class c<T> implements l<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final T f30659a;

    public c(T t10) {
        Objects.requireNonNull(t10, "Data must not be null");
        this.f30659a = t10;
    }

    @Override // b2.l
    public void b() {
    }

    @Override // b2.l
    public final int c() {
        return 1;
    }

    @Override // b2.l
    public final T get() {
        return this.f30659a;
    }
}
