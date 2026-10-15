package f7;

import c7.e;
import java.lang.reflect.AccessibleObject;

/* JADX INFO: compiled from: ReflectionAccessor.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f29278a;

    static {
        f29278a = e.c() < 9 ? new a() : new c();
    }

    public static b a() {
        return f29278a;
    }

    public abstract void b(AccessibleObject accessibleObject);
}
