package t9;

import java.util.List;

/* JADX INFO: compiled from: TypeIntrinsics.java */
/* JADX INFO: loaded from: classes2.dex */
public class c0 {
    public static List a(Object obj) {
        if (obj instanceof u9.a) {
            h(obj, "kotlin.collections.MutableList");
        }
        return c(obj);
    }

    public static Object b(Object obj, int i10) {
        if (obj != null && !e(obj, i10)) {
            h(obj, "kotlin.jvm.functions.Function" + i10);
        }
        return obj;
    }

    public static List c(Object obj) {
        try {
            return (List) obj;
        } catch (ClassCastException e10) {
            throw g(e10);
        }
    }

    public static int d(Object obj) {
        if (obj instanceof h) {
            return ((h) obj).getArity();
        }
        if (obj instanceof s9.a) {
            return 0;
        }
        if (obj instanceof s9.l) {
            return 1;
        }
        if (obj instanceof s9.p) {
            return 2;
        }
        if (obj instanceof s9.q) {
            return 3;
        }
        if (obj instanceof s9.r) {
            return 4;
        }
        if (obj instanceof s9.s) {
            return 5;
        }
        if (obj instanceof s9.t) {
            return 6;
        }
        if (obj instanceof s9.u) {
            return 7;
        }
        if (obj instanceof s9.v) {
            return 8;
        }
        if (obj instanceof s9.w) {
            return 9;
        }
        if (obj instanceof s9.b) {
            return 10;
        }
        if (obj instanceof s9.c) {
            return 11;
        }
        if (obj instanceof s9.d) {
            return 12;
        }
        if (obj instanceof s9.e) {
            return 13;
        }
        if (obj instanceof s9.f) {
            return 14;
        }
        if (obj instanceof s9.g) {
            return 15;
        }
        if (obj instanceof s9.h) {
            return 16;
        }
        if (obj instanceof s9.i) {
            return 17;
        }
        if (obj instanceof s9.j) {
            return 18;
        }
        if (obj instanceof s9.k) {
            return 19;
        }
        if (obj instanceof s9.m) {
            return 20;
        }
        if (obj instanceof s9.n) {
            return 21;
        }
        return obj instanceof s9.o ? 22 : -1;
    }

    public static boolean e(Object obj, int i10) {
        return (obj instanceof h9.c) && d(obj) == i10;
    }

    private static <T extends Throwable> T f(T t10) {
        return (T) m.j(t10, c0.class.getName());
    }

    public static ClassCastException g(ClassCastException classCastException) {
        throw ((ClassCastException) f(classCastException));
    }

    public static void h(Object obj, String str) {
        i((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
    }

    public static void i(String str) {
        throw g(new ClassCastException(str));
    }
}
