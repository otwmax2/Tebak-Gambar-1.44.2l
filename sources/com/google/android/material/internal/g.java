package com.google.android.material.internal;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;
import java.lang.reflect.Constructor;

/* JADX INFO: compiled from: StaticLayoutBuilderCompat.java */
/* JADX INFO: loaded from: classes2.dex */
final class g {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f25543k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static Constructor<StaticLayout> f25544l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static Object f25545m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CharSequence f25546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextPaint f25547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f25548c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f25550e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f25554i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f25549d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Layout.Alignment f25551f = Layout.Alignment.ALIGN_NORMAL;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f25552g = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f25553h = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextUtils.TruncateAt f25555j = null;

    /* JADX INFO: compiled from: StaticLayoutBuilderCompat.java */
    static class a extends Exception {
        a(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }

    private g(CharSequence charSequence, TextPaint textPaint, int i10) {
        this.f25546a = charSequence;
        this.f25547b = textPaint;
        this.f25548c = i10;
        this.f25550e = charSequence.length();
    }

    private void b() throws a {
        Class<?> cls;
        if (f25543k) {
            return;
        }
        try {
            boolean z10 = this.f25554i && Build.VERSION.SDK_INT >= 23;
            if (Build.VERSION.SDK_INT >= 18) {
                cls = TextDirectionHeuristic.class;
                f25545m = z10 ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            } else {
                ClassLoader classLoader = g.class.getClassLoader();
                String str = this.f25554i ? "RTL" : "LTR";
                Class<?> clsLoadClass = classLoader.loadClass("android.text.TextDirectionHeuristic");
                Class<?> clsLoadClass2 = classLoader.loadClass("android.text.TextDirectionHeuristics");
                f25545m = clsLoadClass2.getField(str).get(clsLoadClass2);
                cls = clsLoadClass;
            }
            Class cls2 = Integer.TYPE;
            Class cls3 = Float.TYPE;
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls2, cls2, TextPaint.class, cls2, Layout.Alignment.class, cls, cls3, cls3, Boolean.TYPE, TextUtils.TruncateAt.class, cls2, cls2);
            f25544l = declaredConstructor;
            declaredConstructor.setAccessible(true);
            f25543k = true;
        } catch (Exception e10) {
            throw new a(e10);
        }
    }

    public static g c(CharSequence charSequence, TextPaint textPaint, int i10) {
        return new g(charSequence, textPaint, i10);
    }

    public StaticLayout a() throws a {
        if (this.f25546a == null) {
            this.f25546a = BuildConfig.FLAVOR;
        }
        int iMax = Math.max(0, this.f25548c);
        CharSequence charSequenceEllipsize = this.f25546a;
        if (this.f25552g == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f25547b, iMax, this.f25555j);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.f25550e);
        this.f25550e = iMin;
        if (Build.VERSION.SDK_INT < 23) {
            b();
            try {
                return (StaticLayout) ((Constructor) androidx.core.util.h.f(f25544l)).newInstance(charSequenceEllipsize, Integer.valueOf(this.f25549d), Integer.valueOf(this.f25550e), this.f25547b, Integer.valueOf(iMax), this.f25551f, androidx.core.util.h.f(f25545m), Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.f25553h), null, Integer.valueOf(iMax), Integer.valueOf(this.f25552g));
            } catch (Exception e10) {
                throw new a(e10);
            }
        }
        if (this.f25554i) {
            this.f25551f = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, this.f25549d, iMin, this.f25547b, iMax);
        builderObtain.setAlignment(this.f25551f);
        builderObtain.setIncludePad(this.f25553h);
        builderObtain.setTextDirection(this.f25554i ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f25555j;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.f25552g);
        return builderObtain.build();
    }

    public g d(Layout.Alignment alignment) {
        this.f25551f = alignment;
        return this;
    }

    public g e(TextUtils.TruncateAt truncateAt) {
        this.f25555j = truncateAt;
        return this;
    }

    public g f(boolean z10) {
        this.f25553h = z10;
        return this;
    }

    public g g(boolean z10) {
        this.f25554i = z10;
        return this;
    }

    public g h(int i10) {
        this.f25552g = i10;
        return this;
    }
}
