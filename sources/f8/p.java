package f8;

/* JADX INFO: compiled from: MemoryPolicy.java */
/* JADX INFO: loaded from: classes2.dex */
public enum p {
    NO_CACHE(1),
    NO_STORE(2);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final int f29406o;

    p(int i10) {
        this.f29406o = i10;
    }

    static boolean c(int i10) {
        return (i10 & NO_CACHE.f29406o) == 0;
    }

    static boolean e(int i10) {
        return (i10 & NO_STORE.f29406o) == 0;
    }
}
