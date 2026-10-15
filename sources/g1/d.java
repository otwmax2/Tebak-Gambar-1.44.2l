package g1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: Fade.java */
/* JADX INFO: loaded from: classes.dex */
public class d extends j0 {

    /* JADX INFO: compiled from: Fade.java */
    class a extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f29680a;

        a(View view) {
            this.f29680a = view;
        }

        @Override // g1.m.f
        public void d(m mVar) {
            c0.g(this.f29680a, 1.0f);
            c0.a(this.f29680a);
            mVar.R(this);
        }
    }

    /* JADX INFO: compiled from: Fade.java */
    private static class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f29682a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f29683b = false;

        b(View view) {
            this.f29682a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            c0.g(this.f29682a, 1.0f);
            if (this.f29683b) {
                this.f29682a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (androidx.core.view.a0.Q(this.f29682a) && this.f29682a.getLayerType() == 0) {
                this.f29683b = true;
                this.f29682a.setLayerType(2, null);
            }
        }
    }

    public d(int i10) {
        m0(i10);
    }

    private Animator n0(View view, float f10, float f11) {
        if (f10 == f11) {
            return null;
        }
        c0.g(view, f10);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, c0.f29678b, f11);
        objectAnimatorOfFloat.addListener(new b(view));
        a(new a(view));
        return objectAnimatorOfFloat;
    }

    private static float o0(s sVar, float f10) {
        Float f11;
        return (sVar == null || (f11 = (Float) sVar.f29774a.get("android:fade:transitionAlpha")) == null) ? f10 : f11.floatValue();
    }

    @Override // g1.j0
    public Animator h0(ViewGroup viewGroup, View view, s sVar, s sVar2) {
        float fO0 = o0(sVar, 0.0f);
        return n0(view, fO0 != 1.0f ? fO0 : 0.0f, 1.0f);
    }

    @Override // g1.j0
    public Animator j0(ViewGroup viewGroup, View view, s sVar, s sVar2) {
        c0.e(view);
        return n0(view, o0(sVar, 1.0f), 0.0f);
    }

    @Override // g1.j0, g1.m
    public void k(s sVar) {
        super.k(sVar);
        sVar.f29774a.put("android:fade:transitionAlpha", Float.valueOf(c0.c(sVar.f29775b)));
    }
}
