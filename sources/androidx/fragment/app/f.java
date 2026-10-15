package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.core.os.e;
import androidx.fragment.app.x;

/* JADX INFO: compiled from: FragmentAnim.java */
/* JADX INFO: loaded from: classes.dex */
class f {

    /* JADX INFO: compiled from: FragmentAnim.java */
    class a implements e.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Fragment f3235a;

        a(Fragment fragment) {
            this.f3235a = fragment;
        }

        @Override // androidx.core.os.e.b
        public void onCancel() {
            if (this.f3235a.getAnimatingAway() != null) {
                View animatingAway = this.f3235a.getAnimatingAway();
                this.f3235a.setAnimatingAway(null);
                animatingAway.clearAnimation();
            }
            this.f3235a.setAnimator(null);
        }
    }

    /* JADX INFO: compiled from: FragmentAnim.java */
    class b implements Animation.AnimationListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ViewGroup f3236o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Fragment f3237p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ x.g f3238q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ androidx.core.os.e f3239r;

        /* JADX INFO: compiled from: FragmentAnim.java */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f3237p.getAnimatingAway() != null) {
                    b.this.f3237p.setAnimatingAway(null);
                    b bVar = b.this;
                    bVar.f3238q.a(bVar.f3237p, bVar.f3239r);
                }
            }
        }

        b(ViewGroup viewGroup, Fragment fragment, x.g gVar, androidx.core.os.e eVar) {
            this.f3236o = viewGroup;
            this.f3237p = fragment;
            this.f3238q = gVar;
            this.f3239r = eVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f3236o.post(new a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: compiled from: FragmentAnim.java */
    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f3241a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f3242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Fragment f3243c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ x.g f3244d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ androidx.core.os.e f3245e;

        c(ViewGroup viewGroup, View view, Fragment fragment, x.g gVar, androidx.core.os.e eVar) {
            this.f3241a = viewGroup;
            this.f3242b = view;
            this.f3243c = fragment;
            this.f3244d = gVar;
            this.f3245e = eVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3241a.endViewTransition(this.f3242b);
            Animator animator2 = this.f3243c.getAnimator();
            this.f3243c.setAnimator(null);
            if (animator2 == null || this.f3241a.indexOfChild(this.f3242b) >= 0) {
                return;
            }
            this.f3244d.a(this.f3243c, this.f3245e);
        }
    }

    static void a(Fragment fragment, d dVar, x.g gVar) {
        View view = fragment.mView;
        ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        androidx.core.os.e eVar = new androidx.core.os.e();
        eVar.c(new a(fragment));
        gVar.b(fragment, eVar);
        if (dVar.f3246a != null) {
            e eVar2 = new e(dVar.f3246a, viewGroup, view);
            fragment.setAnimatingAway(fragment.mView);
            eVar2.setAnimationListener(new b(viewGroup, fragment, gVar, eVar));
            fragment.mView.startAnimation(eVar2);
            return;
        }
        Animator animator = dVar.f3247b;
        fragment.setAnimator(animator);
        animator.addListener(new c(viewGroup, view, fragment, gVar, eVar));
        animator.setTarget(fragment.mView);
        animator.start();
    }

    private static int b(Fragment fragment, boolean z10, boolean z11) {
        return z11 ? z10 ? fragment.getPopEnterAnim() : fragment.getPopExitAnim() : z10 ? fragment.getEnterAnim() : fragment.getExitAnim();
    }

    static d c(Context context, Fragment fragment, boolean z10, boolean z11) {
        int nextTransition = fragment.getNextTransition();
        int iB = b(fragment, z10, z11);
        boolean z12 = false;
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            int i10 = o0.b.f32869c;
            if (viewGroup.getTag(i10) != null) {
                fragment.mContainer.setTag(i10, null);
            }
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        Animation animationOnCreateAnimation = fragment.onCreateAnimation(nextTransition, z10, iB);
        if (animationOnCreateAnimation != null) {
            return new d(animationOnCreateAnimation);
        }
        Animator animatorOnCreateAnimator = fragment.onCreateAnimator(nextTransition, z10, iB);
        if (animatorOnCreateAnimator != null) {
            return new d(animatorOnCreateAnimator);
        }
        if (iB == 0 && nextTransition != 0) {
            iB = d(nextTransition, z10);
        }
        if (iB != 0) {
            boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(iB));
            if (zEquals) {
                try {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, iB);
                    if (animationLoadAnimation != null) {
                        return new d(animationLoadAnimation);
                    }
                    z12 = true;
                } catch (Resources.NotFoundException e10) {
                    throw e10;
                } catch (RuntimeException unused) {
                }
            }
            if (!z12) {
                try {
                    Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, iB);
                    if (animatorLoadAnimator != null) {
                        return new d(animatorLoadAnimator);
                    }
                } catch (RuntimeException e11) {
                    if (zEquals) {
                        throw e11;
                    }
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, iB);
                    if (animationLoadAnimation2 != null) {
                        return new d(animationLoadAnimation2);
                    }
                }
            }
        }
        return null;
    }

    private static int d(int i10, boolean z10) {
        if (i10 == 4097) {
            return z10 ? o0.a.f32865e : o0.a.f32866f;
        }
        if (i10 == 4099) {
            return z10 ? o0.a.f32863c : o0.a.f32864d;
        }
        if (i10 != 8194) {
            return -1;
        }
        return z10 ? o0.a.f32861a : o0.a.f32862b;
    }

    /* JADX INFO: compiled from: FragmentAnim.java */
    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Animation f3246a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Animator f3247b;

        d(Animation animation) {
            this.f3246a = animation;
            this.f3247b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        d(Animator animator) {
            this.f3246a = null;
            this.f3247b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    /* JADX INFO: compiled from: FragmentAnim.java */
    static class e extends AnimationSet implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final ViewGroup f3248o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final View f3249p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f3250q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private boolean f3251r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f3252s;

        e(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f3252s = true;
            this.f3248o = viewGroup;
            this.f3249p = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j10, Transformation transformation) {
            this.f3252s = true;
            if (this.f3250q) {
                return !this.f3251r;
            }
            if (!super.getTransformation(j10, transformation)) {
                this.f3250q = true;
                androidx.core.view.x.a(this.f3248o, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f3250q || !this.f3252s) {
                this.f3248o.endViewTransition(this.f3249p);
                this.f3251r = true;
            } else {
                this.f3252s = false;
                this.f3248o.post(this);
            }
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j10, Transformation transformation, float f10) {
            this.f3252s = true;
            if (this.f3250q) {
                return !this.f3251r;
            }
            if (!super.getTransformation(j10, transformation, f10)) {
                this.f3250q = true;
                androidx.core.view.x.a(this.f3248o, this);
            }
            return true;
        }
    }
}
