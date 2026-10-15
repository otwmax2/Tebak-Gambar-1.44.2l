package okio;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: SegmentPool.java */
/* JADX INFO: loaded from: classes.dex */
final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    static q f33402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static long f33403b;

    private r() {
    }

    static void a(q qVar) {
        if (qVar.f33400f != null || qVar.f33401g != null) {
            throw new IllegalArgumentException();
        }
        if (qVar.f33398d) {
            return;
        }
        synchronized (r.class) {
            long j10 = f33403b;
            if (j10 + 8192 > 65536) {
                return;
            }
            f33403b = j10 + 8192;
            qVar.f33400f = f33402a;
            qVar.f33397c = 0;
            qVar.f33396b = 0;
            f33402a = qVar;
        }
    }

    static q b() {
        synchronized (r.class) {
            q qVar = f33402a;
            if (qVar == null) {
                return new q();
            }
            f33402a = qVar.f33400f;
            qVar.f33400f = null;
            f33403b -= 8192;
            return qVar;
        }
    }
}
