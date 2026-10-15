package kotlinx.coroutines.internal;

import h9.n;

/* JADX INFO: compiled from: FastServiceLoader.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f31754a;

    static {
        Object objA;
        try {
            n.a aVar = h9.n.f30295o;
            objA = h9.n.a(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            n.a aVar2 = h9.n.f30295o;
            objA = h9.n.a(h9.o.a(th));
        }
        f31754a = h9.n.d(objA);
    }

    public static final boolean a() {
        return f31754a;
    }
}
