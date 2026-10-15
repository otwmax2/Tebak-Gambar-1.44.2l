package m9;

import java.lang.reflect.Method;
import t9.m;

/* JADX INFO: compiled from: DebugMetadata.kt */
/* JADX INFO: loaded from: classes2.dex */
final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f32224a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f32225b = new a(null, null, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f32226c;

    /* JADX INFO: compiled from: DebugMetadata.kt */
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Method f32227a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Method f32228b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Method f32229c;

        public a(Method method, Method method2, Method method3) {
            this.f32227a = method;
            this.f32228b = method2;
            this.f32229c = method3;
        }
    }

    private i() {
    }

    private final a a(m9.a aVar) {
        try {
            a aVar2 = new a(Class.class.getDeclaredMethod("getModule", new Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
            f32226c = aVar2;
            return aVar2;
        } catch (Exception unused) {
            a aVar3 = f32225b;
            f32226c = aVar3;
            return aVar3;
        }
    }

    public final String b(m9.a aVar) {
        m.e(aVar, "continuation");
        a aVarA = f32226c;
        if (aVarA == null) {
            aVarA = a(aVar);
        }
        if (aVarA == f32225b) {
            return null;
        }
        Method method = aVarA.f32227a;
        Object objInvoke = method != null ? method.invoke(aVar.getClass(), new Object[0]) : null;
        if (objInvoke == null) {
            return null;
        }
        Method method2 = aVarA.f32228b;
        Object objInvoke2 = method2 != null ? method2.invoke(objInvoke, new Object[0]) : null;
        if (objInvoke2 == null) {
            return null;
        }
        Method method3 = aVarA.f32229c;
        Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, new Object[0]) : null;
        if (objInvoke3 instanceof String) {
            return (String) objInvoke3;
        }
        return null;
    }
}
