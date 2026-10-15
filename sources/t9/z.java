package t9;

import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: Reflection.java */
/* JADX INFO: loaded from: classes2.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a0 f35553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final z9.b[] f35554b;

    static {
        a0 a0Var = null;
        try {
            a0Var = (a0) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (a0Var == null) {
            a0Var = new a0();
        }
        f35553a = a0Var;
        f35554b = new z9.b[0];
    }

    public static z9.d a(i iVar) {
        return f35553a.a(iVar);
    }

    public static z9.b b(Class cls) {
        return f35553a.b(cls);
    }

    public static z9.c c(Class cls) {
        return f35553a.c(cls, BuildConfig.FLAVOR);
    }

    public static z9.e d(p pVar) {
        return f35553a.d(pVar);
    }

    public static z9.f e(r rVar) {
        return f35553a.e(rVar);
    }

    public static z9.g f(t tVar) {
        return f35553a.f(tVar);
    }

    public static String g(h hVar) {
        return f35553a.g(hVar);
    }

    public static String h(n nVar) {
        return f35553a.h(nVar);
    }
}
