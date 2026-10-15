package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: ListPopupWindow.java */
/* JADX INFO: loaded from: classes.dex */
public class j0 implements androidx.appcompat.view.menu.p {
    private static Method U;
    private static Method V;
    private static Method W;
    private boolean A;
    private boolean B;
    int C;
    private View D;
    private int E;
    private DataSetObserver F;
    private View G;
    private Drawable H;
    private AdapterView.OnItemClickListener I;
    private AdapterView.OnItemSelectedListener J;
    final i K;
    private final h L;
    private final g M;
    private final e N;
    private Runnable O;
    final Handler P;
    private final Rect Q;
    private Rect R;
    private boolean S;
    PopupWindow T;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Context f1085o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ListAdapter f1086p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    g0 f1087q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f1088r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f1089s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f1090t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f1091u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f1092v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f1093w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f1094x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f1095y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f1096z;

    /* JADX INFO: compiled from: ListPopupWindow.java */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View viewT = j0.this.t();
            if (viewT == null || viewT.getWindowToken() == null) {
                return;
            }
            j0.this.h();
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    class b implements AdapterView.OnItemSelectedListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
            g0 g0Var;
            if (i10 == -1 || (g0Var = j0.this.f1087q) == null) {
                return;
            }
            g0Var.setListSelectionHidden(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    static class c {
        static int a(PopupWindow popupWindow, View view, int i10, boolean z10) {
            return popupWindow.getMaxAvailableHeight(view, i10, z10);
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    static class d {
        static void a(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        static void b(PopupWindow popupWindow, boolean z10) {
            popupWindow.setIsClippedToScreen(z10);
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    private class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j0.this.r();
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    private class f extends DataSetObserver {
        f() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (j0.this.a()) {
                j0.this.h();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            j0.this.dismiss();
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    private class g implements AbsListView.OnScrollListener {
        g() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
            if (i10 != 1 || j0.this.A() || j0.this.T.getContentView() == null) {
                return;
            }
            j0 j0Var = j0.this;
            j0Var.P.removeCallbacks(j0Var.K);
            j0.this.K.run();
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    private class h implements View.OnTouchListener {
        h() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = j0.this.T) != null && popupWindow.isShowing() && x10 >= 0 && x10 < j0.this.T.getWidth() && y10 >= 0 && y10 < j0.this.T.getHeight()) {
                j0 j0Var = j0.this;
                j0Var.P.postDelayed(j0Var.K, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            j0 j0Var2 = j0.this;
            j0Var2.P.removeCallbacks(j0Var2.K);
            return false;
        }
    }

    /* JADX INFO: compiled from: ListPopupWindow.java */
    private class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g0 g0Var = j0.this.f1087q;
            if (g0Var == null || !androidx.core.view.a0.T(g0Var) || j0.this.f1087q.getCount() <= j0.this.f1087q.getChildCount()) {
                return;
            }
            int childCount = j0.this.f1087q.getChildCount();
            j0 j0Var = j0.this;
            if (childCount <= j0Var.C) {
                j0Var.T.setInputMethodMode(2);
                j0.this.h();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                U = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                W = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                V = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public j0(Context context) {
        this(context, null, f.a.E);
    }

    private void C() {
        View view = this.D;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.D);
            }
        }
    }

    private void N(boolean z10) {
        if (Build.VERSION.SDK_INT > 28) {
            d.b(this.T, z10);
            return;
        }
        Method method = U;
        if (method != null) {
            try {
                method.invoke(this.T, Boolean.valueOf(z10));
            } catch (Exception unused) {
                Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
        }
    }

    private int q() {
        int measuredHeight;
        int i10;
        int iMakeMeasureSpec;
        View view;
        int i11;
        if (this.f1087q == null) {
            Context context = this.f1085o;
            this.O = new a();
            g0 g0VarS = s(context, !this.S);
            this.f1087q = g0VarS;
            Drawable drawable = this.H;
            if (drawable != null) {
                g0VarS.setSelector(drawable);
            }
            this.f1087q.setAdapter(this.f1086p);
            this.f1087q.setOnItemClickListener(this.I);
            this.f1087q.setFocusable(true);
            this.f1087q.setFocusableInTouchMode(true);
            this.f1087q.setOnItemSelectedListener(new b());
            this.f1087q.setOnScrollListener(this.M);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.J;
            if (onItemSelectedListener != null) {
                this.f1087q.setOnItemSelectedListener(onItemSelectedListener);
            }
            g0 g0Var = this.f1087q;
            View view2 = this.D;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i12 = this.E;
                if (i12 == 0) {
                    linearLayout.addView(view2);
                    linearLayout.addView(g0Var, layoutParams);
                } else if (i12 != 1) {
                    Log.e("ListPopupWindow", "Invalid hint position " + this.E);
                } else {
                    linearLayout.addView(g0Var, layoutParams);
                    linearLayout.addView(view2);
                }
                int i13 = this.f1089s;
                if (i13 >= 0) {
                    i11 = Integer.MIN_VALUE;
                } else {
                    i13 = 0;
                    i11 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i13, i11), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight = view2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                measuredHeight = 0;
                view = g0Var;
            }
            this.T.setContentView(view);
        } else {
            View view3 = this.D;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.T.getBackground();
        if (background != null) {
            background.getPadding(this.Q);
            Rect rect = this.Q;
            int i14 = rect.top;
            i10 = rect.bottom + i14;
            if (!this.f1093w) {
                this.f1091u = -i14;
            }
        } else {
            this.Q.setEmpty();
            i10 = 0;
        }
        int iU = u(t(), this.f1091u, this.T.getInputMethodMode() == 2);
        if (this.A || this.f1088r == -1) {
            return iU + i10;
        }
        int i15 = this.f1089s;
        if (i15 == -2) {
            int i16 = this.f1085o.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.Q;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i16 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i15 != -1) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i15, 1073741824);
        } else {
            int i17 = this.f1085o.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.Q;
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i17 - (rect3.left + rect3.right), 1073741824);
        }
        int iD = this.f1087q.d(iMakeMeasureSpec, 0, -1, iU - measuredHeight, -1);
        if (iD > 0) {
            measuredHeight += i10 + this.f1087q.getPaddingTop() + this.f1087q.getPaddingBottom();
        }
        return iD + measuredHeight;
    }

    private int u(View view, int i10, boolean z10) {
        if (Build.VERSION.SDK_INT > 23) {
            return c.a(this.T, view, i10, z10);
        }
        Method method = V;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.T, view, Integer.valueOf(i10), Boolean.valueOf(z10))).intValue();
            } catch (Exception unused) {
                Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return this.T.getMaxAvailableHeight(view, i10);
    }

    public boolean A() {
        return this.T.getInputMethodMode() == 2;
    }

    public boolean B() {
        return this.S;
    }

    public void D(View view) {
        this.G = view;
    }

    public void E(int i10) {
        this.T.setAnimationStyle(i10);
    }

    public void F(int i10) {
        Drawable background = this.T.getBackground();
        if (background == null) {
            Q(i10);
            return;
        }
        background.getPadding(this.Q);
        Rect rect = this.Q;
        this.f1089s = rect.left + rect.right + i10;
    }

    public void G(int i10) {
        this.f1096z = i10;
    }

    public void H(Rect rect) {
        this.R = rect != null ? new Rect(rect) : null;
    }

    public void I(int i10) {
        this.T.setInputMethodMode(i10);
    }

    public void J(boolean z10) {
        this.S = z10;
        this.T.setFocusable(z10);
    }

    public void K(PopupWindow.OnDismissListener onDismissListener) {
        this.T.setOnDismissListener(onDismissListener);
    }

    public void L(AdapterView.OnItemClickListener onItemClickListener) {
        this.I = onItemClickListener;
    }

    public void M(boolean z10) {
        this.f1095y = true;
        this.f1094x = z10;
    }

    public void O(int i10) {
        this.E = i10;
    }

    public void P(int i10) {
        g0 g0Var = this.f1087q;
        if (!a() || g0Var == null) {
            return;
        }
        g0Var.setListSelectionHidden(false);
        g0Var.setSelection(i10);
        if (g0Var.getChoiceMode() != 0) {
            g0Var.setItemChecked(i10, true);
        }
    }

    public void Q(int i10) {
        this.f1089s = i10;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean a() {
        return this.T.isShowing();
    }

    public void b(Drawable drawable) {
        this.T.setBackgroundDrawable(drawable);
    }

    public int c() {
        return this.f1090t;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        this.T.dismiss();
        C();
        this.T.setContentView(null);
        this.f1087q = null;
        this.P.removeCallbacks(this.K);
    }

    public void e(int i10) {
        this.f1090t = i10;
    }

    @Override // androidx.appcompat.view.menu.p
    public void h() {
        int iQ = q();
        boolean zA = A();
        androidx.core.widget.i.b(this.T, this.f1092v);
        if (this.T.isShowing()) {
            if (androidx.core.view.a0.T(t())) {
                int width = this.f1089s;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = t().getWidth();
                }
                int i10 = this.f1088r;
                if (i10 == -1) {
                    if (!zA) {
                        iQ = -1;
                    }
                    if (zA) {
                        this.T.setWidth(this.f1089s == -1 ? -1 : 0);
                        this.T.setHeight(0);
                    } else {
                        this.T.setWidth(this.f1089s == -1 ? -1 : 0);
                        this.T.setHeight(-1);
                    }
                } else if (i10 != -2) {
                    iQ = i10;
                }
                this.T.setOutsideTouchable((this.B || this.A) ? false : true);
                this.T.update(t(), this.f1090t, this.f1091u, width < 0 ? -1 : width, iQ < 0 ? -1 : iQ);
                return;
            }
            return;
        }
        int width2 = this.f1089s;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = t().getWidth();
        }
        int i11 = this.f1088r;
        if (i11 == -1) {
            iQ = -1;
        } else if (i11 != -2) {
            iQ = i11;
        }
        this.T.setWidth(width2);
        this.T.setHeight(iQ);
        N(true);
        this.T.setOutsideTouchable((this.B || this.A) ? false : true);
        this.T.setTouchInterceptor(this.L);
        if (this.f1095y) {
            androidx.core.widget.i.a(this.T, this.f1094x);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = W;
            if (method != null) {
                try {
                    method.invoke(this.T, this.R);
                } catch (Exception e10) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e10);
                }
            }
        } else {
            d.a(this.T, this.R);
        }
        androidx.core.widget.i.c(this.T, t(), this.f1090t, this.f1091u, this.f1096z);
        this.f1087q.setSelection(-1);
        if (!this.S || this.f1087q.isInTouchMode()) {
            r();
        }
        if (this.S) {
            return;
        }
        this.P.post(this.N);
    }

    public Drawable i() {
        return this.T.getBackground();
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView j() {
        return this.f1087q;
    }

    public void l(int i10) {
        this.f1091u = i10;
        this.f1093w = true;
    }

    public int o() {
        if (this.f1093w) {
            return this.f1091u;
        }
        return 0;
    }

    public void p(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.F;
        if (dataSetObserver == null) {
            this.F = new f();
        } else {
            ListAdapter listAdapter2 = this.f1086p;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1086p = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.F);
        }
        g0 g0Var = this.f1087q;
        if (g0Var != null) {
            g0Var.setAdapter(this.f1086p);
        }
    }

    public void r() {
        g0 g0Var = this.f1087q;
        if (g0Var != null) {
            g0Var.setListSelectionHidden(true);
            g0Var.requestLayout();
        }
    }

    g0 s(Context context, boolean z10) {
        return new g0(context, z10);
    }

    public View t() {
        return this.G;
    }

    public Object v() {
        if (a()) {
            return this.f1087q.getSelectedItem();
        }
        return null;
    }

    public long w() {
        if (a()) {
            return this.f1087q.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public int x() {
        if (a()) {
            return this.f1087q.getSelectedItemPosition();
        }
        return -1;
    }

    public View y() {
        if (a()) {
            return this.f1087q.getSelectedView();
        }
        return null;
    }

    public int z() {
        return this.f1089s;
    }

    public j0(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public j0(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f1088r = -2;
        this.f1089s = -2;
        this.f1092v = 1002;
        this.f1096z = 0;
        this.A = false;
        this.B = false;
        this.C = Integer.MAX_VALUE;
        this.E = 0;
        this.K = new i();
        this.L = new h();
        this.M = new g();
        this.N = new e();
        this.Q = new Rect();
        this.f1085o = context;
        this.P = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.j.f29172l1, i10, i11);
        this.f1090t = typedArrayObtainStyledAttributes.getDimensionPixelOffset(f.j.f29177m1, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(f.j.f29182n1, 0);
        this.f1091u = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1093w = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        r rVar = new r(context, attributeSet, i10, i11);
        this.T = rVar;
        rVar.setInputMethodMode(1);
    }
}
