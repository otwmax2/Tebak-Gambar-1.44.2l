package com.google.android.material.floatingactionbutton;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.view.a0;
import java.util.ArrayList;
import java.util.Iterator;
import o4.n;

/* JADX INFO: compiled from: FloatingActionButtonImpl.java */
/* JADX INFO: loaded from: classes2.dex */
class a {
    static final TimeInterpolator E = z3.a.f37201c;
    static final int[] F = {R.attr.state_pressed, R.attr.state_enabled};
    static final int[] G = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    static final int[] H = {R.attr.state_focused, R.attr.state_enabled};
    static final int[] I = {R.attr.state_hovered, R.attr.state_enabled};
    static final int[] J = {R.attr.state_enabled};
    static final int[] K = new int[0];
    private ViewTreeObserver.OnPreDrawListener D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    o4.k f25447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    o4.g f25448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Drawable f25449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Drawable f25450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f25451e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f25453g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f25454h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f25455i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f25456j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.google.android.material.internal.f f25457k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private z3.h f25458l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private z3.h f25459m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Animator f25460n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private z3.h f25461o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private z3.h f25462p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f25463q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f25465s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ArrayList<Animator.AnimatorListener> f25467u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ArrayList<Animator.AnimatorListener> f25468v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ArrayList<i> f25469w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final FloatingActionButton f25470x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final n4.b f25471y;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f25452f = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f25464r = 1.0f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f25466t = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final Rect f25472z = new Rect();
    private final RectF A = new RectF();
    private final RectF B = new RectF();
    private final Matrix C = new Matrix();

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    class C0118a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f25473a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f25474b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ j f25475c;

        C0118a(boolean z10, j jVar) {
            this.f25474b = z10;
            this.f25475c = jVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f25473a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f25466t = 0;
            a.this.f25460n = null;
            if (this.f25473a) {
                return;
            }
            FloatingActionButton floatingActionButton = a.this.f25470x;
            boolean z10 = this.f25474b;
            floatingActionButton.b(z10 ? 8 : 4, z10);
            j jVar = this.f25475c;
            if (jVar != null) {
                jVar.b();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.f25470x.b(0, this.f25474b);
            a.this.f25466t = 1;
            a.this.f25460n = animator;
            this.f25473a = false;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f25477a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ j f25478b;

        b(boolean z10, j jVar) {
            this.f25477a = z10;
            this.f25478b = jVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f25466t = 0;
            a.this.f25460n = null;
            j jVar = this.f25478b;
            if (jVar != null) {
                jVar.a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.f25470x.b(0, this.f25477a);
            a.this.f25466t = 2;
            a.this.f25460n = animator;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    class c extends z3.g {
        c() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Matrix evaluate(float f10, Matrix matrix, Matrix matrix2) {
            a.this.f25464r = f10;
            return super.evaluate(f10, matrix, matrix2);
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    class d implements TypeEvaluator<Float> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        FloatEvaluator f25481a = new FloatEvaluator();

        d() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float evaluate(float f10, Float f11, Float f12) {
            float fFloatValue = this.f25481a.evaluate(f10, (Number) f11, (Number) f12).floatValue();
            if (fFloatValue < 0.1f) {
                fFloatValue = 0.0f;
            }
            return Float.valueOf(fFloatValue);
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    class e implements ViewTreeObserver.OnPreDrawListener {
        e() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a.this.F();
            return true;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    private class f extends l {
        f() {
            super(a.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.a.l
        protected float a() {
            return 0.0f;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    private class g extends l {
        g() {
            super(a.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.a.l
        protected float a() {
            a aVar = a.this;
            return aVar.f25453g + aVar.f25454h;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    private class h extends l {
        h() {
            super(a.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.a.l
        protected float a() {
            a aVar = a.this;
            return aVar.f25453g + aVar.f25455i;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    interface i {
        void a();

        void b();
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    interface j {
        void a();

        void b();
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    private class k extends l {
        k() {
            super(a.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.a.l
        protected float a() {
            return a.this.f25453g;
        }
    }

    /* JADX INFO: compiled from: FloatingActionButtonImpl.java */
    private abstract class l extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f25488a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f25489b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f25490c;

        private l() {
        }

        protected abstract float a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.c0((int) this.f25490c);
            this.f25488a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f25488a) {
                o4.g gVar = a.this.f25448b;
                this.f25489b = gVar == null ? 0.0f : gVar.w();
                this.f25490c = a();
                this.f25488a = true;
            }
            a aVar = a.this;
            float f10 = this.f25489b;
            aVar.c0((int) (f10 + ((this.f25490c - f10) * valueAnimator.getAnimatedFraction())));
        }

        /* synthetic */ l(a aVar, C0118a c0118a) {
            this();
        }
    }

    a(FloatingActionButton floatingActionButton, n4.b bVar) {
        this.f25470x = floatingActionButton;
        this.f25471y = bVar;
        com.google.android.material.internal.f fVar = new com.google.android.material.internal.f();
        this.f25457k = fVar;
        fVar.a(F, i(new h()));
        fVar.a(G, i(new g()));
        fVar.a(H, i(new g()));
        fVar.a(I, i(new g()));
        fVar.a(J, i(new k()));
        fVar.a(K, i(new f()));
        this.f25463q = floatingActionButton.getRotation();
    }

    private boolean W() {
        return a0.U(this.f25470x) && !this.f25470x.isInEditMode();
    }

    private void d0(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new d());
    }

    private void g(float f10, Matrix matrix) {
        matrix.reset();
        if (this.f25470x.getDrawable() == null || this.f25465s == 0) {
            return;
        }
        RectF rectF = this.A;
        RectF rectF2 = this.B;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        int i10 = this.f25465s;
        rectF2.set(0.0f, 0.0f, i10, i10);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i11 = this.f25465s;
        matrix.postScale(f10, f10, i11 / 2.0f, i11 / 2.0f);
    }

    private AnimatorSet h(z3.h hVar, float f10, float f11, float f12) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f25470x, (Property<FloatingActionButton, Float>) View.ALPHA, f10);
        hVar.e("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f25470x, (Property<FloatingActionButton, Float>) View.SCALE_X, f11);
        hVar.e("scale").a(objectAnimatorOfFloat2);
        d0(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f25470x, (Property<FloatingActionButton, Float>) View.SCALE_Y, f11);
        hVar.e("scale").a(objectAnimatorOfFloat3);
        d0(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        g(f12, this.C);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.f25470x, new z3.f(), new c(), new Matrix(this.C));
        hVar.e("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        z3.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    private ValueAnimator i(l lVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(E);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(lVar);
        valueAnimator.addUpdateListener(lVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    private z3.h k() {
        if (this.f25459m == null) {
            this.f25459m = z3.h.c(this.f25470x.getContext(), y3.a.f36627a);
        }
        return (z3.h) androidx.core.util.h.f(this.f25459m);
    }

    private z3.h l() {
        if (this.f25458l == null) {
            this.f25458l = z3.h.c(this.f25470x.getContext(), y3.a.f36628b);
        }
        return (z3.h) androidx.core.util.h.f(this.f25458l);
    }

    private ViewTreeObserver.OnPreDrawListener q() {
        if (this.D == null) {
            this.D = new e();
        }
        return this.D;
    }

    void A() {
    }

    void B() {
        ViewTreeObserver viewTreeObserver = this.f25470x.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.D;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.D = null;
        }
    }

    void C(int[] iArr) {
        this.f25457k.d(iArr);
    }

    void D(float f10, float f11, float f12) {
        b0();
        c0(f10);
    }

    void E(Rect rect) {
        androidx.core.util.h.g(this.f25450d, "Didn't initialize content background");
        if (!V()) {
            this.f25471y.b(this.f25450d);
        } else {
            this.f25471y.b(new InsetDrawable(this.f25450d, rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    void F() {
        float rotation = this.f25470x.getRotation();
        if (this.f25463q != rotation) {
            this.f25463q = rotation;
            Z();
        }
    }

    void G() {
        ArrayList<i> arrayList = this.f25469w;
        if (arrayList != null) {
            Iterator<i> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }
    }

    void H() {
        ArrayList<i> arrayList = this.f25469w;
        if (arrayList != null) {
            Iterator<i> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    boolean I() {
        return true;
    }

    void J(ColorStateList colorStateList) {
        o4.g gVar = this.f25448b;
        if (gVar != null) {
            gVar.setTintList(colorStateList);
        }
    }

    void K(PorterDuff.Mode mode) {
        o4.g gVar = this.f25448b;
        if (gVar != null) {
            gVar.setTintMode(mode);
        }
    }

    final void L(float f10) {
        if (this.f25453g != f10) {
            this.f25453g = f10;
            D(f10, this.f25454h, this.f25455i);
        }
    }

    void M(boolean z10) {
        this.f25451e = z10;
    }

    final void N(z3.h hVar) {
        this.f25462p = hVar;
    }

    final void O(float f10) {
        if (this.f25454h != f10) {
            this.f25454h = f10;
            D(this.f25453g, f10, this.f25455i);
        }
    }

    final void P(float f10) {
        this.f25464r = f10;
        Matrix matrix = this.C;
        g(f10, matrix);
        this.f25470x.setImageMatrix(matrix);
    }

    final void Q(float f10) {
        if (this.f25455i != f10) {
            this.f25455i = f10;
            D(this.f25453g, this.f25454h, f10);
        }
    }

    void R(ColorStateList colorStateList) {
        Drawable drawable = this.f25449c;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.o(drawable, m4.b.a(colorStateList));
        }
    }

    void S(boolean z10) {
        this.f25452f = z10;
        b0();
    }

    final void T(o4.k kVar) {
        this.f25447a = kVar;
        o4.g gVar = this.f25448b;
        if (gVar != null) {
            gVar.setShapeAppearanceModel(kVar);
        }
        Object obj = this.f25449c;
        if (obj instanceof n) {
            ((n) obj).setShapeAppearanceModel(kVar);
        }
    }

    final void U(z3.h hVar) {
        this.f25461o = hVar;
    }

    boolean V() {
        return true;
    }

    final boolean X() {
        return !this.f25451e || this.f25470x.getSizeDimension() >= this.f25456j;
    }

    void Y(j jVar, boolean z10) {
        if (x()) {
            return;
        }
        Animator animator = this.f25460n;
        if (animator != null) {
            animator.cancel();
        }
        if (!W()) {
            this.f25470x.b(0, z10);
            this.f25470x.setAlpha(1.0f);
            this.f25470x.setScaleY(1.0f);
            this.f25470x.setScaleX(1.0f);
            P(1.0f);
            if (jVar != null) {
                jVar.a();
                return;
            }
            return;
        }
        if (this.f25470x.getVisibility() != 0) {
            this.f25470x.setAlpha(0.0f);
            this.f25470x.setScaleY(0.0f);
            this.f25470x.setScaleX(0.0f);
            P(0.0f);
        }
        z3.h hVarL = this.f25461o;
        if (hVarL == null) {
            hVarL = l();
        }
        AnimatorSet animatorSetH = h(hVarL, 1.0f, 1.0f, 1.0f);
        animatorSetH.addListener(new b(z10, jVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.f25467u;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetH.addListener(it.next());
            }
        }
        animatorSetH.start();
    }

    void Z() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.f25463q % 90.0f != 0.0f) {
                if (this.f25470x.getLayerType() != 1) {
                    this.f25470x.setLayerType(1, null);
                }
            } else if (this.f25470x.getLayerType() != 0) {
                this.f25470x.setLayerType(0, null);
            }
        }
        o4.g gVar = this.f25448b;
        if (gVar != null) {
            gVar.a0((int) this.f25463q);
        }
    }

    final void a0() {
        P(this.f25464r);
    }

    final void b0() {
        Rect rect = this.f25472z;
        r(rect);
        E(rect);
        this.f25471y.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    void c0(float f10) {
        o4.g gVar = this.f25448b;
        if (gVar != null) {
            gVar.V(f10);
        }
    }

    public void d(Animator.AnimatorListener animatorListener) {
        if (this.f25468v == null) {
            this.f25468v = new ArrayList<>();
        }
        this.f25468v.add(animatorListener);
    }

    void e(Animator.AnimatorListener animatorListener) {
        if (this.f25467u == null) {
            this.f25467u = new ArrayList<>();
        }
        this.f25467u.add(animatorListener);
    }

    void f(i iVar) {
        if (this.f25469w == null) {
            this.f25469w = new ArrayList<>();
        }
        this.f25469w.add(iVar);
    }

    final Drawable j() {
        return this.f25450d;
    }

    float m() {
        return this.f25453g;
    }

    boolean n() {
        return this.f25451e;
    }

    final z3.h o() {
        return this.f25462p;
    }

    float p() {
        return this.f25454h;
    }

    void r(Rect rect) {
        int sizeDimension = this.f25451e ? (this.f25456j - this.f25470x.getSizeDimension()) / 2 : 0;
        int iMax = Math.max(sizeDimension, (int) Math.ceil(this.f25452f ? m() + this.f25455i : 0.0f));
        int iMax2 = Math.max(sizeDimension, (int) Math.ceil(r1 * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    float s() {
        return this.f25455i;
    }

    final o4.k t() {
        return this.f25447a;
    }

    final z3.h u() {
        return this.f25461o;
    }

    void v(j jVar, boolean z10) {
        if (w()) {
            return;
        }
        Animator animator = this.f25460n;
        if (animator != null) {
            animator.cancel();
        }
        if (!W()) {
            this.f25470x.b(z10 ? 8 : 4, z10);
            if (jVar != null) {
                jVar.b();
                return;
            }
            return;
        }
        z3.h hVarK = this.f25462p;
        if (hVarK == null) {
            hVarK = k();
        }
        AnimatorSet animatorSetH = h(hVarK, 0.0f, 0.0f, 0.0f);
        animatorSetH.addListener(new C0118a(z10, jVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.f25468v;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetH.addListener(it.next());
            }
        }
        animatorSetH.start();
    }

    boolean w() {
        return this.f25470x.getVisibility() == 0 ? this.f25466t == 1 : this.f25466t != 2;
    }

    boolean x() {
        return this.f25470x.getVisibility() != 0 ? this.f25466t == 2 : this.f25466t != 1;
    }

    void y() {
        this.f25457k.c();
    }

    void z() {
        o4.g gVar = this.f25448b;
        if (gVar != null) {
            o4.h.f(this.f25470x, gVar);
        }
        if (I()) {
            this.f25470x.getViewTreeObserver().addOnPreDrawListener(q());
        }
    }
}
