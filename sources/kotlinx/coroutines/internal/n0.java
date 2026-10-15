package kotlinx.coroutines.internal;

import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: ExceptionsConstructor.kt */
/* JADX INFO: loaded from: classes2.dex */
final class n0 extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n0 f31764a = new n0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ReentrantReadWriteLock f31765b = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final WeakHashMap<Class<? extends Throwable>, s9.l<Throwable, Throwable>> f31766c = new WeakHashMap<>();

    private n0() {
    }

    @Override // kotlinx.coroutines.internal.g
    public s9.l<Throwable, Throwable> a(Class<? extends Throwable> cls) {
        ReentrantReadWriteLock reentrantReadWriteLock = f31765b;
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        lock.lock();
        try {
            s9.l<Throwable, Throwable> lVar = f31766c.get(cls);
            if (lVar != null) {
                return lVar;
            }
            ReentrantReadWriteLock.ReadLock lock2 = reentrantReadWriteLock.readLock();
            int i10 = 0;
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i11 = 0; i11 < readHoldCount; i11++) {
                lock2.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                WeakHashMap<Class<? extends Throwable>, s9.l<Throwable, Throwable>> weakHashMap = f31766c;
                s9.l<Throwable, Throwable> lVar2 = weakHashMap.get(cls);
                if (lVar2 != null) {
                    return lVar2;
                }
                s9.l<Throwable, Throwable> lVarB = j.b(cls);
                weakHashMap.put(cls, lVarB);
                while (i10 < readHoldCount) {
                    lock2.lock();
                    i10++;
                }
                writeLock.unlock();
                return lVarB;
            } finally {
                while (i10 < readHoldCount) {
                    lock2.lock();
                    i10++;
                }
                writeLock.unlock();
            }
        } finally {
            lock.unlock();
        }
    }
}
