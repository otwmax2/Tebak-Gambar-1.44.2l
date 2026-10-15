package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.List;
import z3.h;

/* JADX INFO: compiled from: MotionStrategy.java */
/* JADX INFO: loaded from: classes2.dex */
interface c {
    void a();

    void b();

    h c();

    void d(h hVar);

    boolean e();

    void f();

    AnimatorSet g();

    List<Animator.AnimatorListener> h();

    void i(ExtendedFloatingActionButton.f fVar);

    void onAnimationStart(Animator animator);
}
