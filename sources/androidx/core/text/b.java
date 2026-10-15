package androidx.core.text;

import android.annotation.SuppressLint;
import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* JADX INFO: compiled from: ICUCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f2353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f2354b;

    /* JADX INFO: compiled from: ICUCompat.java */
    static class a {
        static String a(Locale locale) {
            return locale.getScript();
        }
    }

    /* JADX INFO: renamed from: androidx.core.text.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ICUCompat.java */
    static class C0035b {
        static ULocale a(Object obj) {
            return ULocale.addLikelySubtags((ULocale) obj);
        }

        static ULocale b(Locale locale) {
            return ULocale.forLocale(locale);
        }

        static String c(Object obj) {
            return ((ULocale) obj).getScript();
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            if (i10 < 24) {
                try {
                    f2354b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
                    return;
                } catch (Exception e10) {
                    throw new IllegalStateException(e10);
                }
            }
            return;
        }
        try {
            Class<?> cls = Class.forName("libcore.icu.ICU");
            f2353a = cls.getMethod("getScript", String.class);
            f2354b = cls.getMethod("addLikelySubtags", String.class);
        } catch (Exception e11) {
            f2353a = null;
            f2354b = null;
            Log.w("ICUCompat", e11);
        }
    }

    @SuppressLint({"BanUncheckedReflection"})
    private static String a(Locale locale) {
        String string = locale.toString();
        try {
            Method method = f2354b;
            if (method != null) {
                return (String) method.invoke(null, string);
            }
        } catch (IllegalAccessException e10) {
            Log.w("ICUCompat", e10);
        } catch (InvocationTargetException e11) {
            Log.w("ICUCompat", e11);
        }
        return string;
    }

    @SuppressLint({"BanUncheckedReflection"})
    private static String b(String str) {
        try {
            Method method = f2353a;
            if (method != null) {
                return (String) method.invoke(null, str);
            }
        } catch (IllegalAccessException e10) {
            Log.w("ICUCompat", e10);
        } catch (InvocationTargetException e11) {
            Log.w("ICUCompat", e11);
        }
        return null;
    }

    public static String c(Locale locale) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 24) {
            return C0035b.c(C0035b.a(C0035b.b(locale)));
        }
        if (i10 < 21) {
            String strA = a(locale);
            if (strA != null) {
                return b(strA);
            }
            return null;
        }
        try {
            return a.a((Locale) f2354b.invoke(null, locale));
        } catch (IllegalAccessException e10) {
            Log.w("ICUCompat", e10);
            return a.a(locale);
        } catch (InvocationTargetException e11) {
            Log.w("ICUCompat", e11);
            return a.a(locale);
        }
    }
}
