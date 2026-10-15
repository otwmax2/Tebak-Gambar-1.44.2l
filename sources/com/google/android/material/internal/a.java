package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.core.view.a0;
import com.google.android.material.internal.g;
import l4.a;

/* JADX INFO: compiled from: CollapsingTextHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final boolean f25500b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final Paint f25501c0;
    private boolean A;
    private Bitmap B;
    private Paint C;
    private float D;
    private float E;
    private int[] F;
    private boolean G;
    private final TextPaint H;
    private final TextPaint I;
    private TimeInterpolator J;
    private TimeInterpolator K;
    private float L;
    private float M;
    private float N;
    private ColorStateList O;
    private float P;
    private float Q;
    private float R;
    private ColorStateList S;
    private float T;
    private float U;
    private StaticLayout V;
    private float W;
    private float X;
    private float Y;
    private CharSequence Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f25502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f25504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f25505c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f25506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Rect f25507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RectF f25508f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ColorStateList f25513k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ColorStateList f25514l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f25515m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f25516n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f25517o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f25518p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f25519q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f25520r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Typeface f25521s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Typeface f25522t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Typeface f25523u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private l4.a f25524v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private l4.a f25525w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private CharSequence f25526x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private CharSequence f25527y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f25528z;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f25509g = 16;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f25510h = 16;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f25511i = 15.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f25512j = 15.0f;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private int f25503a0 = 1;

    /* JADX INFO: renamed from: com.google.android.material.internal.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CollapsingTextHelper.java */
    class C0119a implements a.InterfaceC0200a {
        C0119a() {
        }

        @Override // l4.a.InterfaceC0200a
        public void a(Typeface typeface) {
            a.this.M(typeface);
        }
    }

    static {
        f25500b0 = Build.VERSION.SDK_INT < 18;
        f25501c0 = null;
    }

    public a(View view) {
        this.f25502a = view;
        TextPaint textPaint = new TextPaint(129);
        this.H = textPaint;
        this.I = new TextPaint(textPaint);
        this.f25507e = new Rect();
        this.f25506d = new Rect();
        this.f25508f = new RectF();
    }

    private boolean A() {
        return a0.E(this.f25502a) == 1;
    }

    private static float C(float f10, float f11, float f12, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f12 = timeInterpolator.getInterpolation(f12);
        }
        return z3.a.a(f10, f11, f12);
    }

    private static boolean F(Rect rect, int i10, int i11, int i12, int i13) {
        return rect.left == i10 && rect.top == i11 && rect.right == i12 && rect.bottom == i13;
    }

    private void J(float f10) {
        this.W = f10;
        a0.h0(this.f25502a);
    }

    private boolean N(Typeface typeface) {
        l4.a aVar = this.f25525w;
        if (aVar != null) {
            aVar.c();
        }
        if (this.f25521s == typeface) {
            return false;
        }
        this.f25521s = typeface;
        return true;
    }

    private void Q(float f10) {
        this.X = f10;
        a0.h0(this.f25502a);
    }

    private boolean U(Typeface typeface) {
        l4.a aVar = this.f25524v;
        if (aVar != null) {
            aVar.c();
        }
        if (this.f25522t == typeface) {
            return false;
        }
        this.f25522t = typeface;
        return true;
    }

    private void W(float f10) {
        g(f10);
        boolean z10 = f25500b0 && this.D != 1.0f;
        this.A = z10;
        if (z10) {
            l();
        }
        a0.h0(this.f25502a);
    }

    private static int a(int i10, int i11, float f10) {
        float f11 = 1.0f - f10;
        return Color.argb((int) ((Color.alpha(i10) * f11) + (Color.alpha(i11) * f10)), (int) ((Color.red(i10) * f11) + (Color.red(i11) * f10)), (int) ((Color.green(i10) * f11) + (Color.green(i11) * f10)), (int) ((Color.blue(i10) * f11) + (Color.blue(i11) * f10)));
    }

    private void b() {
        StaticLayout staticLayout;
        float f10 = this.E;
        g(this.f25512j);
        CharSequence charSequence = this.f25527y;
        if (charSequence != null && (staticLayout = this.V) != null) {
            this.Z = TextUtils.ellipsize(charSequence, this.H, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.Z;
        float fMeasureText = charSequence2 != null ? this.H.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
        int iB = androidx.core.view.e.b(this.f25510h, this.f25528z ? 1 : 0);
        int i10 = iB & 112;
        if (i10 == 48) {
            this.f25516n = this.f25507e.top;
        } else if (i10 != 80) {
            this.f25516n = this.f25507e.centerY() - ((this.H.descent() - this.H.ascent()) / 2.0f);
        } else {
            this.f25516n = this.f25507e.bottom + this.H.ascent();
        }
        int i11 = iB & 8388615;
        if (i11 == 1) {
            this.f25518p = this.f25507e.centerX() - (fMeasureText / 2.0f);
        } else if (i11 != 5) {
            this.f25518p = this.f25507e.left;
        } else {
            this.f25518p = this.f25507e.right - fMeasureText;
        }
        g(this.f25511i);
        float height = this.V != null ? r1.getHeight() : 0.0f;
        CharSequence charSequence3 = this.f25527y;
        float fMeasureText2 = charSequence3 != null ? this.H.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        StaticLayout staticLayout2 = this.V;
        if (staticLayout2 != null && this.f25503a0 > 1 && !this.f25528z) {
            fMeasureText2 = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.V;
        this.Y = staticLayout3 != null ? staticLayout3.getLineLeft(0) : 0.0f;
        int iB2 = androidx.core.view.e.b(this.f25509g, this.f25528z ? 1 : 0);
        int i12 = iB2 & 112;
        if (i12 == 48) {
            this.f25515m = this.f25506d.top;
        } else if (i12 != 80) {
            this.f25515m = this.f25506d.centerY() - (height / 2.0f);
        } else {
            this.f25515m = (this.f25506d.bottom - height) + this.H.descent();
        }
        int i13 = iB2 & 8388615;
        if (i13 == 1) {
            this.f25517o = this.f25506d.centerX() - (fMeasureText2 / 2.0f);
        } else if (i13 != 5) {
            this.f25517o = this.f25506d.left;
        } else {
            this.f25517o = this.f25506d.right - fMeasureText2;
        }
        h();
        W(f10);
    }

    private boolean c0() {
        return (this.f25503a0 <= 1 || this.f25528z || this.A) ? false : true;
    }

    private void d() {
        f(this.f25505c);
    }

    private boolean e(CharSequence charSequence) {
        return (A() ? androidx.core.text.e.f2371d : androidx.core.text.e.f2370c).a(charSequence, 0, charSequence.length());
    }

    private void f(float f10) {
        y(f10);
        this.f25519q = C(this.f25517o, this.f25518p, f10, this.J);
        this.f25520r = C(this.f25515m, this.f25516n, f10, this.J);
        W(C(this.f25511i, this.f25512j, f10, this.K));
        TimeInterpolator timeInterpolator = z3.a.f37200b;
        J(1.0f - C(0.0f, 1.0f, 1.0f - f10, timeInterpolator));
        Q(C(1.0f, 0.0f, f10, timeInterpolator));
        if (this.f25514l != this.f25513k) {
            this.H.setColor(a(t(), r(), f10));
        } else {
            this.H.setColor(r());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            float f11 = this.T;
            float f12 = this.U;
            if (f11 != f12) {
                this.H.setLetterSpacing(C(f12, f11, f10, timeInterpolator));
            } else {
                this.H.setLetterSpacing(f11);
            }
        }
        this.H.setShadowLayer(C(this.P, this.L, f10, null), C(this.Q, this.M, f10, null), C(this.R, this.N, f10, null), a(s(this.S), s(this.O), f10));
        a0.h0(this.f25502a);
    }

    private void g(float f10) {
        boolean z10;
        float f11;
        boolean z11;
        if (this.f25526x == null) {
            return;
        }
        float fWidth = this.f25507e.width();
        float fWidth2 = this.f25506d.width();
        if (z(f10, this.f25512j)) {
            f11 = this.f25512j;
            this.D = 1.0f;
            Typeface typeface = this.f25523u;
            Typeface typeface2 = this.f25521s;
            if (typeface != typeface2) {
                this.f25523u = typeface2;
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            float f12 = this.f25511i;
            Typeface typeface3 = this.f25523u;
            Typeface typeface4 = this.f25522t;
            if (typeface3 != typeface4) {
                this.f25523u = typeface4;
                z10 = true;
            } else {
                z10 = false;
            }
            if (z(f10, f12)) {
                this.D = 1.0f;
            } else {
                this.D = f10 / this.f25511i;
            }
            float f13 = this.f25512j / this.f25511i;
            fWidth = fWidth2 * f13 > fWidth ? Math.min(fWidth / f13, fWidth2) : fWidth2;
            f11 = f12;
            z11 = z10;
        }
        if (fWidth > 0.0f) {
            z11 = this.E != f11 || this.G || z11;
            this.E = f11;
            this.G = false;
        }
        if (this.f25527y == null || z11) {
            this.H.setTextSize(this.E);
            this.H.setTypeface(this.f25523u);
            this.H.setLinearText(this.D != 1.0f);
            this.f25528z = e(this.f25526x);
            StaticLayout staticLayoutI = i(c0() ? this.f25503a0 : 1, fWidth, this.f25528z);
            this.V = staticLayoutI;
            this.f25527y = staticLayoutI.getText();
        }
    }

    private void h() {
        Bitmap bitmap = this.B;
        if (bitmap != null) {
            bitmap.recycle();
            this.B = null;
        }
    }

    private StaticLayout i(int i10, float f10, boolean z10) {
        StaticLayout staticLayoutA;
        try {
            staticLayoutA = g.c(this.f25526x, this.H, (int) f10).e(TextUtils.TruncateAt.END).g(z10).d(Layout.Alignment.ALIGN_NORMAL).f(false).h(i10).a();
        } catch (g.a e10) {
            Log.e("CollapsingTextHelper", e10.getCause().getMessage(), e10);
            staticLayoutA = null;
        }
        return (StaticLayout) androidx.core.util.h.f(staticLayoutA);
    }

    private void k(Canvas canvas, float f10, float f11) {
        int alpha = this.H.getAlpha();
        canvas.translate(f10, f11);
        float f12 = alpha;
        this.H.setAlpha((int) (this.X * f12));
        this.V.draw(canvas);
        this.H.setAlpha((int) (this.W * f12));
        int lineBaseline = this.V.getLineBaseline(0);
        CharSequence charSequence = this.Z;
        float f13 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f13, this.H);
        String strTrim = this.Z.toString().trim();
        if (strTrim.endsWith("…")) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        String str = strTrim;
        this.H.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.V.getLineEnd(0), str.length()), 0.0f, f13, (Paint) this.H);
    }

    private void l() {
        if (this.B != null || this.f25506d.isEmpty() || TextUtils.isEmpty(this.f25527y)) {
            return;
        }
        f(0.0f);
        int width = this.V.getWidth();
        int height = this.V.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.B = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.V.draw(new Canvas(this.B));
        if (this.C == null) {
            this.C = new Paint(3);
        }
    }

    private float p(int i10, int i11) {
        return (i11 == 17 || (i11 & 7) == 1) ? (i10 / 2.0f) - (c() / 2.0f) : ((i11 & 8388613) == 8388613 || (i11 & 5) == 5) ? this.f25528z ? this.f25507e.left : this.f25507e.right - c() : this.f25528z ? this.f25507e.right - c() : this.f25507e.left;
    }

    private float q(RectF rectF, int i10, int i11) {
        return (i11 == 17 || (i11 & 7) == 1) ? (i10 / 2.0f) + (c() / 2.0f) : ((i11 & 8388613) == 8388613 || (i11 & 5) == 5) ? this.f25528z ? rectF.left + c() : this.f25507e.right : this.f25528z ? this.f25507e.right : rectF.left + c();
    }

    private int s(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.F;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    private int t() {
        return s(this.f25513k);
    }

    private void w(TextPaint textPaint) {
        textPaint.setTextSize(this.f25512j);
        textPaint.setTypeface(this.f25521s);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.T);
        }
    }

    private void x(TextPaint textPaint) {
        textPaint.setTextSize(this.f25511i);
        textPaint.setTypeface(this.f25522t);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.U);
        }
    }

    private void y(float f10) {
        this.f25508f.left = C(this.f25506d.left, this.f25507e.left, f10, this.J);
        this.f25508f.top = C(this.f25515m, this.f25516n, f10, this.J);
        this.f25508f.right = C(this.f25506d.right, this.f25507e.right, f10, this.J);
        this.f25508f.bottom = C(this.f25506d.bottom, this.f25507e.bottom, f10, this.J);
    }

    private static boolean z(float f10, float f11) {
        return Math.abs(f10 - f11) < 0.001f;
    }

    public final boolean B() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f25514l;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f25513k) != null && colorStateList.isStateful());
    }

    void D() {
        this.f25504b = this.f25507e.width() > 0 && this.f25507e.height() > 0 && this.f25506d.width() > 0 && this.f25506d.height() > 0;
    }

    public void E() {
        if (this.f25502a.getHeight() <= 0 || this.f25502a.getWidth() <= 0) {
            return;
        }
        b();
        d();
    }

    public void G(int i10, int i11, int i12, int i13) {
        if (F(this.f25507e, i10, i11, i12, i13)) {
            return;
        }
        this.f25507e.set(i10, i11, i12, i13);
        this.G = true;
        D();
    }

    public void H(Rect rect) {
        G(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void I(int i10) {
        l4.d dVar = new l4.d(this.f25502a.getContext(), i10);
        ColorStateList colorStateList = dVar.f31970a;
        if (colorStateList != null) {
            this.f25514l = colorStateList;
        }
        float f10 = dVar.f31983n;
        if (f10 != 0.0f) {
            this.f25512j = f10;
        }
        ColorStateList colorStateList2 = dVar.f31973d;
        if (colorStateList2 != null) {
            this.O = colorStateList2;
        }
        this.M = dVar.f31978i;
        this.N = dVar.f31979j;
        this.L = dVar.f31980k;
        this.T = dVar.f31982m;
        l4.a aVar = this.f25525w;
        if (aVar != null) {
            aVar.c();
        }
        this.f25525w = new l4.a(new C0119a(), dVar.e());
        dVar.h(this.f25502a.getContext(), this.f25525w);
        E();
    }

    public void K(ColorStateList colorStateList) {
        if (this.f25514l != colorStateList) {
            this.f25514l = colorStateList;
            E();
        }
    }

    public void L(int i10) {
        if (this.f25510h != i10) {
            this.f25510h = i10;
            E();
        }
    }

    public void M(Typeface typeface) {
        if (N(typeface)) {
            E();
        }
    }

    public void O(int i10, int i11, int i12, int i13) {
        if (F(this.f25506d, i10, i11, i12, i13)) {
            return;
        }
        this.f25506d.set(i10, i11, i12, i13);
        this.G = true;
        D();
    }

    public void P(Rect rect) {
        O(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void R(ColorStateList colorStateList) {
        if (this.f25513k != colorStateList) {
            this.f25513k = colorStateList;
            E();
        }
    }

    public void S(int i10) {
        if (this.f25509g != i10) {
            this.f25509g = i10;
            E();
        }
    }

    public void T(float f10) {
        if (this.f25511i != f10) {
            this.f25511i = f10;
            E();
        }
    }

    public void V(float f10) {
        float fA = y.a.a(f10, 0.0f, 1.0f);
        if (fA != this.f25505c) {
            this.f25505c = fA;
            d();
        }
    }

    public void X(TimeInterpolator timeInterpolator) {
        this.J = timeInterpolator;
        E();
    }

    public final boolean Y(int[] iArr) {
        this.F = iArr;
        if (!B()) {
            return false;
        }
        E();
        return true;
    }

    public void Z(CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.f25526x, charSequence)) {
            this.f25526x = charSequence;
            this.f25527y = null;
            h();
            E();
        }
    }

    public void a0(TimeInterpolator timeInterpolator) {
        this.K = timeInterpolator;
        E();
    }

    public void b0(Typeface typeface) {
        boolean zN = N(typeface);
        boolean zU = U(typeface);
        if (zN || zU) {
            E();
        }
    }

    public float c() {
        if (this.f25526x == null) {
            return 0.0f;
        }
        w(this.I);
        TextPaint textPaint = this.I;
        CharSequence charSequence = this.f25526x;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public void j(Canvas canvas) {
        int iSave = canvas.save();
        if (this.f25527y == null || !this.f25504b) {
            return;
        }
        boolean z10 = false;
        float lineLeft = (this.f25519q + this.V.getLineLeft(0)) - (this.Y * 2.0f);
        this.H.setTextSize(this.E);
        float f10 = this.f25519q;
        float f11 = this.f25520r;
        if (this.A && this.B != null) {
            z10 = true;
        }
        float f12 = this.D;
        if (f12 != 1.0f) {
            canvas.scale(f12, f12, f10, f11);
        }
        if (z10) {
            canvas.drawBitmap(this.B, f10, f11, this.C);
            canvas.restoreToCount(iSave);
            return;
        }
        if (c0()) {
            k(canvas, lineLeft, f11);
        } else {
            canvas.translate(f10, f11);
            this.V.draw(canvas);
        }
        canvas.restoreToCount(iSave);
    }

    public void m(RectF rectF, int i10, int i11) {
        this.f25528z = e(this.f25526x);
        rectF.left = p(i10, i11);
        rectF.top = this.f25507e.top;
        rectF.right = q(rectF, i10, i11);
        rectF.bottom = this.f25507e.top + o();
    }

    public ColorStateList n() {
        return this.f25514l;
    }

    public float o() {
        w(this.I);
        return -this.I.ascent();
    }

    public int r() {
        return s(this.f25514l);
    }

    public float u() {
        x(this.I);
        return -this.I.ascent();
    }

    public float v() {
        return this.f25505c;
    }
}
