package j3;

import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_Event.java */
/* JADX INFO: loaded from: classes.dex */
final class a<T> extends c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Integer f30661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final T f30662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f30663c;

    a(Integer num, T t10, d dVar) {
        this.f30661a = num;
        Objects.requireNonNull(t10, "Null payload");
        this.f30662b = t10;
        Objects.requireNonNull(dVar, "Null priority");
        this.f30663c = dVar;
    }

    @Override // j3.c
    public Integer a() {
        return this.f30661a;
    }

    @Override // j3.c
    public T b() {
        return this.f30662b;
    }

    @Override // j3.c
    public d c() {
        return this.f30663c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        Integer num = this.f30661a;
        if (num != null ? num.equals(cVar.a()) : cVar.a() == null) {
            if (this.f30662b.equals(cVar.b()) && this.f30663c.equals(cVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.f30661a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f30662b.hashCode()) * 1000003) ^ this.f30663c.hashCode();
    }

    public String toString() {
        return "Event{code=" + this.f30661a + ", payload=" + this.f30662b + ", priority=" + this.f30663c + "}";
    }
}
