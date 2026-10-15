package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: FloatingActionButtonImplLollipop.java */
/* JADX INFO: loaded from: classes2.dex */
class b extends a {
    b(FloatingActionButton floatingActionButton, n4.b bVar) {
        super(floatingActionButton, bVar);
    }

    private Animator e0(float f10, float f11) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f25470x, "elevation", f10).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f25470x, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f11).setDuration(100L));
        animatorSet.setInterpolator(a.E);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void A() {
        b0();
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void C(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (!this.f25470x.isEnabled()) {
                this.f25470x.setElevation(0.0f);
                this.f25470x.setTranslationZ(0.0f);
                return;
            }
            this.f25470x.setElevation(this.f25453g);
            if (this.f25470x.isPressed()) {
                this.f25470x.setTranslationZ(this.f25455i);
            } else if (this.f25470x.isFocused() || this.f25470x.isHovered()) {
                this.f25470x.setTranslationZ(this.f25454h);
            } else {
                this.f25470x.setTranslationZ(0.0f);
            }
        }
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void D(float f10, float f11, float f12) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 == 21) {
            this.f25470x.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(a.F, e0(f10, f12));
            stateListAnimator.addState(a.G, e0(f10, f11));
            stateListAnimator.addState(a.H, e0(f10, f11));
            stateListAnimator.addState(a.I, e0(f10, f11));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.f25470x, "elevation", f10).setDuration(0L));
            if (i10 >= 22 && i10 <= 24) {
                FloatingActionButton floatingActionButton = this.f25470x;
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.f25470x, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(a.E);
            stateListAnimator.addState(a.J, animatorSet);
            stateListAnimator.addState(a.K, e0(0.0f, 0.0f));
            this.f25470x.setStateListAnimator(stateListAnimator);
        }
        if (V()) {
            b0();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.a
    boolean I() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void R(ColorStateList colorStateList) {
        Drawable drawable = this.f25449c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(m4.b.a(colorStateList));
        } else {
            super.R(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.a
    boolean V() {
        return this.f25471y.c() || !X();
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void Z() {
    }

    @Override // com.google.android.material.floatingactionbutton.a
    public float m() {
        return this.f25470x.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void r(Rect rect) {
        if (this.f25471y.c()) {
            super.r(rect);
        } else if (X()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f25456j - this.f25470x.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.a
    void y() {
    }
}
