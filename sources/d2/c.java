package d2;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: DiskCacheWriteLocker.java */
/* JADX INFO: loaded from: classes.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<z1.c, b> f28604a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final C0143c f28605b = new C0143c();

    /* JADX INFO: compiled from: DiskCacheWriteLocker.java */
    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Lock f28606a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f28607b;

        private b() {
            this.f28606a = new ReentrantLock();
        }
    }

    /* JADX INFO: renamed from: d2.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DiskCacheWriteLocker.java */
    private static class C0143c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Queue<b> f28608a;

        private C0143c() {
            this.f28608a = new ArrayDeque();
        }

        b a() {
            b bVarPoll;
            synchronized (this.f28608a) {
                bVarPoll = this.f28608a.poll();
            }
            return bVarPoll == null ? new b() : bVarPoll;
        }

        void b(b bVar) {
            synchronized (this.f28608a) {
                if (this.f28608a.size() < 10) {
                    this.f28608a.offer(bVar);
                }
            }
        }
    }

    c() {
    }

    void a(z1.c cVar) {
        b bVarA;
        synchronized (this) {
            bVarA = this.f28604a.get(cVar);
            if (bVarA == null) {
                bVarA = this.f28605b.a();
                this.f28604a.put(cVar, bVarA);
            }
            bVarA.f28607b++;
        }
        bVarA.f28606a.lock();
    }

    void b(z1.c cVar) {
        b bVar;
        int i10;
        synchronized (this) {
            bVar = this.f28604a.get(cVar);
            if (bVar != null && (i10 = bVar.f28607b) > 0) {
                int i11 = i10 - 1;
                bVar.f28607b = i11;
                if (i11 == 0) {
                    b bVarRemove = this.f28604a.remove(cVar);
                    if (!bVarRemove.equals(bVar)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + bVar + ", but actually removed: " + bVarRemove + ", key: " + cVar);
                    }
                    this.f28605b.b(bVarRemove);
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Cannot release a lock that is not held, key: ");
            sb.append(cVar);
            sb.append(", interestedThreads: ");
            sb.append(bVar == null ? 0 : bVar.f28607b);
            throw new IllegalArgumentException(sb.toString());
        }
        bVar.f28606a.unlock();
    }
}
