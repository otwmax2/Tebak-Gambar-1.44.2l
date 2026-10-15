package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: compiled from: TintContextWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public class t0 extends ContextWrapper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f1189c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ArrayList<WeakReference<t0>> f1190d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f1191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources.Theme f1192b;

    private t0(Context context) {
        super(context);
        if (!e1.c()) {
            this.f1191a = new v0(this, context.getResources());
            this.f1192b = null;
            return;
        }
        e1 e1Var = new e1(this, context.getResources());
        this.f1191a = e1Var;
        Resources.Theme themeNewTheme = e1Var.newTheme();
        this.f1192b = themeNewTheme;
        themeNewTheme.setTo(context.getTheme());
    }

    private static boolean a(Context context) {
        if ((context instanceof t0) || (context.getResources() instanceof v0) || (context.getResources() instanceof e1)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 21 || e1.c();
    }

    public static Context b(Context context) {
        if (!a(context)) {
            return context;
        }
        synchronized (f1189c) {
            ArrayList<WeakReference<t0>> arrayList = f1190d;
            if (arrayList == null) {
                f1190d = new ArrayList<>();
            } else {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    WeakReference<t0> weakReference = f1190d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f1190d.remove(size);
                    }
                }
                for (int size2 = f1190d.size() - 1; size2 >= 0; size2--) {
                    WeakReference<t0> weakReference2 = f1190d.get(size2);
                    t0 t0Var = weakReference2 != null ? weakReference2.get() : null;
                    if (t0Var != null && t0Var.getBaseContext() == context) {
                        return t0Var;
                    }
                }
            }
            t0 t0Var2 = new t0(context);
            f1190d.add(new WeakReference<>(t0Var2));
            return t0Var2;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f1191a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f1191a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f1192b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        Resources.Theme theme = this.f1192b;
        if (theme == null) {
            super.setTheme(i10);
        } else {
            theme.applyStyle(i10, true);
        }
    }
}
