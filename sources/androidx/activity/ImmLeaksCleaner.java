package androidx.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.j;
import androidx.lifecycle.l;
import androidx.lifecycle.n;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
final class ImmLeaksCleaner implements l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Field f198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Field f199d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Field f200e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f201a;

    ImmLeaksCleaner(Activity activity) {
        this.f201a = activity;
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    private static void h() {
        try {
            f197b = 2;
            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
            f199d = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
            f200e = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
            f198c = declaredField3;
            declaredField3.setAccessible(true);
            f197b = 1;
        } catch (NoSuchFieldException unused) {
        }
    }

    @Override // androidx.lifecycle.l
    public void c(n nVar, j.b bVar) {
        if (bVar != j.b.ON_DESTROY) {
            return;
        }
        if (f197b == 0) {
            h();
        }
        if (f197b == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f201a.getSystemService("input_method");
            try {
                Object obj = f198c.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f199d.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                f200e.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused) {
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (ClassCastException unused2) {
                    } catch (IllegalAccessException unused3) {
                    }
                }
            } catch (IllegalAccessException unused4) {
            }
        }
    }
}
