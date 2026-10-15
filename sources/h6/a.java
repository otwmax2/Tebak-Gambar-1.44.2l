package h6;

/* JADX INFO: compiled from: Event.java */
/* JADX INFO: loaded from: classes2.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<T> f30248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final T f30249b;

    public T a() {
        return this.f30249b;
    }

    public Class<T> b() {
        return this.f30248a;
    }

    public String toString() {
        return String.format("Event{type: %s, payload: %s}", this.f30248a, this.f30249b);
    }
}
