package v2;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: ViewTarget.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class k<T extends View, Z> extends v2.a<Z> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static boolean f35786r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static Integer f35787s;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected final T f35788p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final a f35789q;

    /* JADX INFO: compiled from: ViewTarget.java */
    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f35790a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<h> f35791b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ViewTreeObserverOnPreDrawListenerC0285a f35792c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Point f35793d;

        /* JADX INFO: renamed from: v2.k$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ViewTarget.java */
        private static class ViewTreeObserverOnPreDrawListenerC0285a implements ViewTreeObserver.OnPreDrawListener {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private final WeakReference<a> f35794o;

            public ViewTreeObserverOnPreDrawListenerC0285a(a aVar) {
                this.f35794o = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called listener=" + this);
                }
                a aVar = this.f35794o.get();
                if (aVar == null) {
                    return true;
                }
                aVar.b();
                return true;
            }
        }

        public a(View view) {
            this.f35790a = view;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            if (this.f35791b.isEmpty()) {
                return;
            }
            int iG = g();
            int iF = f();
            if (h(iG) && h(iF)) {
                i(iG, iF);
                ViewTreeObserver viewTreeObserver = this.f35790a.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnPreDrawListener(this.f35792c);
                }
                this.f35792c = null;
            }
        }

        @TargetApi(13)
        private Point c() {
            Point point = this.f35793d;
            if (point != null) {
                return point;
            }
            Display defaultDisplay = ((WindowManager) this.f35790a.getContext().getSystemService("window")).getDefaultDisplay();
            if (Build.VERSION.SDK_INT >= 13) {
                Point point2 = new Point();
                this.f35793d = point2;
                defaultDisplay.getSize(point2);
            } else {
                this.f35793d = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
            }
            return this.f35793d;
        }

        private int e(int i10, boolean z10) {
            if (i10 != -2) {
                return i10;
            }
            Point pointC = c();
            return z10 ? pointC.y : pointC.x;
        }

        private int f() {
            ViewGroup.LayoutParams layoutParams = this.f35790a.getLayoutParams();
            if (h(this.f35790a.getHeight())) {
                return this.f35790a.getHeight();
            }
            if (layoutParams != null) {
                return e(layoutParams.height, true);
            }
            return 0;
        }

        private int g() {
            ViewGroup.LayoutParams layoutParams = this.f35790a.getLayoutParams();
            if (h(this.f35790a.getWidth())) {
                return this.f35790a.getWidth();
            }
            if (layoutParams != null) {
                return e(layoutParams.width, false);
            }
            return 0;
        }

        private boolean h(int i10) {
            return i10 > 0 || i10 == -2;
        }

        private void i(int i10, int i11) {
            Iterator<h> it = this.f35791b.iterator();
            while (it.hasNext()) {
                it.next().g(i10, i11);
            }
            this.f35791b.clear();
        }

        public void d(h hVar) {
            int iG = g();
            int iF = f();
            if (h(iG) && h(iF)) {
                hVar.g(iG, iF);
                return;
            }
            if (!this.f35791b.contains(hVar)) {
                this.f35791b.add(hVar);
            }
            if (this.f35792c == null) {
                ViewTreeObserver viewTreeObserver = this.f35790a.getViewTreeObserver();
                ViewTreeObserverOnPreDrawListenerC0285a viewTreeObserverOnPreDrawListenerC0285a = new ViewTreeObserverOnPreDrawListenerC0285a(this);
                this.f35792c = viewTreeObserverOnPreDrawListenerC0285a;
                viewTreeObserver.addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0285a);
            }
        }
    }

    public k(T t10) {
        Objects.requireNonNull(t10, "View must not be null!");
        this.f35788p = t10;
        this.f35789q = new a(t10);
    }

    private Object f() {
        Integer num = f35787s;
        return num == null ? this.f35788p.getTag() : this.f35788p.getTag(num.intValue());
    }

    private void n(Object obj) {
        Integer num = f35787s;
        if (num != null) {
            this.f35788p.setTag(num.intValue(), obj);
        } else {
            f35786r = true;
            this.f35788p.setTag(obj);
        }
    }

    public T a() {
        return this.f35788p;
    }

    @Override // v2.j
    public void i(h hVar) {
        this.f35789q.d(hVar);
    }

    @Override // v2.a, v2.j
    public t2.c k() {
        Object objF = f();
        if (objF == null) {
            return null;
        }
        if (objF instanceof t2.c) {
            return (t2.c) objF;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // v2.a, v2.j
    public void m(t2.c cVar) {
        n(cVar);
    }

    public String toString() {
        return "Target for: " + this.f35788p;
    }
}
