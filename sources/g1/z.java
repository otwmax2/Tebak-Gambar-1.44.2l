package g1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: compiled from: ViewOverlayApi14.java */
/* JADX INFO: loaded from: classes.dex */
class z implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f29788a;

    /* JADX INFO: compiled from: ViewOverlayApi14.java */
    static class a extends ViewGroup {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        static Method f29789t;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        ViewGroup f29790o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        View f29791p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        ArrayList<Drawable> f29792q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        z f29793r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f29794s;

        static {
            try {
                Class cls = Integer.TYPE;
                f29789t = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, z zVar) {
            super(context);
            this.f29792q = null;
            this.f29790o = viewGroup;
            this.f29791p = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f29793r = zVar;
        }

        private void c() {
            if (this.f29794s) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        private void d() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f29792q;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f29794s = true;
                    this.f29790o.removeView(this);
                }
            }
        }

        private void e(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f29790o.getLocationOnScreen(iArr2);
            this.f29791p.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        public void a(Drawable drawable) {
            c();
            if (this.f29792q == null) {
                this.f29792q = new ArrayList<>();
            }
            if (this.f29792q.contains(drawable)) {
                return;
            }
            this.f29792q.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        public void b(View view) {
            c();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f29790o && viewGroup.getParent() != null && androidx.core.view.a0.T(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f29790o.getLocationOnScreen(iArr2);
                    androidx.core.view.a0.a0(view, iArr[0] - iArr2[0]);
                    androidx.core.view.a0.b0(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.f29790o.getLocationOnScreen(new int[2]);
            this.f29791p.getLocationOnScreen(new int[2]);
            canvas.translate(r0[0] - r1[0], r0[1] - r1[1]);
            canvas.clipRect(new Rect(0, 0, this.f29791p.getWidth(), this.f29791p.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f29792q;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f29792q.get(i10).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public void f(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f29792q;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                d();
            }
        }

        public void g(View view) {
            super.removeView(view);
            d();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f29790o == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (!(this.f29790o instanceof ViewGroup)) {
                invalidate(rect);
                return null;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            int[] iArr2 = new int[2];
            e(iArr2);
            rect.offset(iArr2[0], iArr2[1]);
            return super.invalidateChildInParent(iArr, rect);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f29792q) != null && arrayList.contains(drawable));
        }
    }

    z(Context context, ViewGroup viewGroup, View view) {
        this.f29788a = new a(context, viewGroup, view, this);
    }

    static z e(View view) {
        ViewGroup viewGroupF = f(view);
        if (viewGroupF == null) {
            return null;
        }
        int childCount = viewGroupF.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroupF.getChildAt(i10);
            if (childAt instanceof a) {
                return ((a) childAt).f29793r;
            }
        }
        return new u(viewGroupF.getContext(), viewGroupF, view);
    }

    static ViewGroup f(View view) {
        while (view != null) {
            if (view.getId() == 16908290 && (view instanceof ViewGroup)) {
                return (ViewGroup) view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (ViewGroup) view.getParent();
            }
        }
        return null;
    }

    @Override // g1.b0
    public void a(Drawable drawable) {
        this.f29788a.a(drawable);
    }

    @Override // g1.b0
    public void b(Drawable drawable) {
        this.f29788a.f(drawable);
    }
}
