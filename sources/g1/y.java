package g1;

import android.animation.LayoutTransition;
import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: ViewGroupUtilsApi14.java */
/* JADX INFO: loaded from: classes.dex */
class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static LayoutTransition f29783a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f29784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f29785c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f29786d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f29787e;

    /* JADX INFO: compiled from: ViewGroupUtilsApi14.java */
    static class a extends LayoutTransition {
        a() {
        }

        @Override // android.animation.LayoutTransition
        public boolean isChangingLayout() {
            return true;
        }
    }

    private static void a(LayoutTransition layoutTransition) {
        if (!f29787e) {
            try {
                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f29786d = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            }
            f29787e = true;
        }
        Method method = f29786d;
        if (method != null) {
            try {
                method.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException unused2) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            } catch (InvocationTargetException unused3) {
                Log.i("ViewGroupUtilsApi14", "Failed to invoke cancel method by reflection");
            }
        }
    }

    static void b(ViewGroup viewGroup, boolean z10) {
        boolean z11 = false;
        if (f29783a == null) {
            a aVar = new a();
            f29783a = aVar;
            aVar.setAnimator(2, null);
            f29783a.setAnimator(0, null);
            f29783a.setAnimator(1, null);
            f29783a.setAnimator(3, null);
            f29783a.setAnimator(4, null);
        }
        if (z10) {
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null) {
                if (layoutTransition.isRunning()) {
                    a(layoutTransition);
                }
                if (layoutTransition != f29783a) {
                    viewGroup.setTag(j.f29716d, layoutTransition);
                }
            }
            viewGroup.setLayoutTransition(f29783a);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!f29785c) {
            try {
                Field declaredField = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                f29784b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewGroupUtilsApi14", "Failed to access mLayoutSuppressed field by reflection");
            }
            f29785c = true;
        }
        Field field = f29784b;
        if (field != null) {
            try {
                boolean z12 = field.getBoolean(viewGroup);
                if (z12) {
                    try {
                        f29784b.setBoolean(viewGroup, false);
                    } catch (IllegalAccessException unused2) {
                        z11 = z12;
                        Log.i("ViewGroupUtilsApi14", "Failed to get mLayoutSuppressed field by reflection");
                    }
                }
                z11 = z12;
            } catch (IllegalAccessException unused3) {
            }
        }
        if (z11) {
            viewGroup.requestLayout();
        }
        int i10 = j.f29716d;
        LayoutTransition layoutTransition2 = (LayoutTransition) viewGroup.getTag(i10);
        if (layoutTransition2 != null) {
            viewGroup.setTag(i10, null);
            viewGroup.setLayoutTransition(layoutTransition2);
        }
    }
}
