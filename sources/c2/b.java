package c2;

import c2.h;
import java.util.Queue;

/* JADX INFO: compiled from: BaseKeyPool.java */
/* JADX INFO: loaded from: classes.dex */
abstract class b<T extends h> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue<T> f4818a = x2.h.d(20);

    b() {
    }

    protected abstract T a();

    protected T b() {
        T tPoll = this.f4818a.poll();
        return tPoll == null ? (T) a() : tPoll;
    }

    public void c(T t10) {
        if (this.f4818a.size() < 20) {
            this.f4818a.offer(t10);
        }
    }
}
