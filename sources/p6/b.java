package p6;

/* JADX INFO: compiled from: SystemClock.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f33520a;

    private b() {
    }

    public static b b() {
        if (f33520a == null) {
            f33520a = new b();
        }
        return f33520a;
    }

    @Override // p6.a
    public long a() {
        return System.currentTimeMillis();
    }
}
