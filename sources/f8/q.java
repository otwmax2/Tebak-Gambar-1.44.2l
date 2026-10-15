package f8;

/* JADX INFO: compiled from: NetworkPolicy.java */
/* JADX INFO: loaded from: classes2.dex */
public enum q {
    NO_CACHE(1),
    NO_STORE(2),
    OFFLINE(4);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final int f29411o;

    q(int i10) {
        this.f29411o = i10;
    }

    public static boolean c(int i10) {
        return (i10 & OFFLINE.f29411o) != 0;
    }

    public static boolean e(int i10) {
        return (i10 & NO_CACHE.f29411o) == 0;
    }

    public static boolean f(int i10) {
        return (i10 & NO_STORE.f29411o) == 0;
    }
}
