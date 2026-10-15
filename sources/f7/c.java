package f7;

import com.google.gson.m;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: UnsafeReflectionAccessor.java */
/* JADX INFO: loaded from: classes2.dex */
final class c extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Class f29279d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f29280b = d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Field f29281c = c();

    c() {
    }

    private static Field c() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (Exception unused) {
            return null;
        }
    }

    private static Object d() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f29279d = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // f7.b
    public void b(AccessibleObject accessibleObject) {
        if (e(accessibleObject)) {
            return;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e10) {
            throw new m("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e10);
        }
    }

    boolean e(AccessibleObject accessibleObject) {
        if (this.f29280b != null && this.f29281c != null) {
            try {
                f29279d.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f29280b, accessibleObject, Long.valueOf(((Long) f29279d.getMethod("objectFieldOffset", Field.class).invoke(this.f29280b, this.f29281c)).longValue()), Boolean.TRUE);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
