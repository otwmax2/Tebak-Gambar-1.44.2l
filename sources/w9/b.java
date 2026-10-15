package w9;

import java.util.Random;
import t9.m;

/* JADX INFO: compiled from: PlatformRandom.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b extends w9.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final a f36035q = new a();

    /* JADX INFO: compiled from: PlatformRandom.kt */
    public static final class a extends ThreadLocal<Random> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Random initialValue() {
            return new Random();
        }
    }

    @Override // w9.a
    public Random f() {
        Random random = this.f36035q.get();
        m.d(random, "implStorage.get()");
        return random;
    }
}
