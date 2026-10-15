package h9;

import java.io.Serializable;

/* JADX INFO: compiled from: Lazy.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class d<T> implements h<T>, Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final T f30285o;

    public d(T t10) {
        this.f30285o = t10;
    }

    @Override // h9.h
    public T getValue() {
        return this.f30285o;
    }

    public String toString() {
        return String.valueOf(getValue());
    }
}
