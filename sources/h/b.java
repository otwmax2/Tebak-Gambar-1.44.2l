package h;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;

/* JADX INFO: compiled from: DrawableContainer.java */
/* JADX INFO: loaded from: classes.dex */
class b extends Drawable implements Drawable.Callback {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private d f30065o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Rect f30066p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Drawable f30067q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Drawable f30068r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f30070t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f30072v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Runnable f30073w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f30074x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f30075y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private c f30076z;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f30069s = 255;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f30071u = -1;

    /* JADX INFO: compiled from: DrawableContainer.java */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(true);
            b.this.invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: h.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DrawableContainer.java */
    private static class C0166b {
        public static boolean a(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        public static void b(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }

        public static Resources c(Resources.Theme theme) {
            return theme.getResources();
        }
    }

    /* JADX INFO: compiled from: DrawableContainer.java */
    static class c implements Drawable.Callback {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private Drawable.Callback f30078o;

        c() {
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.f30078o;
            this.f30078o = null;
            return callback;
        }

        public c b(Drawable.Callback callback) {
            this.f30078o = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
            Drawable.Callback callback = this.f30078o;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j10);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f30078o;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* JADX INFO: compiled from: DrawableContainer.java */
    static abstract class d extends Drawable.ConstantState {
        int A;
        int B;
        boolean C;
        ColorFilter D;
        boolean E;
        ColorStateList F;
        PorterDuff.Mode G;
        boolean H;
        boolean I;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final b f30079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Resources f30080b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f30081c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f30082d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f30083e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SparseArray<Drawable.ConstantState> f30084f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        Drawable[] f30085g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f30086h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f30087i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f30088j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        Rect f30089k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        boolean f30090l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        boolean f30091m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        int f30092n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        int f30093o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        int f30094p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f30095q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f30096r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f30097s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        boolean f30098t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        boolean f30099u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        boolean f30100v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        boolean f30101w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        boolean f30102x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        boolean f30103y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        int f30104z;

        d(d dVar, b bVar, Resources resources) {
            this.f30087i = false;
            this.f30090l = false;
            this.f30102x = true;
            this.A = 0;
            this.B = 0;
            this.f30079a = bVar;
            this.f30080b = resources != null ? resources : dVar != null ? dVar.f30080b : null;
            int iF = b.f(resources, dVar != null ? dVar.f30081c : 0);
            this.f30081c = iF;
            if (dVar == null) {
                this.f30085g = new Drawable[10];
                this.f30086h = 0;
                return;
            }
            this.f30082d = dVar.f30082d;
            this.f30083e = dVar.f30083e;
            this.f30100v = true;
            this.f30101w = true;
            this.f30087i = dVar.f30087i;
            this.f30090l = dVar.f30090l;
            this.f30102x = dVar.f30102x;
            this.f30103y = dVar.f30103y;
            this.f30104z = dVar.f30104z;
            this.A = dVar.A;
            this.B = dVar.B;
            this.C = dVar.C;
            this.D = dVar.D;
            this.E = dVar.E;
            this.F = dVar.F;
            this.G = dVar.G;
            this.H = dVar.H;
            this.I = dVar.I;
            if (dVar.f30081c == iF) {
                if (dVar.f30088j) {
                    this.f30089k = dVar.f30089k != null ? new Rect(dVar.f30089k) : null;
                    this.f30088j = true;
                }
                if (dVar.f30091m) {
                    this.f30092n = dVar.f30092n;
                    this.f30093o = dVar.f30093o;
                    this.f30094p = dVar.f30094p;
                    this.f30095q = dVar.f30095q;
                    this.f30091m = true;
                }
            }
            if (dVar.f30096r) {
                this.f30097s = dVar.f30097s;
                this.f30096r = true;
            }
            if (dVar.f30098t) {
                this.f30099u = dVar.f30099u;
                this.f30098t = true;
            }
            Drawable[] drawableArr = dVar.f30085g;
            this.f30085g = new Drawable[drawableArr.length];
            this.f30086h = dVar.f30086h;
            SparseArray<Drawable.ConstantState> sparseArray = dVar.f30084f;
            if (sparseArray != null) {
                this.f30084f = sparseArray.clone();
            } else {
                this.f30084f = new SparseArray<>(this.f30086h);
            }
            int i10 = this.f30086h;
            for (int i11 = 0; i11 < i10; i11++) {
                if (drawableArr[i11] != null) {
                    Drawable.ConstantState constantState = drawableArr[i11].getConstantState();
                    if (constantState != null) {
                        this.f30084f.put(i11, constantState);
                    } else {
                        this.f30085g[i11] = drawableArr[i11];
                    }
                }
            }
        }

        private void e() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f30084f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i10 = 0; i10 < size; i10++) {
                    this.f30085g[this.f30084f.keyAt(i10)] = s(this.f30084f.valueAt(i10).newDrawable(this.f30080b));
                }
                this.f30084f = null;
            }
        }

        private Drawable s(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                androidx.core.graphics.drawable.a.m(drawable, this.f30104z);
            }
            Drawable drawableMutate = drawable.mutate();
            drawableMutate.setCallback(this.f30079a);
            return drawableMutate;
        }

        public final int a(Drawable drawable) {
            int i10 = this.f30086h;
            if (i10 >= this.f30085g.length) {
                o(i10, i10 + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f30079a);
            this.f30085g[i10] = drawable;
            this.f30086h++;
            this.f30083e = drawable.getChangingConfigurations() | this.f30083e;
            p();
            this.f30089k = null;
            this.f30088j = false;
            this.f30091m = false;
            this.f30100v = false;
            return i10;
        }

        final void b(Resources.Theme theme) {
            if (theme != null) {
                e();
                int i10 = this.f30086h;
                Drawable[] drawableArr = this.f30085g;
                for (int i11 = 0; i11 < i10; i11++) {
                    if (drawableArr[i11] != null && androidx.core.graphics.drawable.a.b(drawableArr[i11])) {
                        androidx.core.graphics.drawable.a.a(drawableArr[i11], theme);
                        this.f30083e |= drawableArr[i11].getChangingConfigurations();
                    }
                }
                y(C0166b.c(theme));
            }
        }

        public boolean c() {
            if (this.f30100v) {
                return this.f30101w;
            }
            e();
            this.f30100v = true;
            int i10 = this.f30086h;
            Drawable[] drawableArr = this.f30085g;
            for (int i11 = 0; i11 < i10; i11++) {
                if (drawableArr[i11].getConstantState() == null) {
                    this.f30101w = false;
                    return false;
                }
            }
            this.f30101w = true;
            return true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i10 = this.f30086h;
            Drawable[] drawableArr = this.f30085g;
            for (int i11 = 0; i11 < i10; i11++) {
                Drawable drawable = drawableArr[i11];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f30084f.get(i11);
                    if (constantState != null && C0166b.a(constantState)) {
                        return true;
                    }
                } else if (androidx.core.graphics.drawable.a.b(drawable)) {
                    return true;
                }
            }
            return false;
        }

        protected void d() {
            this.f30091m = true;
            e();
            int i10 = this.f30086h;
            Drawable[] drawableArr = this.f30085g;
            this.f30093o = -1;
            this.f30092n = -1;
            this.f30095q = 0;
            this.f30094p = 0;
            for (int i11 = 0; i11 < i10; i11++) {
                Drawable drawable = drawableArr[i11];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f30092n) {
                    this.f30092n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f30093o) {
                    this.f30093o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f30094p) {
                    this.f30094p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f30095q) {
                    this.f30095q = minimumHeight;
                }
            }
        }

        final int f() {
            return this.f30085g.length;
        }

        public final Drawable g(int i10) {
            int iIndexOfKey;
            Drawable drawable = this.f30085g[i10];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f30084f;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i10)) < 0) {
                return null;
            }
            Drawable drawableS = s(this.f30084f.valueAt(iIndexOfKey).newDrawable(this.f30080b));
            this.f30085g[i10] = drawableS;
            this.f30084f.removeAt(iIndexOfKey);
            if (this.f30084f.size() == 0) {
                this.f30084f = null;
            }
            return drawableS;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f30082d | this.f30083e;
        }

        public final int h() {
            return this.f30086h;
        }

        public final int i() {
            if (!this.f30091m) {
                d();
            }
            return this.f30093o;
        }

        public final int j() {
            if (!this.f30091m) {
                d();
            }
            return this.f30095q;
        }

        public final int k() {
            if (!this.f30091m) {
                d();
            }
            return this.f30094p;
        }

        public final Rect l() {
            Rect rect = null;
            if (this.f30087i) {
                return null;
            }
            Rect rect2 = this.f30089k;
            if (rect2 != null || this.f30088j) {
                return rect2;
            }
            e();
            Rect rect3 = new Rect();
            int i10 = this.f30086h;
            Drawable[] drawableArr = this.f30085g;
            for (int i11 = 0; i11 < i10; i11++) {
                if (drawableArr[i11].getPadding(rect3)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int i12 = rect3.left;
                    if (i12 > rect.left) {
                        rect.left = i12;
                    }
                    int i13 = rect3.top;
                    if (i13 > rect.top) {
                        rect.top = i13;
                    }
                    int i14 = rect3.right;
                    if (i14 > rect.right) {
                        rect.right = i14;
                    }
                    int i15 = rect3.bottom;
                    if (i15 > rect.bottom) {
                        rect.bottom = i15;
                    }
                }
            }
            this.f30088j = true;
            this.f30089k = rect;
            return rect;
        }

        public final int m() {
            if (!this.f30091m) {
                d();
            }
            return this.f30092n;
        }

        public final int n() {
            if (this.f30096r) {
                return this.f30097s;
            }
            e();
            int i10 = this.f30086h;
            Drawable[] drawableArr = this.f30085g;
            int opacity = i10 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i11 = 1; i11 < i10; i11++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i11].getOpacity());
            }
            this.f30097s = opacity;
            this.f30096r = true;
            return opacity;
        }

        public void o(int i10, int i11) {
            Drawable[] drawableArr = new Drawable[i11];
            Drawable[] drawableArr2 = this.f30085g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i10);
            }
            this.f30085g = drawableArr;
        }

        void p() {
            this.f30096r = false;
            this.f30098t = false;
        }

        public final boolean q() {
            return this.f30090l;
        }

        abstract void r();

        public final void t(boolean z10) {
            this.f30090l = z10;
        }

        public final void u(int i10) {
            this.A = i10;
        }

        public final void v(int i10) {
            this.B = i10;
        }

        final boolean w(int i10, int i11) {
            int i12 = this.f30086h;
            Drawable[] drawableArr = this.f30085g;
            boolean z10 = false;
            for (int i13 = 0; i13 < i12; i13++) {
                if (drawableArr[i13] != null) {
                    boolean zM = Build.VERSION.SDK_INT >= 23 ? androidx.core.graphics.drawable.a.m(drawableArr[i13], i10) : false;
                    if (i13 == i11) {
                        z10 = zM;
                    }
                }
            }
            this.f30104z = i10;
            return z10;
        }

        public final void x(boolean z10) {
            this.f30087i = z10;
        }

        final void y(Resources resources) {
            if (resources != null) {
                this.f30080b = resources;
                int iF = b.f(resources, this.f30081c);
                int i10 = this.f30081c;
                this.f30081c = iF;
                if (i10 != iF) {
                    this.f30091m = false;
                    this.f30088j = false;
                }
            }
        }
    }

    b() {
    }

    private void d(Drawable drawable) {
        if (this.f30076z == null) {
            this.f30076z = new c();
        }
        drawable.setCallback(this.f30076z.b(drawable.getCallback()));
        try {
            if (this.f30065o.A <= 0 && this.f30070t) {
                drawable.setAlpha(this.f30069s);
            }
            d dVar = this.f30065o;
            if (dVar.E) {
                drawable.setColorFilter(dVar.D);
            } else {
                if (dVar.H) {
                    androidx.core.graphics.drawable.a.o(drawable, dVar.F);
                }
                d dVar2 = this.f30065o;
                if (dVar2.I) {
                    androidx.core.graphics.drawable.a.p(drawable, dVar2.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f30065o.f30102x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 23) {
                androidx.core.graphics.drawable.a.m(drawable, androidx.core.graphics.drawable.a.f(this));
            }
            if (i10 >= 19) {
                androidx.core.graphics.drawable.a.j(drawable, this.f30065o.C);
            }
            Rect rect = this.f30066p;
            if (i10 >= 21 && rect != null) {
                androidx.core.graphics.drawable.a.l(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f30076z.a());
        }
    }

    private boolean e() {
        return isAutoMirrored() && androidx.core.graphics.drawable.a.f(this) == 1;
    }

    static int f(Resources resources, int i10) {
        if (resources != null) {
            i10 = resources.getDisplayMetrics().densityDpi;
        }
        if (i10 == 0) {
            return 160;
        }
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f30070t = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.f30067q
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r7 = 0
            if (r3 == 0) goto L38
            long r9 = r13.f30074x
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 == 0) goto L3a
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.f30069s
            r3.setAlpha(r9)
            r13.f30074x = r7
            goto L3a
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r10 = (int) r9
            h.b$d r9 = r13.f30065o
            int r9 = r9.A
            int r10 = r10 / r9
            int r9 = 255 - r10
            int r10 = r13.f30069s
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = 1
            goto L3b
        L38:
            r13.f30074x = r7
        L3a:
            r3 = 0
        L3b:
            android.graphics.drawable.Drawable r9 = r13.f30068r
            if (r9 == 0) goto L65
            long r10 = r13.f30075y
            int r12 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r12 == 0) goto L67
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L52
            r9.setVisible(r6, r6)
            r0 = 0
            r13.f30068r = r0
            r13.f30075y = r7
            goto L67
        L52:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            h.b$d r4 = r13.f30065o
            int r4 = r4.B
            int r3 = r3 / r4
            int r4 = r13.f30069s
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L68
        L65:
            r13.f30075y = r7
        L67:
            r0 = r3
        L68:
            if (r14 == 0) goto L74
            if (r0 == 0) goto L74
            java.lang.Runnable r14 = r13.f30073w
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: h.b.a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f30065o.b(theme);
    }

    d b() {
        throw null;
    }

    int c() {
        return this.f30071u;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f30065o.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f30067q;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f30068r;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    boolean g(int r10) {
        /*
            r9 = this;
            int r0 = r9.f30071u
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            h.b$d r0 = r9.f30065o
            int r0 = r0.B
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.f30068r
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.f30067q
            if (r0 == 0) goto L29
            r9.f30068r = r0
            h.b$d r0 = r9.f30065o
            int r0 = r0.B
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.f30075y = r0
            goto L35
        L29:
            r9.f30068r = r4
            r9.f30075y = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.f30067q
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            h.b$d r0 = r9.f30065o
            int r1 = r0.f30086h
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.g(r10)
            r9.f30067q = r0
            r9.f30071u = r10
            if (r0 == 0) goto L5a
            h.b$d r10 = r9.f30065o
            int r10 = r10.A
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.f30074x = r2
        L51:
            r9.d(r0)
            goto L5a
        L55:
            r9.f30067q = r4
            r10 = -1
            r9.f30071u = r10
        L5a:
            long r0 = r9.f30074x
            r10 = 1
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L67
            long r0 = r9.f30075y
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 == 0) goto L79
        L67:
            java.lang.Runnable r0 = r9.f30073w
            if (r0 != 0) goto L73
            h.b$a r0 = new h.b$a
            r0.<init>()
            r9.f30073w = r0
            goto L76
        L73:
            r9.unscheduleSelf(r0)
        L76:
            r9.a(r10)
        L79:
            r9.invalidateSelf()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: h.b.g(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f30069s;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f30065o.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f30065o.c()) {
            return null;
        }
        this.f30065o.f30082d = getChangingConfigurations();
        return this.f30065o;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f30067q;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f30066p;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f30065o.q()) {
            return this.f30065o.i();
        }
        Drawable drawable = this.f30067q;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f30065o.q()) {
            return this.f30065o.m();
        }
        Drawable drawable = this.f30067q;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f30065o.q()) {
            return this.f30065o.j();
        }
        Drawable drawable = this.f30067q;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f30065o.q()) {
            return this.f30065o.k();
        }
        Drawable drawable = this.f30067q;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f30067q;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f30065o.n();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f30067q;
        if (drawable != null) {
            C0166b.b(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect rectL = this.f30065o.l();
        if (rectL != null) {
            rect.set(rectL);
            padding = (rectL.right | ((rectL.left | rectL.top) | rectL.bottom)) != 0;
        } else {
            Drawable drawable = this.f30067q;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (e()) {
            int i10 = rect.left;
            rect.left = rect.right;
            rect.right = i10;
        }
        return padding;
    }

    void h(d dVar) {
        this.f30065o = dVar;
        int i10 = this.f30071u;
        if (i10 >= 0) {
            Drawable drawableG = dVar.g(i10);
            this.f30067q = drawableG;
            if (drawableG != null) {
                d(drawableG);
            }
        }
        this.f30068r = null;
    }

    final void i(Resources resources) {
        this.f30065o.y(resources);
    }

    public void invalidateDrawable(Drawable drawable) {
        d dVar = this.f30065o;
        if (dVar != null) {
            dVar.p();
        }
        if (drawable != this.f30067q || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f30065o.C;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z10;
        Drawable drawable = this.f30068r;
        boolean z11 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f30068r = null;
            z10 = true;
        } else {
            z10 = false;
        }
        Drawable drawable2 = this.f30067q;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f30070t) {
                this.f30067q.setAlpha(this.f30069s);
            }
        }
        if (this.f30075y != 0) {
            this.f30075y = 0L;
            z10 = true;
        }
        if (this.f30074x != 0) {
            this.f30074x = 0L;
        } else {
            z11 = z10;
        }
        if (z11) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f30072v && super.mutate() == this) {
            d dVarB = b();
            dVarB.r();
            h(dVarB);
            this.f30072v = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f30068r;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f30067q;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i10) {
        return this.f30065o.w(i10, c());
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        Drawable drawable = this.f30068r;
        if (drawable != null) {
            return drawable.setLevel(i10);
        }
        Drawable drawable2 = this.f30067q;
        if (drawable2 != null) {
            return drawable2.setLevel(i10);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f30068r;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f30067q;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        if (drawable != this.f30067q || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (this.f30070t && this.f30069s == i10) {
            return;
        }
        this.f30070t = true;
        this.f30069s = i10;
        Drawable drawable = this.f30067q;
        if (drawable != null) {
            if (this.f30074x == 0) {
                drawable.setAlpha(i10);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z10) {
        d dVar = this.f30065o;
        if (dVar.C != z10) {
            dVar.C = z10;
            Drawable drawable = this.f30067q;
            if (drawable != null) {
                androidx.core.graphics.drawable.a.j(drawable, z10);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        d dVar = this.f30065o;
        dVar.E = true;
        if (dVar.D != colorFilter) {
            dVar.D = colorFilter;
            Drawable drawable = this.f30067q;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z10) {
        d dVar = this.f30065o;
        if (dVar.f30102x != z10) {
            dVar.f30102x = z10;
            Drawable drawable = this.f30067q;
            if (drawable != null) {
                drawable.setDither(z10);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f10, float f11) {
        Drawable drawable = this.f30067q;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.k(drawable, f10, f11);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i10, int i11, int i12, int i13) {
        Rect rect = this.f30066p;
        if (rect == null) {
            this.f30066p = new Rect(i10, i11, i12, i13);
        } else {
            rect.set(i10, i11, i12, i13);
        }
        Drawable drawable = this.f30067q;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.l(drawable, i10, i11, i12, i13);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(ColorStateList colorStateList) {
        d dVar = this.f30065o;
        dVar.H = true;
        if (dVar.F != colorStateList) {
            dVar.F = colorStateList;
            androidx.core.graphics.drawable.a.o(this.f30067q, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(PorterDuff.Mode mode) {
        d dVar = this.f30065o;
        dVar.I = true;
        if (dVar.G != mode) {
            dVar.G = mode;
            androidx.core.graphics.drawable.a.p(this.f30067q, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        Drawable drawable = this.f30068r;
        if (drawable != null) {
            drawable.setVisible(z10, z11);
        }
        Drawable drawable2 = this.f30067q;
        if (drawable2 != null) {
            drawable2.setVisible(z10, z11);
        }
        return visible;
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f30067q || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
