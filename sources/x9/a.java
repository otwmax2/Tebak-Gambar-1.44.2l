package x9;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import t9.m;

/* JADX INFO: compiled from: PlatformThreadLocalRandom.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class a extends w9.a {
    @Override // w9.c
    public int e(int i10, int i11) {
        return ThreadLocalRandom.current().nextInt(i10, i11);
    }

    @Override // w9.a
    public Random f() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        m.d(threadLocalRandomCurrent, "current()");
        return threadLocalRandomCurrent;
    }
}
