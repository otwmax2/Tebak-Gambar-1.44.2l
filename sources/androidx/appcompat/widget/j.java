package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.widget.m0;

/* JADX INFO: compiled from: AppCompatDrawableManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final PorterDuff.Mode f1076b = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static j f1077c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m0 f1078a;

    /* JADX INFO: compiled from: AppCompatDrawableManager.java */
    class a implements m0.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int[] f1079a = {f.e.R, f.e.P, f.e.f29027a};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f1080b = {f.e.f29041o, f.e.B, f.e.f29046t, f.e.f29042p, f.e.f29043q, f.e.f29045s, f.e.f29044r};

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int[] f1081c = {f.e.O, f.e.Q, f.e.f29037k, f.e.K, f.e.L, f.e.M, f.e.N};

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int[] f1082d = {f.e.f29049w, f.e.f29035i, f.e.f29048v};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int[] f1083e = {f.e.J, f.e.S};

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int[] f1084f = {f.e.f29029c, f.e.f29033g, f.e.f29030d, f.e.f29034h};

        a() {
        }

        private boolean f(int[] iArr, int i10) {
            for (int i11 : iArr) {
                if (i11 == i10) {
                    return true;
                }
            }
            return false;
        }

        private ColorStateList g(Context context) {
            return h(context, 0);
        }

        private ColorStateList h(Context context, int i10) {
            int iC = r0.c(context, f.a.f28999w);
            return new ColorStateList(new int[][]{r0.f1173b, r0.f1176e, r0.f1174c, r0.f1180i}, new int[]{r0.b(context, f.a.f28997u), androidx.core.graphics.a.c(iC, i10), androidx.core.graphics.a.c(iC, i10), i10});
        }

        private ColorStateList i(Context context) {
            return h(context, r0.c(context, f.a.f28996t));
        }

        private ColorStateList j(Context context) {
            return h(context, r0.c(context, f.a.f28997u));
        }

        private ColorStateList k(Context context) {
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            int i10 = f.a.f29001y;
            ColorStateList colorStateListE = r0.e(context, i10);
            if (colorStateListE == null || !colorStateListE.isStateful()) {
                iArr[0] = r0.f1173b;
                iArr2[0] = r0.b(context, i10);
                iArr[1] = r0.f1177f;
                iArr2[1] = r0.c(context, f.a.f28998v);
                iArr[2] = r0.f1180i;
                iArr2[2] = r0.c(context, i10);
            } else {
                iArr[0] = r0.f1173b;
                iArr2[0] = colorStateListE.getColorForState(iArr[0], 0);
                iArr[1] = r0.f1177f;
                iArr2[1] = r0.c(context, f.a.f28998v);
                iArr[2] = r0.f1180i;
                iArr2[2] = colorStateListE.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }

        private LayerDrawable l(m0 m0Var, Context context, int i10) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i10);
            Drawable drawableJ = m0Var.j(context, f.e.F);
            Drawable drawableJ2 = m0Var.j(context, f.e.G);
            if ((drawableJ instanceof BitmapDrawable) && drawableJ.getIntrinsicWidth() == dimensionPixelSize && drawableJ.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) drawableJ;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawableJ.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableJ.draw(canvas);
                bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((drawableJ2 instanceof BitmapDrawable) && drawableJ2.getIntrinsicWidth() == dimensionPixelSize && drawableJ2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) drawableJ2;
            } else {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                drawableJ2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableJ2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, R.id.background);
            layerDrawable.setId(1, R.id.secondaryProgress);
            layerDrawable.setId(2, R.id.progress);
            return layerDrawable;
        }

        private void m(Drawable drawable, int i10, PorterDuff.Mode mode) {
            if (f0.a(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = j.f1076b;
            }
            drawable.setColorFilter(j.e(i10, mode));
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0061 A[RETURN] */
        @Override // androidx.appcompat.widget.m0.f
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean a(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
            /*
                r6 = this;
                android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.j.a()
                int[] r1 = r6.f1079a
                boolean r1 = r6.f(r1, r8)
                r2 = 16842801(0x1010031, float:2.3693695E-38)
                r3 = -1
                r4 = 0
                r5 = 1
                if (r1 == 0) goto L17
                int r2 = f.a.f29000x
            L14:
                r8 = -1
            L15:
                r1 = 1
                goto L44
            L17:
                int[] r1 = r6.f1081c
                boolean r1 = r6.f(r1, r8)
                if (r1 == 0) goto L22
                int r2 = f.a.f28998v
                goto L14
            L22:
                int[] r1 = r6.f1082d
                boolean r1 = r6.f(r1, r8)
                if (r1 == 0) goto L2d
                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                goto L14
            L2d:
                int r1 = f.e.f29047u
                if (r8 != r1) goto L3c
                r2 = 16842800(0x1010030, float:2.3693693E-38)
                r8 = 1109603123(0x42233333, float:40.8)
                int r8 = java.lang.Math.round(r8)
                goto L15
            L3c:
                int r1 = f.e.f29038l
                if (r8 != r1) goto L41
                goto L14
            L41:
                r8 = -1
                r1 = 0
                r2 = 0
            L44:
                if (r1 == 0) goto L61
                boolean r1 = androidx.appcompat.widget.f0.a(r9)
                if (r1 == 0) goto L50
                android.graphics.drawable.Drawable r9 = r9.mutate()
            L50:
                int r7 = androidx.appcompat.widget.r0.c(r7, r2)
                android.graphics.PorterDuffColorFilter r7 = androidx.appcompat.widget.j.e(r7, r0)
                r9.setColorFilter(r7)
                if (r8 == r3) goto L60
                r9.setAlpha(r8)
            L60:
                return r5
            L61:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.j.a.a(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
        }

        @Override // androidx.appcompat.widget.m0.f
        public PorterDuff.Mode b(int i10) {
            if (i10 == f.e.H) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }

        @Override // androidx.appcompat.widget.m0.f
        public Drawable c(m0 m0Var, Context context, int i10) {
            if (i10 == f.e.f29036j) {
                return new LayerDrawable(new Drawable[]{m0Var.j(context, f.e.f29035i), m0Var.j(context, f.e.f29037k)});
            }
            if (i10 == f.e.f29051y) {
                return l(m0Var, context, f.d.f29020i);
            }
            if (i10 == f.e.f29050x) {
                return l(m0Var, context, f.d.f29021j);
            }
            if (i10 == f.e.f29052z) {
                return l(m0Var, context, f.d.f29022k);
            }
            return null;
        }

        @Override // androidx.appcompat.widget.m0.f
        public ColorStateList d(Context context, int i10) {
            if (i10 == f.e.f29039m) {
                return g.a.a(context, f.c.f29008e);
            }
            if (i10 == f.e.I) {
                return g.a.a(context, f.c.f29011h);
            }
            if (i10 == f.e.H) {
                return k(context);
            }
            if (i10 == f.e.f29032f) {
                return j(context);
            }
            if (i10 == f.e.f29028b) {
                return g(context);
            }
            if (i10 == f.e.f29031e) {
                return i(context);
            }
            if (i10 == f.e.D || i10 == f.e.E) {
                return g.a.a(context, f.c.f29010g);
            }
            if (f(this.f1080b, i10)) {
                return r0.e(context, f.a.f29000x);
            }
            if (f(this.f1083e, i10)) {
                return g.a.a(context, f.c.f29007d);
            }
            if (f(this.f1084f, i10)) {
                return g.a.a(context, f.c.f29006c);
            }
            if (i10 == f.e.A) {
                return g.a.a(context, f.c.f29009f);
            }
            return null;
        }

        @Override // androidx.appcompat.widget.m0.f
        public boolean e(Context context, int i10, Drawable drawable) {
            if (i10 == f.e.C) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(R.id.background);
                int i11 = f.a.f29000x;
                m(drawableFindDrawableByLayerId, r0.c(context, i11), j.f1076b);
                m(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), r0.c(context, i11), j.f1076b);
                m(layerDrawable.findDrawableByLayerId(R.id.progress), r0.c(context, f.a.f28998v), j.f1076b);
                return true;
            }
            if (i10 != f.e.f29051y && i10 != f.e.f29050x && i10 != f.e.f29052z) {
                return false;
            }
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            m(layerDrawable2.findDrawableByLayerId(R.id.background), r0.b(context, f.a.f29000x), j.f1076b);
            Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress);
            int i12 = f.a.f28998v;
            m(drawableFindDrawableByLayerId2, r0.c(context, i12), j.f1076b);
            m(layerDrawable2.findDrawableByLayerId(R.id.progress), r0.c(context, i12), j.f1076b);
            return true;
        }
    }

    public static synchronized j b() {
        if (f1077c == null) {
            h();
        }
        return f1077c;
    }

    public static synchronized PorterDuffColorFilter e(int i10, PorterDuff.Mode mode) {
        return m0.l(i10, mode);
    }

    public static synchronized void h() {
        if (f1077c == null) {
            j jVar = new j();
            f1077c = jVar;
            jVar.f1078a = m0.h();
            f1077c.f1078a.u(new a());
        }
    }

    static void i(Drawable drawable, u0 u0Var, int[] iArr) {
        m0.w(drawable, u0Var, iArr);
    }

    public synchronized Drawable c(Context context, int i10) {
        return this.f1078a.j(context, i10);
    }

    synchronized Drawable d(Context context, int i10, boolean z10) {
        return this.f1078a.k(context, i10, z10);
    }

    synchronized ColorStateList f(Context context, int i10) {
        return this.f1078a.m(context, i10);
    }

    public synchronized void g(Context context) {
        this.f1078a.s(context);
    }
}
