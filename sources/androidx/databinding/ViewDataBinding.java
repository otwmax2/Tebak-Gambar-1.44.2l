package androidx.databinding;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.c;
import androidx.databinding.j;
import androidx.databinding.o;
import androidx.databinding.p;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.j;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewDataBinding extends androidx.databinding.a {
    static int E = 0;
    private static final int F = 8;
    private static final boolean G;
    private static final androidx.databinding.d H;
    private static final androidx.databinding.d I;
    private static final androidx.databinding.d J;
    private static final androidx.databinding.d K;
    private static final c.a<r, ViewDataBinding, Void> L;
    private static final ReferenceQueue<ViewDataBinding> M;
    private static final View.OnAttachStateChangeListener N;
    private ViewDataBinding A;
    private androidx.lifecycle.n B;
    private boolean C;
    protected boolean D;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Runnable f2602p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f2603q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f2604r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private t[] f2605s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final View f2606t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private androidx.databinding.c<r, ViewDataBinding, Void> f2607u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f2608v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Choreographer f2609w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Choreographer.FrameCallback f2610x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Handler f2611y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected final androidx.databinding.f f2612z;

    static class OnStartListener implements androidx.lifecycle.m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final WeakReference<ViewDataBinding> f2613a;

        @v(j.b.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = this.f2613a.get();
            if (viewDataBinding != null) {
                viewDataBinding.K();
            }
        }
    }

    class a implements androidx.databinding.d {
        a() {
        }

        @Override // androidx.databinding.d
        public t a(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            return new m(viewDataBinding, i10, referenceQueue).f();
        }
    }

    class b implements androidx.databinding.d {
        b() {
        }

        @Override // androidx.databinding.d
        public t a(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            return new k(viewDataBinding, i10, referenceQueue).j();
        }
    }

    class c implements androidx.databinding.d {
        c() {
        }

        @Override // androidx.databinding.d
        public t a(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            return new l(viewDataBinding, i10, referenceQueue).e();
        }
    }

    class d implements androidx.databinding.d {
        d() {
        }

        @Override // androidx.databinding.d
        public t a(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            return new j(viewDataBinding, i10, referenceQueue).g();
        }
    }

    class e extends c.a<r, ViewDataBinding, Void> {
        e() {
        }

        @Override // androidx.databinding.c.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(r rVar, ViewDataBinding viewDataBinding, int i10, Void r42) {
            if (i10 == 1) {
                if (rVar.c(viewDataBinding)) {
                    return;
                }
                viewDataBinding.f2604r = true;
            } else if (i10 == 2) {
                rVar.b(viewDataBinding);
            } else {
                if (i10 != 3) {
                    return;
                }
                rVar.a(viewDataBinding);
            }
        }
    }

    class f implements View.OnAttachStateChangeListener {
        f() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        @TargetApi(19)
        public void onViewAttachedToWindow(View view) {
            ViewDataBinding.Q(view).f2602p.run();
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                ViewDataBinding.this.f2603q = false;
            }
            ViewDataBinding.h0();
            if (Build.VERSION.SDK_INT < 19 || ViewDataBinding.this.f2606t.isAttachedToWindow()) {
                ViewDataBinding.this.K();
            } else {
                ViewDataBinding.this.f2606t.removeOnAttachStateChangeListener(ViewDataBinding.N);
                ViewDataBinding.this.f2606t.addOnAttachStateChangeListener(ViewDataBinding.N);
            }
        }
    }

    class h implements Choreographer.FrameCallback {
        h() {
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j10) {
            ViewDataBinding.this.f2602p.run();
        }
    }

    protected static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String[][] f2616a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[][] f2617b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[][] f2618c;

        public i(int i10) {
            this.f2616a = new String[i10][];
            this.f2617b = new int[i10][];
            this.f2618c = new int[i10][];
        }

        public void a(int i10, String[] strArr, int[] iArr, int[] iArr2) {
            this.f2616a[i10] = strArr;
            this.f2617b[i10] = iArr;
            this.f2618c[i10] = iArr2;
        }
    }

    private static class j implements u, q<LiveData<?>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final t<LiveData<?>> f2619a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        WeakReference<androidx.lifecycle.n> f2620b = null;

        public j(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f2619a = new t<>(viewDataBinding, i10, this, referenceQueue);
        }

        private androidx.lifecycle.n f() {
            WeakReference<androidx.lifecycle.n> weakReference = this.f2620b;
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }

        @Override // androidx.databinding.q
        public void a(androidx.lifecycle.n nVar) {
            androidx.lifecycle.n nVarF = f();
            LiveData<?> liveDataB = this.f2619a.b();
            if (liveDataB != null) {
                if (nVarF != null) {
                    liveDataB.m(this);
                }
                if (nVar != null) {
                    liveDataB.h(nVar, this);
                }
            }
            if (nVar != null) {
                this.f2620b = new WeakReference<>(nVar);
            }
        }

        @Override // androidx.lifecycle.u
        public void d(Object obj) {
            ViewDataBinding viewDataBindingA = this.f2619a.a();
            if (viewDataBindingA != null) {
                t<LiveData<?>> tVar = this.f2619a;
                viewDataBindingA.V(tVar.f2645b, tVar.b(), 0);
            }
        }

        @Override // androidx.databinding.q
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(LiveData<?> liveData) {
            androidx.lifecycle.n nVarF = f();
            if (nVarF != null) {
                liveData.h(nVarF, this);
            }
        }

        public t<LiveData<?>> g() {
            return this.f2619a;
        }

        @Override // androidx.databinding.q
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void b(LiveData<?> liveData) {
            liveData.m(this);
        }
    }

    private static class k extends o.a implements q<o> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final t<o> f2621a;

        public k(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f2621a = new t<>(viewDataBinding, i10, this, referenceQueue);
        }

        @Override // androidx.databinding.q
        public void a(androidx.lifecycle.n nVar) {
        }

        @Override // androidx.databinding.o.a
        public void d(o oVar) {
            o oVarB;
            ViewDataBinding viewDataBindingA = this.f2621a.a();
            if (viewDataBindingA != null && (oVarB = this.f2621a.b()) == oVar) {
                viewDataBindingA.V(this.f2621a.f2645b, oVarB, 0);
            }
        }

        @Override // androidx.databinding.o.a
        public void e(o oVar, int i10, int i11) {
            d(oVar);
        }

        @Override // androidx.databinding.o.a
        public void f(o oVar, int i10, int i11) {
            d(oVar);
        }

        @Override // androidx.databinding.o.a
        public void g(o oVar, int i10, int i11, int i12) {
            d(oVar);
        }

        @Override // androidx.databinding.o.a
        public void h(o oVar, int i10, int i11) {
            d(oVar);
        }

        @Override // androidx.databinding.q
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void c(o oVar) {
            oVar.K2(this);
        }

        public t<o> j() {
            return this.f2621a;
        }

        @Override // androidx.databinding.q
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void b(o oVar) {
            oVar.e0(this);
        }
    }

    private static class l extends p.a implements q<p> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final t<p> f2622a;

        public l(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f2622a = new t<>(viewDataBinding, i10, this, referenceQueue);
        }

        @Override // androidx.databinding.q
        public void a(androidx.lifecycle.n nVar) {
        }

        @Override // androidx.databinding.q
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void c(p pVar) {
            pVar.g(this);
        }

        public t<p> e() {
            return this.f2622a;
        }

        @Override // androidx.databinding.q
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void b(p pVar) {
            pVar.i(this);
        }
    }

    private static class m extends j.a implements q<androidx.databinding.j> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final t<androidx.databinding.j> f2623a;

        public m(ViewDataBinding viewDataBinding, int i10, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f2623a = new t<>(viewDataBinding, i10, this, referenceQueue);
        }

        @Override // androidx.databinding.q
        public void a(androidx.lifecycle.n nVar) {
        }

        @Override // androidx.databinding.j.a
        public void d(androidx.databinding.j jVar, int i10) {
            ViewDataBinding viewDataBindingA = this.f2623a.a();
            if (viewDataBindingA != null && this.f2623a.b() == jVar) {
                viewDataBindingA.V(this.f2623a.f2645b, jVar, i10);
            }
        }

        @Override // androidx.databinding.q
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(androidx.databinding.j jVar) {
            jVar.h(this);
        }

        public t<androidx.databinding.j> f() {
            return this.f2623a;
        }

        @Override // androidx.databinding.q
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(androidx.databinding.j jVar) {
            jVar.v(this);
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        E = i10;
        G = i10 >= 16;
        H = new a();
        I = new b();
        J = new c();
        K = new d();
        L = new e();
        M = new ReferenceQueue<>();
        if (i10 < 19) {
            N = null;
        } else {
            N = new f();
        }
    }

    protected ViewDataBinding(androidx.databinding.f fVar, View view, int i10) {
        this.f2602p = new g();
        this.f2603q = false;
        this.f2604r = false;
        this.f2612z = fVar;
        this.f2605s = new t[i10];
        this.f2606t = view;
        if (Looper.myLooper() == null) {
            throw new IllegalStateException("DataBinding must be created in view's UI Thread");
        }
        if (G) {
            this.f2609w = Choreographer.getInstance();
            this.f2610x = new h();
        } else {
            this.f2610x = null;
            this.f2611y = new Handler(Looper.myLooper());
        }
    }

    private static androidx.databinding.f E(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof androidx.databinding.f) {
            return (androidx.databinding.f) obj;
        }
        throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
    }

    private void G() {
        if (this.f2608v) {
            k0();
            return;
        }
        if (W()) {
            this.f2608v = true;
            this.f2604r = false;
            androidx.databinding.c<r, ViewDataBinding, Void> cVar = this.f2607u;
            if (cVar != null) {
                cVar.f(this, 1, null);
                if (this.f2604r) {
                    this.f2607u.f(this, 2, null);
                }
            }
            if (!this.f2604r) {
                F();
                androidx.databinding.c<r, ViewDataBinding, Void> cVar2 = this.f2607u;
                if (cVar2 != null) {
                    cVar2.f(this, 3, null);
                }
            }
            this.f2608v = false;
        }
    }

    protected static void H(ViewDataBinding viewDataBinding) {
        viewDataBinding.G();
    }

    private static int L(String str, int i10, i iVar, int i11) {
        CharSequence charSequenceSubSequence = str.subSequence(str.indexOf(47) + 1, str.length() - 2);
        String[] strArr = iVar.f2616a[i11];
        int length = strArr.length;
        while (i10 < length) {
            if (TextUtils.equals(charSequenceSubSequence, strArr[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    private static int N(ViewGroup viewGroup, int i10) {
        String str = (String) viewGroup.getChildAt(i10).getTag();
        String strSubstring = str.substring(0, str.length() - 1);
        int length = strSubstring.length();
        int childCount = viewGroup.getChildCount();
        for (int i11 = i10 + 1; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            String str2 = childAt.getTag() instanceof String ? (String) childAt.getTag() : null;
            if (str2 != null && str2.startsWith(strSubstring)) {
                if (str2.length() == str.length() && str2.charAt(str2.length() - 1) == '0') {
                    return i10;
                }
                if (b0(str2, length)) {
                    i10 = i11;
                }
            }
        }
        return i10;
    }

    static ViewDataBinding Q(View view) {
        if (view != null) {
            return (ViewDataBinding) view.getTag(e0.a.f28888a);
        }
        return null;
    }

    protected static <T extends ViewDataBinding> T X(LayoutInflater layoutInflater, int i10, ViewGroup viewGroup, boolean z10, Object obj) {
        return (T) androidx.databinding.g.i(layoutInflater, i10, viewGroup, z10, E(obj));
    }

    private static boolean b0(String str, int i10) {
        int length = str.length();
        if (length == i10) {
            return false;
        }
        while (i10 < length) {
            if (!Character.isDigit(str.charAt(i10))) {
                return false;
            }
            i10++;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void c0(androidx.databinding.f r16, android.view.View r17, java.lang.Object[] r18, androidx.databinding.ViewDataBinding.i r19, android.util.SparseIntArray r20, boolean r21) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.databinding.ViewDataBinding.c0(androidx.databinding.f, android.view.View, java.lang.Object[], androidx.databinding.ViewDataBinding$i, android.util.SparseIntArray, boolean):void");
    }

    protected static Object[] d0(androidx.databinding.f fVar, View view, int i10, i iVar, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i10];
        c0(fVar, view, objArr, iVar, sparseIntArray, true);
        return objArr;
    }

    private static int g0(String str, int i10) {
        int iCharAt = 0;
        while (i10 < str.length()) {
            iCharAt = (iCharAt * 10) + (str.charAt(i10) - '0');
            i10++;
        }
        return iCharAt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h0() {
        while (true) {
            Reference<? extends ViewDataBinding> referencePoll = M.poll();
            if (referencePoll == null) {
                return;
            }
            if (referencePoll instanceof t) {
                ((t) referencePoll).e();
            }
        }
    }

    protected static boolean l0(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    protected abstract void F();

    public void K() {
        ViewDataBinding viewDataBinding = this.A;
        if (viewDataBinding == null) {
            G();
        } else {
            viewDataBinding.K();
        }
    }

    public View S() {
        return this.f2606t;
    }

    protected void V(int i10, Object obj, int i11) {
        if (this.C || this.D || !e0(i10, obj, i11)) {
            return;
        }
        k0();
    }

    public abstract boolean W();

    public abstract void Z();

    protected abstract boolean e0(int i10, Object obj, int i11);

    protected void j0(int i10, Object obj, androidx.databinding.d dVar) {
        if (obj == null) {
            return;
        }
        t tVarA = this.f2605s[i10];
        if (tVarA == null) {
            tVarA = dVar.a(this, i10, M);
            this.f2605s[i10] = tVarA;
            androidx.lifecycle.n nVar = this.B;
            if (nVar != null) {
                tVarA.c(nVar);
            }
        }
        tVarA.d(obj);
    }

    protected void k0() {
        ViewDataBinding viewDataBinding = this.A;
        if (viewDataBinding != null) {
            viewDataBinding.k0();
            return;
        }
        androidx.lifecycle.n nVar = this.B;
        if (nVar == null || nVar.getLifecycle().b().c(j.c.STARTED)) {
            synchronized (this) {
                if (this.f2603q) {
                    return;
                }
                this.f2603q = true;
                if (G) {
                    this.f2609w.postFrameCallback(this.f2610x);
                } else {
                    this.f2611y.post(this.f2602p);
                }
            }
        }
    }

    protected void o0(ViewDataBinding viewDataBinding) {
        if (viewDataBinding != null) {
            viewDataBinding.A = this;
        }
    }

    protected void p0(View view) {
        view.setTag(e0.a.f28888a, this);
    }

    protected boolean q0(int i10) {
        t tVar = this.f2605s[i10];
        if (tVar != null) {
            return tVar.e();
        }
        return false;
    }

    protected boolean r0(int i10, androidx.databinding.j jVar) {
        return s0(i10, jVar, H);
    }

    protected boolean s0(int i10, Object obj, androidx.databinding.d dVar) {
        if (obj == null) {
            return q0(i10);
        }
        t tVar = this.f2605s[i10];
        if (tVar == null) {
            j0(i10, obj, dVar);
            return true;
        }
        if (tVar.b() == obj) {
            return false;
        }
        q0(i10);
        j0(i10, obj, dVar);
        return true;
    }

    protected ViewDataBinding(Object obj, View view, int i10) {
        this(E(obj), view, i10);
    }
}
