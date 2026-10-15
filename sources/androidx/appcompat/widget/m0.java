package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: ResourceManagerInternal.java */
/* JADX INFO: loaded from: classes.dex */
public final class m0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static m0 f1114i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakHashMap<Context, o.h<ColorStateList>> f1116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o.g<String, e> f1117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o.h<String> f1118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WeakHashMap<Context, o.d<WeakReference<Drawable.ConstantState>>> f1119d = new WeakHashMap<>(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TypedValue f1120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1121f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f f1122g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final PorterDuff.Mode f1113h = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final c f1115j = new c(6);

    /* JADX INFO: compiled from: ResourceManagerInternal.java */
    static class a implements e {
        a() {
        }

        @Override // androidx.appcompat.widget.m0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return h.a.m(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e10) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e10);
                return null;
            }
        }
    }

    /* JADX INFO: compiled from: ResourceManagerInternal.java */
    private static class b implements e {
        b() {
        }

        @Override // androidx.appcompat.widget.m0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.vectordrawable.graphics.drawable.b.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e10) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e10);
                return null;
            }
        }
    }

    /* JADX INFO: compiled from: ResourceManagerInternal.java */
    private static class c extends o.e<Integer, PorterDuffColorFilter> {
        public c(int i10) {
            super(i10);
        }

        private static int j(int i10, PorterDuff.Mode mode) {
            return ((i10 + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter k(int i10, PorterDuff.Mode mode) {
            return c(Integer.valueOf(j(i10, mode)));
        }

        PorterDuffColorFilter l(int i10, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return d(Integer.valueOf(j(i10, mode)), porterDuffColorFilter);
        }
    }

    /* JADX INFO: compiled from: ResourceManagerInternal.java */
    static class d implements e {
        d() {
        }

        @Override // androidx.appcompat.widget.m0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) d.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    if (Build.VERSION.SDK_INT >= 21) {
                        i.c.c(drawable, context.getResources(), xmlPullParser, attributeSet, theme);
                    } else {
                        drawable.inflate(context.getResources(), xmlPullParser, attributeSet);
                    }
                    return drawable;
                } catch (Exception e10) {
                    Log.e("DrawableDelegate", "Exception while inflating <drawable>", e10);
                }
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: ResourceManagerInternal.java */
    private interface e {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* JADX INFO: compiled from: ResourceManagerInternal.java */
    public interface f {
        boolean a(Context context, int i10, Drawable drawable);

        PorterDuff.Mode b(int i10);

        Drawable c(m0 m0Var, Context context, int i10);

        ColorStateList d(Context context, int i10);

        boolean e(Context context, int i10, Drawable drawable);
    }

    /* JADX INFO: compiled from: ResourceManagerInternal.java */
    private static class g implements e {
        g() {
        }

        @Override // androidx.appcompat.widget.m0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.vectordrawable.graphics.drawable.h.c(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e10) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e10);
                return null;
            }
        }
    }

    private void a(String str, e eVar) {
        if (this.f1117b == null) {
            this.f1117b = new o.g<>();
        }
        this.f1117b.put(str, eVar);
    }

    private synchronized boolean b(Context context, long j10, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        o.d<WeakReference<Drawable.ConstantState>> dVar = this.f1119d.get(context);
        if (dVar == null) {
            dVar = new o.d<>();
            this.f1119d.put(context, dVar);
        }
        dVar.k(j10, new WeakReference<>(constantState));
        return true;
    }

    private void c(Context context, int i10, ColorStateList colorStateList) {
        if (this.f1116a == null) {
            this.f1116a = new WeakHashMap<>();
        }
        o.h<ColorStateList> hVar = this.f1116a.get(context);
        if (hVar == null) {
            hVar = new o.h<>();
            this.f1116a.put(context, hVar);
        }
        hVar.a(i10, colorStateList);
    }

    private void d(Context context) {
        if (this.f1121f) {
            return;
        }
        this.f1121f = true;
        Drawable drawableJ = j(context, i.d.f30302a);
        if (drawableJ == null || !q(drawableJ)) {
            this.f1121f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private static long e(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    private Drawable f(Context context, int i10) {
        if (this.f1120e == null) {
            this.f1120e = new TypedValue();
        }
        TypedValue typedValue = this.f1120e;
        context.getResources().getValue(i10, typedValue, true);
        long jE = e(typedValue);
        Drawable drawableI = i(context, jE);
        if (drawableI != null) {
            return drawableI;
        }
        f fVar = this.f1122g;
        Drawable drawableC = fVar == null ? null : fVar.c(this, context, i10);
        if (drawableC != null) {
            drawableC.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, jE, drawableC);
        }
        return drawableC;
    }

    private static PorterDuffColorFilter g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return l(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized m0 h() {
        if (f1114i == null) {
            m0 m0Var = new m0();
            f1114i = m0Var;
            p(m0Var);
        }
        return f1114i;
    }

    private synchronized Drawable i(Context context, long j10) {
        o.d<WeakReference<Drawable.ConstantState>> dVar = this.f1119d.get(context);
        if (dVar == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReferenceG = dVar.g(j10);
        if (weakReferenceG != null) {
            Drawable.ConstantState constantState = weakReferenceG.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            dVar.l(j10);
        }
        return null;
    }

    public static synchronized PorterDuffColorFilter l(int i10, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterK;
        c cVar = f1115j;
        porterDuffColorFilterK = cVar.k(i10, mode);
        if (porterDuffColorFilterK == null) {
            porterDuffColorFilterK = new PorterDuffColorFilter(i10, mode);
            cVar.l(i10, mode, porterDuffColorFilterK);
        }
        return porterDuffColorFilterK;
    }

    private ColorStateList n(Context context, int i10) {
        o.h<ColorStateList> hVar;
        WeakHashMap<Context, o.h<ColorStateList>> weakHashMap = this.f1116a;
        if (weakHashMap == null || (hVar = weakHashMap.get(context)) == null) {
            return null;
        }
        return hVar.g(i10);
    }

    private static void p(m0 m0Var) {
        if (Build.VERSION.SDK_INT < 24) {
            m0Var.a("vector", new g());
            m0Var.a("animated-vector", new b());
            m0Var.a("animated-selector", new a());
            m0Var.a("drawable", new d());
        }
    }

    private static boolean q(Drawable drawable) {
        return (drawable instanceof androidx.vectordrawable.graphics.drawable.h) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    private Drawable r(Context context, int i10) {
        int next;
        o.g<String, e> gVar = this.f1117b;
        if (gVar == null || gVar.isEmpty()) {
            return null;
        }
        o.h<String> hVar = this.f1118c;
        if (hVar != null) {
            String strG = hVar.g(i10);
            if ("appcompat_skip_skip".equals(strG) || (strG != null && this.f1117b.get(strG) == null)) {
                return null;
            }
        } else {
            this.f1118c = new o.h<>();
        }
        if (this.f1120e == null) {
            this.f1120e = new TypedValue();
        }
        TypedValue typedValue = this.f1120e;
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        long jE = e(typedValue);
        Drawable drawableI = i(context, jE);
        if (drawableI != null) {
            return drawableI;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i10);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.f1118c.a(i10, name);
                e eVar = this.f1117b.get(name);
                if (eVar != null) {
                    drawableI = eVar.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableI != null) {
                    drawableI.setChangingConfigurations(typedValue.changingConfigurations);
                    b(context, jE, drawableI);
                }
            } catch (Exception e10) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e10);
            }
        }
        if (drawableI == null) {
            this.f1118c.a(i10, "appcompat_skip_skip");
        }
        return drawableI;
    }

    private Drawable v(Context context, int i10, boolean z10, Drawable drawable) {
        ColorStateList colorStateListM = m(context, i10);
        if (colorStateListM == null) {
            f fVar = this.f1122g;
            if ((fVar == null || !fVar.e(context, i10, drawable)) && !x(context, i10, drawable) && z10) {
                return null;
            }
            return drawable;
        }
        if (f0.a(drawable)) {
            drawable = drawable.mutate();
        }
        Drawable drawableR = androidx.core.graphics.drawable.a.r(drawable);
        androidx.core.graphics.drawable.a.o(drawableR, colorStateListM);
        PorterDuff.Mode modeO = o(i10);
        if (modeO == null) {
            return drawableR;
        }
        androidx.core.graphics.drawable.a.p(drawableR, modeO);
        return drawableR;
    }

    static void w(Drawable drawable, u0 u0Var, int[] iArr) {
        if (f0.a(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        boolean z10 = u0Var.f1197d;
        if (z10 || u0Var.f1196c) {
            drawable.setColorFilter(g(z10 ? u0Var.f1194a : null, u0Var.f1196c ? u0Var.f1195b : f1113h, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    public synchronized Drawable j(Context context, int i10) {
        return k(context, i10, false);
    }

    synchronized Drawable k(Context context, int i10, boolean z10) {
        Drawable drawableR;
        d(context);
        drawableR = r(context, i10);
        if (drawableR == null) {
            drawableR = f(context, i10);
        }
        if (drawableR == null) {
            drawableR = androidx.core.content.a.f(context, i10);
        }
        if (drawableR != null) {
            drawableR = v(context, i10, z10, drawableR);
        }
        if (drawableR != null) {
            f0.b(drawableR);
        }
        return drawableR;
    }

    synchronized ColorStateList m(Context context, int i10) {
        ColorStateList colorStateListN;
        colorStateListN = n(context, i10);
        if (colorStateListN == null) {
            f fVar = this.f1122g;
            colorStateListN = fVar == null ? null : fVar.d(context, i10);
            if (colorStateListN != null) {
                c(context, i10, colorStateListN);
            }
        }
        return colorStateListN;
    }

    PorterDuff.Mode o(int i10) {
        f fVar = this.f1122g;
        if (fVar == null) {
            return null;
        }
        return fVar.b(i10);
    }

    public synchronized void s(Context context) {
        o.d<WeakReference<Drawable.ConstantState>> dVar = this.f1119d.get(context);
        if (dVar != null) {
            dVar.b();
        }
    }

    synchronized Drawable t(Context context, e1 e1Var, int i10) {
        Drawable drawableR = r(context, i10);
        if (drawableR == null) {
            drawableR = e1Var.a(i10);
        }
        if (drawableR == null) {
            return null;
        }
        return v(context, i10, false, drawableR);
    }

    public synchronized void u(f fVar) {
        this.f1122g = fVar;
    }

    boolean x(Context context, int i10, Drawable drawable) {
        f fVar = this.f1122g;
        return fVar != null && fVar.a(context, i10, drawable);
    }
}
