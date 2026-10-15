package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CheckedTextView;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: CheckedTextViewCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: compiled from: CheckedTextViewCompat.java */
    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Field f2585a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static boolean f2586b;

        static Drawable a(CheckedTextView checkedTextView) {
            if (!f2586b) {
                try {
                    Field declaredField = CheckedTextView.class.getDeclaredField("mCheckMarkDrawable");
                    f2585a = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e10) {
                    Log.i("CheckedTextViewCompat", "Failed to retrieve mCheckMarkDrawable field", e10);
                }
                f2586b = true;
            }
            Field field = f2585a;
            if (field != null) {
                try {
                    return (Drawable) field.get(checkedTextView);
                } catch (IllegalAccessException e11) {
                    Log.i("CheckedTextViewCompat", "Failed to get check mark drawable via reflection", e11);
                    f2585a = null;
                }
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: CheckedTextViewCompat.java */
    private static class b {
        static Drawable a(CheckedTextView checkedTextView) {
            return checkedTextView.getCheckMarkDrawable();
        }
    }

    /* JADX INFO: renamed from: androidx.core.widget.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CheckedTextViewCompat.java */
    private static class C0044c {
        static void a(CheckedTextView checkedTextView, ColorStateList colorStateList) {
            checkedTextView.setCheckMarkTintList(colorStateList);
        }

        static void b(CheckedTextView checkedTextView, PorterDuff.Mode mode) {
            checkedTextView.setCheckMarkTintMode(mode);
        }
    }

    public static Drawable a(CheckedTextView checkedTextView) {
        return Build.VERSION.SDK_INT >= 16 ? b.a(checkedTextView) : a.a(checkedTextView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(CheckedTextView checkedTextView, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            C0044c.a(checkedTextView, colorStateList);
        } else if (checkedTextView instanceof l) {
            ((l) checkedTextView).setSupportCheckMarkTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(CheckedTextView checkedTextView, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            C0044c.b(checkedTextView, mode);
        } else if (checkedTextView instanceof l) {
            ((l) checkedTextView).setSupportCheckMarkTintMode(mode);
        }
    }
}
