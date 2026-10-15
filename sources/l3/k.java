package l3;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: ExecutionModule_ExecutorFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements n3.b<Executor> {

    /* JADX INFO: compiled from: ExecutionModule_ExecutorFactory.java */
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final k f31944a = new k();
    }

    public static k a() {
        return a.f31944a;
    }

    public static Executor b() {
        return (Executor) n3.d.c(j.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Executor get() {
        return b();
    }
}
