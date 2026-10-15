package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.app.LocaleManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.LocaleList;
import android.util.Log;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.o;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: AppCompatDelegate.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static o.a f348o = new o.a(new o.b());

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static int f349p = -100;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static androidx.core.os.h f350q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static androidx.core.os.h f351r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static Boolean f352s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static boolean f353t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static Object f354u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static Context f355v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final o.b<WeakReference<g>> f356w = new o.b<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final Object f357x = new Object();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final Object f358y = new Object();

    /* JADX INFO: compiled from: AppCompatDelegate.java */
    static class a {
        static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegate.java */
    static class b {
        static LocaleList a(Object obj) {
            return ((LocaleManager) obj).getApplicationLocales();
        }

        static void b(Object obj, LocaleList localeList) {
            ((LocaleManager) obj).setApplicationLocales(localeList);
        }
    }

    g() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B(Context context) {
        o.c(context);
        f353t = true;
    }

    static void K(g gVar) {
        synchronized (f357x) {
            L(gVar);
        }
    }

    private static void L(g gVar) {
        synchronized (f357x) {
            Iterator<WeakReference<g>> it = f356w.iterator();
            while (it.hasNext()) {
                g gVar2 = it.next().get();
                if (gVar2 == gVar || gVar2 == null) {
                    it.remove();
                }
            }
        }
    }

    static void N(Context context) {
        f355v = context;
    }

    public static void O(androidx.core.os.h hVar) {
        Objects.requireNonNull(hVar);
        if (androidx.core.os.a.d()) {
            Object objS = s();
            if (objS != null) {
                b.b(objS, a.a(hVar.h()));
                return;
            }
            return;
        }
        if (hVar.equals(f350q)) {
            return;
        }
        synchronized (f357x) {
            f350q = hVar;
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void U(final Context context) {
        if (z(context)) {
            if (androidx.core.os.a.d()) {
                if (f353t) {
                    return;
                }
                f348o.execute(new Runnable() { // from class: androidx.appcompat.app.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.B(context);
                    }
                });
                return;
            }
            synchronized (f358y) {
                androidx.core.os.h hVar = f350q;
                if (hVar == null) {
                    if (f351r == null) {
                        f351r = androidx.core.os.h.c(o.b(context));
                    }
                    if (f351r.f()) {
                    } else {
                        f350q = f351r;
                    }
                } else if (!hVar.equals(f351r)) {
                    androidx.core.os.h hVar2 = f350q;
                    f351r = hVar2;
                    o.a(context, hVar2.h());
                }
            }
        }
    }

    static void e(g gVar) {
        synchronized (f357x) {
            L(gVar);
            f356w.add(new WeakReference<>(gVar));
        }
    }

    private static void h() {
        Iterator<WeakReference<g>> it = f356w.iterator();
        while (it.hasNext()) {
            g gVar = it.next().get();
            if (gVar != null) {
                gVar.g();
            }
        }
    }

    public static g l(Activity activity, d dVar) {
        return new h(activity, dVar);
    }

    public static g m(Dialog dialog, d dVar) {
        return new h(dialog, dVar);
    }

    public static androidx.core.os.h o() {
        if (androidx.core.os.a.d()) {
            Object objS = s();
            if (objS != null) {
                return androidx.core.os.h.i(b.a(objS));
            }
        } else {
            androidx.core.os.h hVar = f350q;
            if (hVar != null) {
                return hVar;
            }
        }
        return androidx.core.os.h.e();
    }

    public static int q() {
        return f349p;
    }

    static Object s() {
        Context contextP;
        Object obj = f354u;
        if (obj != null) {
            return obj;
        }
        if (f355v == null) {
            Iterator<WeakReference<g>> it = f356w.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                g gVar = it.next().get();
                if (gVar != null && (contextP = gVar.p()) != null) {
                    f355v = contextP;
                    break;
                }
            }
        }
        Context context = f355v;
        if (context != null) {
            f354u = context.getSystemService("locale");
        }
        return f354u;
    }

    static androidx.core.os.h u() {
        return f350q;
    }

    static androidx.core.os.h v() {
        return f351r;
    }

    static boolean z(Context context) {
        if (f352s == null) {
            try {
                Bundle bundle = m.a(context).metaData;
                if (bundle != null) {
                    f352s = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f352s = Boolean.FALSE;
            }
        }
        return f352s.booleanValue();
    }

    public abstract void C(Configuration configuration);

    public abstract void D(Bundle bundle);

    public abstract void E();

    public abstract void F(Bundle bundle);

    public abstract void G();

    public abstract void H(Bundle bundle);

    public abstract void I();

    public abstract void J();

    public abstract boolean M(int i10);

    public abstract void P(int i10);

    public abstract void Q(View view);

    public abstract void R(View view, ViewGroup.LayoutParams layoutParams);

    public void S(int i10) {
    }

    public abstract void T(CharSequence charSequence);

    public abstract void f(View view, ViewGroup.LayoutParams layoutParams);

    boolean g() {
        return false;
    }

    void i(final Context context) {
        f348o.execute(new Runnable() { // from class: androidx.appcompat.app.f
            @Override // java.lang.Runnable
            public final void run() {
                g.U(context);
            }
        });
    }

    @Deprecated
    public void j(Context context) {
    }

    public Context k(Context context) {
        j(context);
        return context;
    }

    public abstract <T extends View> T n(int i10);

    public Context p() {
        return null;
    }

    public int r() {
        return -100;
    }

    public abstract MenuInflater t();

    public abstract androidx.appcompat.app.a w();

    public abstract void x();

    public abstract void y();
}
