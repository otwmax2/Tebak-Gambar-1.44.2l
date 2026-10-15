package g1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

/* JADX INFO: compiled from: ChangeBounds.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends m {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final String[] f29642b0 = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final Property<Drawable, PointF> f29643c0 = new b(PointF.class, "boundsOrigin");

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final Property<k, PointF> f29644d0 = new C0162c(PointF.class, "topLeft");

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final Property<k, PointF> f29645e0 = new d(PointF.class, "bottomRight");

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static final Property<View, PointF> f29646f0 = new e(PointF.class, "bottomRight");

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static final Property<View, PointF> f29647g0 = new f(PointF.class, "topLeft");

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static final Property<View, PointF> f29648h0 = new g(PointF.class, "position");

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static g1.k f29649i0 = new g1.k();
    private int[] Y = new int[2];
    private boolean Z = false;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean f29650a0 = false;

    /* JADX INFO: compiled from: ChangeBounds.java */
    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f29651a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BitmapDrawable f29652b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f29653c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f29654d;

        a(ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f10) {
            this.f29651a = viewGroup;
            this.f29652b = bitmapDrawable;
            this.f29653c = view;
            this.f29654d = f10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            c0.b(this.f29651a).b(this.f29652b);
            c0.g(this.f29653c, this.f29654d);
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    static class b extends Property<Drawable, PointF> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Rect f29656a;

        b(Class cls, String str) {
            super(cls, str);
            this.f29656a = new Rect();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f29656a);
            Rect rect = this.f29656a;
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f29656a);
            this.f29656a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f29656a);
        }
    }

    /* JADX INFO: renamed from: g1.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ChangeBounds.java */
    static class C0162c extends Property<k, PointF> {
        C0162c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, PointF pointF) {
            kVar.c(pointF);
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    static class d extends Property<k, PointF> {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, PointF pointF) {
            kVar.a(pointF);
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    static class e extends Property<View, PointF> {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            c0.f(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    static class f extends Property<View, PointF> {
        f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            c0.f(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    static class g extends Property<View, PointF> {
        g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            int iRound = Math.round(pointF.x);
            int iRound2 = Math.round(pointF.y);
            c0.f(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f29657a;
        private k mViewBounds;

        h(k kVar) {
            this.f29657a = kVar;
            this.mViewBounds = kVar;
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    class i extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f29659a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f29660b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Rect f29661c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f29662d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f29663e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f29664f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f29665g;

        i(View view, Rect rect, int i10, int i11, int i12, int i13) {
            this.f29660b = view;
            this.f29661c = rect;
            this.f29662d = i10;
            this.f29663e = i11;
            this.f29664f = i12;
            this.f29665g = i13;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f29659a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f29659a) {
                return;
            }
            androidx.core.view.a0.x0(this.f29660b, this.f29661c);
            c0.f(this.f29660b, this.f29662d, this.f29663e, this.f29664f, this.f29665g);
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    class j extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f29667a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f29668b;

        j(ViewGroup viewGroup) {
            this.f29668b = viewGroup;
        }

        @Override // g1.n, g1.m.f
        public void a(m mVar) {
            x.c(this.f29668b, true);
        }

        @Override // g1.n, g1.m.f
        public void b(m mVar) {
            x.c(this.f29668b, false);
            this.f29667a = true;
        }

        @Override // g1.n, g1.m.f
        public void c(m mVar) {
            x.c(this.f29668b, false);
        }

        @Override // g1.m.f
        public void d(m mVar) {
            if (!this.f29667a) {
                x.c(this.f29668b, false);
            }
            mVar.R(this);
        }
    }

    /* JADX INFO: compiled from: ChangeBounds.java */
    private static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f29670a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f29671b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f29672c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f29673d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f29674e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f29675f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f29676g;

        k(View view) {
            this.f29674e = view;
        }

        private void b() {
            c0.f(this.f29674e, this.f29670a, this.f29671b, this.f29672c, this.f29673d);
            this.f29675f = 0;
            this.f29676g = 0;
        }

        void a(PointF pointF) {
            this.f29672c = Math.round(pointF.x);
            this.f29673d = Math.round(pointF.y);
            int i10 = this.f29676g + 1;
            this.f29676g = i10;
            if (this.f29675f == i10) {
                b();
            }
        }

        void c(PointF pointF) {
            this.f29670a = Math.round(pointF.x);
            this.f29671b = Math.round(pointF.y);
            int i10 = this.f29675f + 1;
            this.f29675f = i10;
            if (i10 == this.f29676g) {
                b();
            }
        }
    }

    private void f0(s sVar) {
        View view = sVar.f29775b;
        if (!androidx.core.view.a0.U(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        sVar.f29774a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        sVar.f29774a.put("android:changeBounds:parent", sVar.f29775b.getParent());
        if (this.f29650a0) {
            sVar.f29775b.getLocationInWindow(this.Y);
            sVar.f29774a.put("android:changeBounds:windowX", Integer.valueOf(this.Y[0]));
            sVar.f29774a.put("android:changeBounds:windowY", Integer.valueOf(this.Y[1]));
        }
        if (this.Z) {
            sVar.f29774a.put("android:changeBounds:clip", androidx.core.view.a0.w(view));
        }
    }

    private boolean g0(View view, View view2) {
        if (!this.f29650a0) {
            return true;
        }
        s sVarU = u(view, true);
        if (sVarU == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == sVarU.f29775b) {
            return true;
        }
        return false;
    }

    @Override // g1.m
    public String[] E() {
        return f29642b0;
    }

    @Override // g1.m
    public void h(s sVar) {
        f0(sVar);
    }

    @Override // g1.m
    public void k(s sVar) {
        f0(sVar);
    }

    @Override // g1.m
    public Animator o(ViewGroup viewGroup, s sVar, s sVar2) {
        int i10;
        View view;
        int i11;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator animatorC;
        if (sVar == null || sVar2 == null) {
            return null;
        }
        Map<String, Object> map = sVar.f29774a;
        Map<String, Object> map2 = sVar2.f29774a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = sVar2.f29775b;
        if (!g0(viewGroup2, viewGroup3)) {
            int iIntValue = ((Integer) sVar.f29774a.get("android:changeBounds:windowX")).intValue();
            int iIntValue2 = ((Integer) sVar.f29774a.get("android:changeBounds:windowY")).intValue();
            int iIntValue3 = ((Integer) sVar2.f29774a.get("android:changeBounds:windowX")).intValue();
            int iIntValue4 = ((Integer) sVar2.f29774a.get("android:changeBounds:windowY")).intValue();
            if (iIntValue == iIntValue3 && iIntValue2 == iIntValue4) {
                return null;
            }
            viewGroup.getLocationInWindow(this.Y);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
            view2.draw(new Canvas(bitmapCreateBitmap));
            BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            float fC = c0.c(view2);
            c0.g(view2, 0.0f);
            c0.b(viewGroup).a(bitmapDrawable);
            g1.g gVarW = w();
            int[] iArr = this.Y;
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, g1.i.a(f29643c0, gVarW.a(iIntValue - iArr[0], iIntValue2 - iArr[1], iIntValue3 - iArr[0], iIntValue4 - iArr[1])));
            objectAnimatorOfPropertyValuesHolder.addListener(new a(viewGroup, bitmapDrawable, view2, fC));
            return objectAnimatorOfPropertyValuesHolder;
        }
        Rect rect2 = (Rect) sVar.f29774a.get("android:changeBounds:bounds");
        Rect rect3 = (Rect) sVar2.f29774a.get("android:changeBounds:bounds");
        int i12 = rect2.left;
        int i13 = rect3.left;
        int i14 = rect2.top;
        int i15 = rect3.top;
        int i16 = rect2.right;
        int i17 = rect3.right;
        int i18 = rect2.bottom;
        int i19 = rect3.bottom;
        int i20 = i16 - i12;
        int i21 = i18 - i14;
        int i22 = i17 - i13;
        int i23 = i19 - i15;
        Rect rect4 = (Rect) sVar.f29774a.get("android:changeBounds:clip");
        Rect rect5 = (Rect) sVar2.f29774a.get("android:changeBounds:clip");
        if ((i20 == 0 || i21 == 0) && (i22 == 0 || i23 == 0)) {
            i10 = 0;
        } else {
            i10 = (i12 == i13 && i14 == i15) ? 0 : 1;
            if (i16 != i17 || i18 != i19) {
                i10++;
            }
        }
        if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
            i10++;
        }
        if (i10 <= 0) {
            return null;
        }
        if (this.Z) {
            view = view2;
            c0.f(view, i12, i14, Math.max(i20, i22) + i12, Math.max(i21, i23) + i14);
            ObjectAnimator objectAnimatorA = (i12 == i13 && i14 == i15) ? null : g1.f.a(view, f29648h0, w().a(i12, i14, i13, i15));
            if (rect4 == null) {
                i11 = 0;
                rect = new Rect(0, 0, i20, i21);
            } else {
                i11 = 0;
                rect = rect4;
            }
            Rect rect6 = rect5 == null ? new Rect(i11, i11, i22, i23) : rect5;
            if (rect.equals(rect6)) {
                objectAnimator = null;
            } else {
                androidx.core.view.a0.x0(view, rect);
                g1.k kVar = f29649i0;
                Object[] objArr = new Object[2];
                objArr[i11] = rect;
                objArr[1] = rect6;
                ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", kVar, objArr);
                objectAnimatorOfObject.addListener(new i(view, rect5, i13, i15, i17, i19));
                objectAnimator = objectAnimatorOfObject;
            }
            animatorC = r.c(objectAnimatorA, objectAnimator);
        } else {
            view = view2;
            c0.f(view, i12, i14, i16, i18);
            if (i10 != 2) {
                animatorC = (i12 == i13 && i14 == i15) ? g1.f.a(view, f29646f0, w().a(i16, i18, i17, i19)) : g1.f.a(view, f29647g0, w().a(i12, i14, i13, i15));
            } else if (i20 == i22 && i21 == i23) {
                animatorC = g1.f.a(view, f29648h0, w().a(i12, i14, i13, i15));
            } else {
                k kVar2 = new k(view);
                ObjectAnimator objectAnimatorA2 = g1.f.a(kVar2, f29644d0, w().a(i12, i14, i13, i15));
                ObjectAnimator objectAnimatorA3 = g1.f.a(kVar2, f29645e0, w().a(i16, i18, i17, i19));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorA2, objectAnimatorA3);
                animatorSet.addListener(new h(kVar2));
                animatorC = animatorSet;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            x.c(viewGroup4, true);
            a(new j(viewGroup4));
        }
        return animatorC;
    }
}
