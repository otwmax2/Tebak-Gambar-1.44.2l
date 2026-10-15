package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a0;
import c4.d;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;
import y3.f;
import z3.h;
import z3.i;
import z3.j;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f25779c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f25780d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f25781e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int[] f25782f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f25783g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f25784h;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f25785a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f25786b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f25787c;

        a(boolean z10, View view, View view2) {
            this.f25785a = z10;
            this.f25786b = view;
            this.f25787c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f25785a) {
                return;
            }
            this.f25786b.setVisibility(4);
            this.f25787c.setAlpha(1.0f);
            this.f25787c.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f25785a) {
                this.f25786b.setVisibility(0);
                this.f25787c.setAlpha(0.0f);
                this.f25787c.setVisibility(4);
            }
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f25789a;

        b(View view) {
            this.f25789a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f25789a.invalidate();
        }
    }

    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c4.d f25791a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Drawable f25792b;

        c(c4.d dVar, Drawable drawable) {
            this.f25791a = dVar;
            this.f25792b = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f25791a.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f25791a.setCircularRevealOverlayDrawable(this.f25792b);
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c4.d f25794a;

        d(c4.d dVar) {
            this.f25794a = dVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.e revealInfo = this.f25794a.getRevealInfo();
            revealInfo.f4863c = Float.MAX_VALUE;
            this.f25794a.setRevealInfo(revealInfo);
        }
    }

    protected static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public h f25796a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public j f25797b;

        protected e() {
        }
    }

    public FabTransformationBehavior() {
        this.f25779c = new Rect();
        this.f25780d = new RectF();
        this.f25781e = new RectF();
        this.f25782f = new int[2];
    }

    private ViewGroup K(View view) {
        View viewFindViewById = view.findViewById(f.B);
        return viewFindViewById != null ? f0(viewFindViewById) : ((view instanceof r4.b) || (view instanceof r4.a)) ? f0(((ViewGroup) view).getChildAt(0)) : f0(view);
    }

    private void L(View view, e eVar, i iVar, i iVar2, float f10, float f11, float f12, float f13, RectF rectF) {
        float fS = S(eVar, iVar, f10, f12);
        float fS2 = S(eVar, iVar2, f11, f13);
        Rect rect = this.f25779c;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f25780d;
        rectF2.set(rect);
        RectF rectF3 = this.f25781e;
        T(view, rectF3);
        rectF3.offset(fS, fS2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    private void M(View view, RectF rectF) {
        T(view, rectF);
        rectF.offset(this.f25783g, this.f25784h);
    }

    private Pair<i, i> N(float f10, float f11, boolean z10, e eVar) {
        i iVarE;
        i iVarE2;
        if (f10 == 0.0f || f11 == 0.0f) {
            iVarE = eVar.f25796a.e("translationXLinear");
            iVarE2 = eVar.f25796a.e("translationYLinear");
        } else if ((!z10 || f11 >= 0.0f) && (z10 || f11 <= 0.0f)) {
            iVarE = eVar.f25796a.e("translationXCurveDownwards");
            iVarE2 = eVar.f25796a.e("translationYCurveDownwards");
        } else {
            iVarE = eVar.f25796a.e("translationXCurveUpwards");
            iVarE2 = eVar.f25796a.e("translationYCurveUpwards");
        }
        return new Pair<>(iVarE, iVarE2);
    }

    private float O(View view, View view2, j jVar) {
        RectF rectF = this.f25780d;
        RectF rectF2 = this.f25781e;
        M(view, rectF);
        T(view2, rectF2);
        rectF2.offset(-Q(view, view2, jVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    private float P(View view, View view2, j jVar) {
        RectF rectF = this.f25780d;
        RectF rectF2 = this.f25781e;
        M(view, rectF);
        T(view2, rectF2);
        rectF2.offset(0.0f, -R(view, view2, jVar));
        return rectF.centerY() - rectF2.top;
    }

    private float Q(View view, View view2, j jVar) {
        float fCenterX;
        float fCenterX2;
        float f10;
        RectF rectF = this.f25780d;
        RectF rectF2 = this.f25781e;
        M(view, rectF);
        T(view2, rectF2);
        int i10 = jVar.f37219a & 7;
        if (i10 == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else if (i10 == 3) {
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        } else {
            if (i10 != 5) {
                f10 = 0.0f;
                return f10 + jVar.f37220b;
            }
            fCenterX = rectF2.right;
            fCenterX2 = rectF.right;
        }
        f10 = fCenterX - fCenterX2;
        return f10 + jVar.f37220b;
    }

    private float R(View view, View view2, j jVar) {
        float fCenterY;
        float fCenterY2;
        float f10;
        RectF rectF = this.f25780d;
        RectF rectF2 = this.f25781e;
        M(view, rectF);
        T(view2, rectF2);
        int i10 = jVar.f37219a & 112;
        if (i10 == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else if (i10 == 48) {
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        } else {
            if (i10 != 80) {
                f10 = 0.0f;
                return f10 + jVar.f37221c;
            }
            fCenterY = rectF2.bottom;
            fCenterY2 = rectF.bottom;
        }
        f10 = fCenterY - fCenterY2;
        return f10 + jVar.f37221c;
    }

    private float S(e eVar, i iVar, float f10, float f11) {
        long jC = iVar.c();
        long jD = iVar.d();
        i iVarE = eVar.f25796a.e("expansion");
        return z3.a.a(f10, f11, iVar.e().getInterpolation((((iVarE.c() + iVarE.d()) + 17) - jC) / jD));
    }

    private void T(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f25782f);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private void U(View view, View view2, boolean z10, boolean z11, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup viewGroupK;
        ObjectAnimator objectAnimatorOfFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof c4.d) && c4.c.f4856a == 0) || (viewGroupK = K(view2)) == null) {
                return;
            }
            if (z10) {
                if (!z11) {
                    z3.d.f37205a.set(viewGroupK, Float.valueOf(0.0f));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupK, z3.d.f37205a, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupK, z3.d.f37205a, 0.0f);
            }
            eVar.f25796a.e("contentFade").a(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void V(View view, View view2, boolean z10, boolean z11, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof c4.d) {
            c4.d dVar = (c4.d) view2;
            int iD0 = d0(view);
            int i10 = 16777215 & iD0;
            if (z10) {
                if (!z11) {
                    dVar.setCircularRevealScrimColor(iD0);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(dVar, d.C0092d.f4860a, i10);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(dVar, d.C0092d.f4860a, iD0);
            }
            objectAnimatorOfInt.setEvaluator(z3.c.b());
            eVar.f25796a.e("color").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    private void W(View view, View view2, boolean z10, e eVar, List<Animator> list) {
        float fQ = Q(view, view2, eVar.f25797b);
        float fR = R(view, view2, eVar.f25797b);
        Pair<i, i> pairN = N(fQ, fR, z10, eVar);
        i iVar = (i) pairN.first;
        i iVar2 = (i) pairN.second;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (!z10) {
            fQ = this.f25783g;
        }
        fArr[0] = fQ;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        if (!z10) {
            fR = this.f25784h;
        }
        fArr2[0] = fR;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        iVar.a(objectAnimatorOfFloat);
        iVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    @TargetApi(21)
    private void X(View view, View view2, boolean z10, boolean z11, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        float fY = a0.y(view2) - a0.y(view);
        if (z10) {
            if (!z11) {
                view2.setTranslationZ(-fY);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -fY);
        }
        eVar.f25796a.e("elevation").a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void Y(View view, View view2, boolean z10, boolean z11, e eVar, float f10, float f11, List<Animator> list, List<Animator.AnimatorListener> list2) {
        Animator animatorA;
        if (view2 instanceof c4.d) {
            c4.d dVar = (c4.d) view2;
            float fO = O(view, view2, eVar.f25797b);
            float fP = P(view, view2, eVar.f25797b);
            ((FloatingActionButton) view).i(this.f25779c);
            float fWidth = this.f25779c.width() / 2.0f;
            i iVarE = eVar.f25796a.e("expansion");
            if (z10) {
                if (!z11) {
                    dVar.setRevealInfo(new d.e(fO, fP, fWidth));
                }
                if (z11) {
                    fWidth = dVar.getRevealInfo().f4863c;
                }
                animatorA = c4.a.a(dVar, fO, fP, j4.a.b(fO, fP, 0.0f, 0.0f, f10, f11));
                animatorA.addListener(new d(dVar));
                b0(view2, iVarE.c(), (int) fO, (int) fP, fWidth, list);
            } else {
                float f12 = dVar.getRevealInfo().f4863c;
                Animator animatorA2 = c4.a.a(dVar, fO, fP, fWidth);
                int i10 = (int) fO;
                int i11 = (int) fP;
                b0(view2, iVarE.c(), i10, i11, f12, list);
                a0(view2, iVarE.c(), iVarE.d(), eVar.f25796a.f(), i10, i11, fWidth, list);
                animatorA = animatorA2;
            }
            iVarE.a(animatorA);
            list.add(animatorA);
            list2.add(c4.a.b(dVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void Z(View view, View view2, boolean z10, boolean z11, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if ((view2 instanceof c4.d) && (view instanceof ImageView)) {
            c4.d dVar = (c4.d) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z10) {
                if (!z11) {
                    drawable.setAlpha(255);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, z3.e.f37206b, 0);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, z3.e.f37206b, 255);
            }
            objectAnimatorOfInt.addUpdateListener(new b(view2));
            eVar.f25796a.e("iconFade").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
            list2.add(new c(dVar, drawable));
        }
    }

    private void a0(View view, long j10, long j11, long j12, int i10, int i11, float f10, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21) {
            long j13 = j10 + j11;
            if (j13 < j12) {
                Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i10, i11, f10, f10);
                animatorCreateCircularReveal.setStartDelay(j13);
                animatorCreateCircularReveal.setDuration(j12 - j13);
                list.add(animatorCreateCircularReveal);
            }
        }
    }

    private void b0(View view, long j10, int i10, int i11, float f10, List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j10 <= 0) {
            return;
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i10, i11, f10, f10);
        animatorCreateCircularReveal.setStartDelay(0L);
        animatorCreateCircularReveal.setDuration(j10);
        list.add(animatorCreateCircularReveal);
    }

    private void c0(View view, View view2, boolean z10, boolean z11, e eVar, List<Animator> list, List<Animator.AnimatorListener> list2, RectF rectF) {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float fQ = Q(view, view2, eVar.f25797b);
        float fR = R(view, view2, eVar.f25797b);
        Pair<i, i> pairN = N(fQ, fR, z10, eVar);
        i iVar = (i) pairN.first;
        i iVar2 = (i) pairN.second;
        if (z10) {
            if (!z11) {
                view2.setTranslationX(-fQ);
                view2.setTranslationY(-fR);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            L(view2, eVar, iVar, iVar2, -fQ, -fR, 0.0f, 0.0f, rectF);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fQ);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fR);
        }
        iVar.a(objectAnimatorOfFloat);
        iVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    private int d0(View view) {
        ColorStateList colorStateListU = a0.u(view);
        if (colorStateListU != null) {
            return colorStateListU.getColorForState(view.getDrawableState(), colorStateListU.getDefaultColor());
        }
        return 0;
    }

    private ViewGroup f0(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    protected AnimatorSet J(View view, View view2, boolean z10, boolean z11) {
        e eVarE0 = e0(view2.getContext(), z10);
        if (z10) {
            this.f25783g = view.getTranslationX();
            this.f25784h = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            X(view, view2, z10, z11, eVarE0, arrayList, arrayList2);
        }
        RectF rectF = this.f25780d;
        c0(view, view2, z10, z11, eVarE0, arrayList, arrayList2, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        W(view, view2, z10, eVarE0, arrayList);
        Z(view, view2, z10, z11, eVarE0, arrayList, arrayList2);
        Y(view, view2, z10, z11, eVarE0, fWidth, fHeight, arrayList, arrayList2);
        V(view, view2, z10, z11, eVarE0, arrayList, arrayList2);
        U(view, view2, z10, z11, eVarE0, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        z3.b.a(animatorSet, arrayList);
        animatorSet.addListener(new a(z10, view2, view));
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            animatorSet.addListener(arrayList2.get(i10));
        }
        return animatorSet;
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    protected abstract e e0(Context context, boolean z10);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void g(CoordinatorLayout.f fVar) {
        if (fVar.f1945h == 0) {
            fVar.f1945h = 80;
        }
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f25779c = new Rect();
        this.f25780d = new RectF();
        this.f25781e = new RectF();
        this.f25782f = new int[2];
    }
}
