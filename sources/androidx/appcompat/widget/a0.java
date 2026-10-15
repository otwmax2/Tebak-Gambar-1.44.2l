package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.core.content.res.h;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: compiled from: AppCompatTextHelper.java */
/* JADX INFO: loaded from: classes.dex */
class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private u0 f940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private u0 f941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private u0 f942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private u0 f943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private u0 f944f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private u0 f945g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private u0 f946h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b0 f947i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f948j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f949k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Typeface f950l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f951m;

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    class a extends h.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f952a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f953b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WeakReference f954c;

        a(int i10, int i11, WeakReference weakReference) {
            this.f952a = i10;
            this.f953b = i11;
            this.f954c = weakReference;
        }

        @Override // androidx.core.content.res.h.f
        /* JADX INFO: renamed from: h */
        public void f(int i10) {
        }

        @Override // androidx.core.content.res.h.f
        /* JADX INFO: renamed from: i */
        public void g(Typeface typeface) {
            int i10;
            if (Build.VERSION.SDK_INT >= 28 && (i10 = this.f952a) != -1) {
                typeface = g.a(typeface, i10, (this.f953b & 2) != 0);
            }
            a0.this.n(this.f954c, typeface);
        }
    }

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ TextView f956o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Typeface f957p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ int f958q;

        b(TextView textView, Typeface typeface, int i10) {
            this.f956o = textView;
            this.f957p = typeface;
            this.f958q = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f956o.setTypeface(this.f957p, this.f958q);
        }
    }

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    static class c {
        static Drawable[] a(TextView textView) {
            return textView.getCompoundDrawablesRelative();
        }

        static void b(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }

        static void c(TextView textView, Locale locale) {
            textView.setTextLocale(locale);
        }
    }

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    static class d {
        static Locale a(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    static class e {
        static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }

        static void b(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    static class f {
        static int a(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        static void b(TextView textView, int i10, int i11, int i12, int i13) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
        }

        static void c(TextView textView, int[] iArr, int i10) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
        }

        static boolean d(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    /* JADX INFO: compiled from: AppCompatTextHelper.java */
    static class g {
        static Typeface a(Typeface typeface, int i10, boolean z10) {
            return Typeface.create(typeface, i10, z10);
        }
    }

    a0(TextView textView) {
        this.f939a = textView;
        this.f947i = new b0(textView);
    }

    private void B(int i10, float f10) {
        this.f947i.w(i10, f10);
    }

    private void C(Context context, w0 w0Var) {
        String strO;
        this.f948j = w0Var.k(f.j.H2, this.f948j);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            int iK = w0Var.k(f.j.M2, -1);
            this.f949k = iK;
            if (iK != -1) {
                this.f948j = (this.f948j & 2) | 0;
            }
        }
        int i11 = f.j.L2;
        if (!w0Var.s(i11) && !w0Var.s(f.j.N2)) {
            int i12 = f.j.G2;
            if (w0Var.s(i12)) {
                this.f951m = false;
                int iK2 = w0Var.k(i12, 1);
                if (iK2 == 1) {
                    this.f950l = Typeface.SANS_SERIF;
                    return;
                } else if (iK2 == 2) {
                    this.f950l = Typeface.SERIF;
                    return;
                } else {
                    if (iK2 != 3) {
                        return;
                    }
                    this.f950l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f950l = null;
        int i13 = f.j.N2;
        if (w0Var.s(i13)) {
            i11 = i13;
        }
        int i14 = this.f949k;
        int i15 = this.f948j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceJ = w0Var.j(i11, this.f948j, new a(i14, i15, new WeakReference(this.f939a)));
                if (typefaceJ != null) {
                    if (i10 < 28 || this.f949k == -1) {
                        this.f950l = typefaceJ;
                    } else {
                        this.f950l = g.a(Typeface.create(typefaceJ, 0), this.f949k, (this.f948j & 2) != 0);
                    }
                }
                this.f951m = this.f950l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f950l != null || (strO = w0Var.o(i11)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f949k == -1) {
            this.f950l = Typeface.create(strO, this.f948j);
        } else {
            this.f950l = g.a(Typeface.create(strO, 0), this.f949k, (this.f948j & 2) != 0);
        }
    }

    private void a(Drawable drawable, u0 u0Var) {
        if (drawable == null || u0Var == null) {
            return;
        }
        j.i(drawable, u0Var, this.f939a.getDrawableState());
    }

    private static u0 d(Context context, j jVar, int i10) {
        ColorStateList colorStateListF = jVar.f(context, i10);
        if (colorStateListF == null) {
            return null;
        }
        u0 u0Var = new u0();
        u0Var.f1197d = true;
        u0Var.f1194a = colorStateListF;
        return u0Var;
    }

    private void y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] drawableArrA = c.a(this.f939a);
            TextView textView = this.f939a;
            if (drawable5 == null) {
                drawable5 = drawableArrA[0];
            }
            if (drawable2 == null) {
                drawable2 = drawableArrA[1];
            }
            if (drawable6 == null) {
                drawable6 = drawableArrA[2];
            }
            if (drawable4 == null) {
                drawable4 = drawableArrA[3];
            }
            c.b(textView, drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        if (i10 >= 17) {
            Drawable[] drawableArrA2 = c.a(this.f939a);
            if (drawableArrA2[0] != null || drawableArrA2[2] != null) {
                TextView textView2 = this.f939a;
                Drawable drawable7 = drawableArrA2[0];
                if (drawable2 == null) {
                    drawable2 = drawableArrA2[1];
                }
                Drawable drawable8 = drawableArrA2[2];
                if (drawable4 == null) {
                    drawable4 = drawableArrA2[3];
                }
                c.b(textView2, drawable7, drawable2, drawable8, drawable4);
                return;
            }
        }
        Drawable[] compoundDrawables = this.f939a.getCompoundDrawables();
        TextView textView3 = this.f939a;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    private void z() {
        u0 u0Var = this.f946h;
        this.f940b = u0Var;
        this.f941c = u0Var;
        this.f942d = u0Var;
        this.f943e = u0Var;
        this.f944f = u0Var;
        this.f945g = u0Var;
    }

    void A(int i10, float f10) {
        if (androidx.core.widget.b.f2584a || l()) {
            return;
        }
        B(i10, f10);
    }

    void b() {
        if (this.f940b != null || this.f941c != null || this.f942d != null || this.f943e != null) {
            Drawable[] compoundDrawables = this.f939a.getCompoundDrawables();
            a(compoundDrawables[0], this.f940b);
            a(compoundDrawables[1], this.f941c);
            a(compoundDrawables[2], this.f942d);
            a(compoundDrawables[3], this.f943e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f944f == null && this.f945g == null) {
                return;
            }
            Drawable[] drawableArrA = c.a(this.f939a);
            a(drawableArrA[0], this.f944f);
            a(drawableArrA[2], this.f945g);
        }
    }

    void c() {
        this.f947i.b();
    }

    int e() {
        return this.f947i.h();
    }

    int f() {
        return this.f947i.i();
    }

    int g() {
        return this.f947i.j();
    }

    int[] h() {
        return this.f947i.k();
    }

    int i() {
        return this.f947i.l();
    }

    ColorStateList j() {
        u0 u0Var = this.f946h;
        if (u0Var != null) {
            return u0Var.f1194a;
        }
        return null;
    }

    PorterDuff.Mode k() {
        u0 u0Var = this.f946h;
        if (u0Var != null) {
            return u0Var.f1195b;
        }
        return null;
    }

    boolean l() {
        return this.f947i.q();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01a6  */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void m(android.util.AttributeSet r24, int r25) {
        /*
            Method dump skipped, instruction units count: 792
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.a0.m(android.util.AttributeSet, int):void");
    }

    void n(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.f951m) {
            this.f950l = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                if (androidx.core.view.a0.T(textView)) {
                    textView.post(new b(textView, typeface, this.f948j));
                } else {
                    textView.setTypeface(typeface, this.f948j);
                }
            }
        }
    }

    void o(boolean z10, int i10, int i11, int i12, int i13) {
        if (androidx.core.widget.b.f2584a) {
            return;
        }
        c();
    }

    void p() {
        b();
    }

    void q(Context context, int i10) {
        String strO;
        ColorStateList colorStateListC;
        ColorStateList colorStateListC2;
        ColorStateList colorStateListC3;
        w0 w0VarT = w0.t(context, i10, f.j.E2);
        int i11 = f.j.P2;
        if (w0VarT.s(i11)) {
            s(w0VarT.a(i11, false));
        }
        int i12 = Build.VERSION.SDK_INT;
        if (i12 < 23) {
            int i13 = f.j.I2;
            if (w0VarT.s(i13) && (colorStateListC3 = w0VarT.c(i13)) != null) {
                this.f939a.setTextColor(colorStateListC3);
            }
            int i14 = f.j.K2;
            if (w0VarT.s(i14) && (colorStateListC2 = w0VarT.c(i14)) != null) {
                this.f939a.setLinkTextColor(colorStateListC2);
            }
            int i15 = f.j.J2;
            if (w0VarT.s(i15) && (colorStateListC = w0VarT.c(i15)) != null) {
                this.f939a.setHintTextColor(colorStateListC);
            }
        }
        int i16 = f.j.F2;
        if (w0VarT.s(i16) && w0VarT.f(i16, -1) == 0) {
            this.f939a.setTextSize(0, 0.0f);
        }
        C(context, w0VarT);
        if (i12 >= 26) {
            int i17 = f.j.O2;
            if (w0VarT.s(i17) && (strO = w0VarT.o(i17)) != null) {
                f.d(this.f939a, strO);
            }
        }
        w0VarT.w();
        Typeface typeface = this.f950l;
        if (typeface != null) {
            this.f939a.setTypeface(typeface, this.f948j);
        }
    }

    void r(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        z.a.f(editorInfo, textView.getText());
    }

    void s(boolean z10) {
        this.f939a.setAllCaps(z10);
    }

    void t(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        this.f947i.s(i10, i11, i12, i13);
    }

    void u(int[] iArr, int i10) throws IllegalArgumentException {
        this.f947i.t(iArr, i10);
    }

    void v(int i10) {
        this.f947i.u(i10);
    }

    void w(ColorStateList colorStateList) {
        if (this.f946h == null) {
            this.f946h = new u0();
        }
        u0 u0Var = this.f946h;
        u0Var.f1194a = colorStateList;
        u0Var.f1197d = colorStateList != null;
        z();
    }

    void x(PorterDuff.Mode mode) {
        if (this.f946h == null) {
            this.f946h = new u0();
        }
        u0 u0Var = this.f946h;
        u0Var.f1195b = mode;
        u0Var.f1196c = mode != null;
        z();
    }
}
