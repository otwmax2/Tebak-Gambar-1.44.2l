package q5;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: OnDemandCounter.java */
/* JADX INFO: loaded from: classes2.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f33896a = new AtomicInteger();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f33897b = new AtomicInteger();

    public void a() {
        this.f33897b.getAndIncrement();
    }

    public void b() {
        this.f33896a.getAndIncrement();
    }

    public void c() {
        this.f33897b.set(0);
    }
}
