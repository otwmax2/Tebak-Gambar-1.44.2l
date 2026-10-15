package l4;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.util.Log;
import androidx.core.content.res.h;
import y3.k;

/* JADX INFO: compiled from: TextAppearance.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ColorStateList f31970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ColorStateList f31971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ColorStateList f31972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ColorStateList f31973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f31974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f31975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f31976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f31977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f31978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f31979j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f31980k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f31981l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f31982m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f31983n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f31984o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f31985p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Typeface f31986q;

    /* JADX INFO: compiled from: TextAppearance.java */
    class a extends h.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f31987a;

        a(f fVar) {
            this.f31987a = fVar;
        }

        @Override // androidx.core.content.res.h.f
        /* JADX INFO: renamed from: h */
        public void f(int i10) {
            d.this.f31985p = true;
            this.f31987a.a(i10);
        }

        @Override // androidx.core.content.res.h.f
        /* JADX INFO: renamed from: i */
        public void g(Typeface typeface) {
            d dVar = d.this;
            dVar.f31986q = Typeface.create(typeface, dVar.f31975f);
            d.this.f31985p = true;
            this.f31987a.b(d.this.f31986q, false);
        }
    }

    /* JADX INFO: compiled from: TextAppearance.java */
    class b extends f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TextPaint f31989a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f f31990b;

        b(TextPaint textPaint, f fVar) {
            this.f31989a = textPaint;
            this.f31990b = fVar;
        }

        @Override // l4.f
        public void a(int i10) {
            this.f31990b.a(i10);
        }

        @Override // l4.f
        public void b(Typeface typeface, boolean z10) {
            d.this.l(this.f31989a, typeface);
            this.f31990b.b(typeface, z10);
        }
    }

    public d(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, k.f36811e4);
        this.f31983n = typedArrayObtainStyledAttributes.getDimension(k.f36818f4, 0.0f);
        this.f31970a = c.a(context, typedArrayObtainStyledAttributes, k.f36839i4);
        this.f31971b = c.a(context, typedArrayObtainStyledAttributes, k.f36846j4);
        this.f31972c = c.a(context, typedArrayObtainStyledAttributes, k.f36853k4);
        this.f31975f = typedArrayObtainStyledAttributes.getInt(k.f36832h4, 0);
        this.f31976g = typedArrayObtainStyledAttributes.getInt(k.f36825g4, 1);
        int iE = c.e(typedArrayObtainStyledAttributes, k.f36895q4, k.f36888p4);
        this.f31984o = typedArrayObtainStyledAttributes.getResourceId(iE, 0);
        this.f31974e = typedArrayObtainStyledAttributes.getString(iE);
        this.f31977h = typedArrayObtainStyledAttributes.getBoolean(k.f36902r4, false);
        this.f31973d = c.a(context, typedArrayObtainStyledAttributes, k.f36860l4);
        this.f31978i = typedArrayObtainStyledAttributes.getFloat(k.f36867m4, 0.0f);
        this.f31979j = typedArrayObtainStyledAttributes.getFloat(k.f36874n4, 0.0f);
        this.f31980k = typedArrayObtainStyledAttributes.getFloat(k.f36881o4, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT < 21) {
            this.f31981l = false;
            this.f31982m = 0.0f;
            return;
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i10, k.P2);
        int i11 = k.Q2;
        this.f31981l = typedArrayObtainStyledAttributes2.hasValue(i11);
        this.f31982m = typedArrayObtainStyledAttributes2.getFloat(i11, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    private void d() {
        String str;
        if (this.f31986q == null && (str = this.f31974e) != null) {
            this.f31986q = Typeface.create(str, this.f31975f);
        }
        if (this.f31986q == null) {
            int i10 = this.f31976g;
            if (i10 == 1) {
                this.f31986q = Typeface.SANS_SERIF;
            } else if (i10 == 2) {
                this.f31986q = Typeface.SERIF;
            } else if (i10 != 3) {
                this.f31986q = Typeface.DEFAULT;
            } else {
                this.f31986q = Typeface.MONOSPACE;
            }
            this.f31986q = Typeface.create(this.f31986q, this.f31975f);
        }
    }

    private boolean i(Context context) {
        return e.a();
    }

    public Typeface e() {
        d();
        return this.f31986q;
    }

    public Typeface f(Context context) {
        if (this.f31985p) {
            return this.f31986q;
        }
        if (!context.isRestricted()) {
            try {
                Typeface typefaceF = h.f(context, this.f31984o);
                this.f31986q = typefaceF;
                if (typefaceF != null) {
                    this.f31986q = Typeface.create(typefaceF, this.f31975f);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e10) {
                Log.d("TextAppearance", "Error loading font " + this.f31974e, e10);
            }
        }
        d();
        this.f31985p = true;
        return this.f31986q;
    }

    public void g(Context context, TextPaint textPaint, f fVar) {
        l(textPaint, e());
        h(context, new b(textPaint, fVar));
    }

    public void h(Context context, f fVar) {
        if (i(context)) {
            f(context);
        } else {
            d();
        }
        int i10 = this.f31984o;
        if (i10 == 0) {
            this.f31985p = true;
        }
        if (this.f31985p) {
            fVar.b(this.f31986q, true);
            return;
        }
        try {
            h.h(context, i10, new a(fVar), null);
        } catch (Resources.NotFoundException unused) {
            this.f31985p = true;
            fVar.a(1);
        } catch (Exception e10) {
            Log.d("TextAppearance", "Error loading font " + this.f31974e, e10);
            this.f31985p = true;
            fVar.a(-3);
        }
    }

    public void j(Context context, TextPaint textPaint, f fVar) {
        k(context, textPaint, fVar);
        ColorStateList colorStateList = this.f31970a;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f10 = this.f31980k;
        float f11 = this.f31978i;
        float f12 = this.f31979j;
        ColorStateList colorStateList2 = this.f31973d;
        textPaint.setShadowLayer(f10, f11, f12, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void k(Context context, TextPaint textPaint, f fVar) {
        if (i(context)) {
            l(textPaint, f(context));
        } else {
            g(context, textPaint, fVar);
        }
    }

    public void l(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f31975f;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f31983n);
        if (Build.VERSION.SDK_INT < 21 || !this.f31981l) {
            return;
        }
        textPaint.setLetterSpacing(this.f31982m);
    }
}
