package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.k0;
import androidx.appcompat.widget.l0;
import androidx.core.view.a0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: CascadingMenuPopup.java */
/* JADX INFO: loaded from: classes.dex */
final class d extends k implements View.OnKeyListener, PopupWindow.OnDismissListener {
    private static final int P = f.g.f29083e;
    private View C;
    View D;
    private boolean F;
    private boolean G;
    private int H;
    private int I;
    private boolean K;
    private m.a L;
    ViewTreeObserver M;
    private PopupWindow.OnDismissListener N;
    boolean O;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Context f632p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f633q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f634r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f635s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f636t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final Handler f637u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final List<g> f638v = new ArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final List<C0013d> f639w = new ArrayList();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f640x = new a();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final View.OnAttachStateChangeListener f641y = new b();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final k0 f642z = new c();
    private int A = 0;
    private int B = 0;
    private boolean J = false;
    private int E = D();

    /* JADX INFO: compiled from: CascadingMenuPopup.java */
    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!d.this.a() || d.this.f639w.size() <= 0 || d.this.f639w.get(0).f650a.B()) {
                return;
            }
            View view = d.this.D;
            if (view == null || !view.isShown()) {
                d.this.dismiss();
                return;
            }
            Iterator<C0013d> it = d.this.f639w.iterator();
            while (it.hasNext()) {
                it.next().f650a.h();
            }
        }
    }

    /* JADX INFO: compiled from: CascadingMenuPopup.java */
    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = d.this.M;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    d.this.M = view.getViewTreeObserver();
                }
                d dVar = d.this;
                dVar.M.removeGlobalOnLayoutListener(dVar.f640x);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* JADX INFO: compiled from: CascadingMenuPopup.java */
    class c implements k0 {

        /* JADX INFO: compiled from: CascadingMenuPopup.java */
        class a implements Runnable {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ C0013d f646o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            final /* synthetic */ MenuItem f647p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            final /* synthetic */ g f648q;

            a(C0013d c0013d, MenuItem menuItem, g gVar) {
                this.f646o = c0013d;
                this.f647p = menuItem;
                this.f648q = gVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0013d c0013d = this.f646o;
                if (c0013d != null) {
                    d.this.O = true;
                    c0013d.f651b.e(false);
                    d.this.O = false;
                }
                if (this.f647p.isEnabled() && this.f647p.hasSubMenu()) {
                    this.f648q.L(this.f647p, 4);
                }
            }
        }

        c() {
        }

        @Override // androidx.appcompat.widget.k0
        public void d(g gVar, MenuItem menuItem) {
            d.this.f637u.removeCallbacksAndMessages(null);
            int size = d.this.f639w.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    i10 = -1;
                    break;
                } else if (gVar == d.this.f639w.get(i10).f651b) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 == -1) {
                return;
            }
            int i11 = i10 + 1;
            d.this.f637u.postAtTime(new a(i11 < d.this.f639w.size() ? d.this.f639w.get(i11) : null, menuItem, gVar), gVar, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.k0
        public void g(g gVar, MenuItem menuItem) {
            d.this.f637u.removeCallbacksAndMessages(gVar);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CascadingMenuPopup.java */
    private static class C0013d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final l0 f650a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final g f651b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f652c;

        public C0013d(l0 l0Var, g gVar, int i10) {
            this.f650a = l0Var;
            this.f651b = gVar;
            this.f652c = i10;
        }

        public ListView a() {
            return this.f650a.j();
        }
    }

    public d(Context context, View view, int i10, int i11, boolean z10) {
        this.f632p = context;
        this.C = view;
        this.f634r = i10;
        this.f635s = i11;
        this.f636t = z10;
        Resources resources = context.getResources();
        this.f633q = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(f.d.f29015d));
        this.f637u = new Handler();
    }

    private int A(g gVar) {
        int size = this.f639w.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (gVar == this.f639w.get(i10).f651b) {
                return i10;
            }
        }
        return -1;
    }

    private MenuItem B(g gVar, g gVar2) {
        int size = gVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = gVar.getItem(i10);
            if (item.hasSubMenu() && gVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private View C(C0013d c0013d, g gVar) {
        f fVar;
        int headersCount;
        int firstVisiblePosition;
        MenuItem menuItemB = B(c0013d.f651b, gVar);
        if (menuItemB == null) {
            return null;
        }
        ListView listViewA = c0013d.a();
        ListAdapter adapter = listViewA.getAdapter();
        int i10 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            headersCount = headerViewListAdapter.getHeadersCount();
            fVar = (f) headerViewListAdapter.getWrappedAdapter();
        } else {
            fVar = (f) adapter;
            headersCount = 0;
        }
        int count = fVar.getCount();
        while (true) {
            if (i10 >= count) {
                i10 = -1;
                break;
            }
            if (menuItemB == fVar.getItem(i10)) {
                break;
            }
            i10++;
        }
        if (i10 != -1 && (firstVisiblePosition = (i10 + headersCount) - listViewA.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listViewA.getChildCount()) {
            return listViewA.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    private int D() {
        return a0.E(this.C) == 1 ? 0 : 1;
    }

    private int E(int i10) {
        List<C0013d> list = this.f639w;
        ListView listViewA = list.get(list.size() - 1).a();
        int[] iArr = new int[2];
        listViewA.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.D.getWindowVisibleDisplayFrame(rect);
        return this.E == 1 ? (iArr[0] + listViewA.getWidth()) + i10 > rect.right ? 0 : 1 : iArr[0] - i10 < 0 ? 1 : 0;
    }

    private void F(g gVar) {
        C0013d c0013d;
        View viewC;
        int i10;
        int i11;
        int i12;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f632p);
        f fVar = new f(gVar, layoutInflaterFrom, this.f636t, P);
        if (!a() && this.J) {
            fVar.d(true);
        } else if (a()) {
            fVar.d(k.x(gVar));
        }
        int iO = k.o(fVar, null, this.f632p, this.f633q);
        l0 l0VarZ = z();
        l0VarZ.p(fVar);
        l0VarZ.F(iO);
        l0VarZ.G(this.B);
        if (this.f639w.size() > 0) {
            List<C0013d> list = this.f639w;
            c0013d = list.get(list.size() - 1);
            viewC = C(c0013d, gVar);
        } else {
            c0013d = null;
            viewC = null;
        }
        if (viewC != null) {
            l0VarZ.U(false);
            l0VarZ.R(null);
            int iE = E(iO);
            boolean z10 = iE == 1;
            this.E = iE;
            if (Build.VERSION.SDK_INT >= 26) {
                l0VarZ.D(viewC);
                i11 = 0;
                i10 = 0;
            } else {
                int[] iArr = new int[2];
                this.C.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                viewC.getLocationOnScreen(iArr2);
                if ((this.B & 7) == 5) {
                    iArr[0] = iArr[0] + this.C.getWidth();
                    iArr2[0] = iArr2[0] + viewC.getWidth();
                }
                i10 = iArr2[0] - iArr[0];
                i11 = iArr2[1] - iArr[1];
            }
            if ((this.B & 5) == 5) {
                if (!z10) {
                    iO = viewC.getWidth();
                    i12 = i10 - iO;
                }
                i12 = i10 + iO;
            } else {
                if (z10) {
                    iO = viewC.getWidth();
                    i12 = i10 + iO;
                }
                i12 = i10 - iO;
            }
            l0VarZ.e(i12);
            l0VarZ.M(true);
            l0VarZ.l(i11);
        } else {
            if (this.F) {
                l0VarZ.e(this.H);
            }
            if (this.G) {
                l0VarZ.l(this.I);
            }
            l0VarZ.H(n());
        }
        this.f639w.add(new C0013d(l0VarZ, gVar, this.E));
        l0VarZ.h();
        ListView listViewJ = l0VarZ.j();
        listViewJ.setOnKeyListener(this);
        if (c0013d == null && this.K && gVar.x() != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(f.g.f29090l, (ViewGroup) listViewJ, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(gVar.x());
            listViewJ.addHeaderView(frameLayout, null, false);
            l0VarZ.h();
        }
    }

    private l0 z() {
        l0 l0Var = new l0(this.f632p, null, this.f634r, this.f635s);
        l0Var.T(this.f642z);
        l0Var.L(this);
        l0Var.K(this);
        l0Var.D(this.C);
        l0Var.G(this.B);
        l0Var.J(true);
        l0Var.I(2);
        return l0Var;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean a() {
        return this.f639w.size() > 0 && this.f639w.get(0).f650a.a();
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z10) {
        int iA = A(gVar);
        if (iA < 0) {
            return;
        }
        int i10 = iA + 1;
        if (i10 < this.f639w.size()) {
            this.f639w.get(i10).f651b.e(false);
        }
        C0013d c0013dRemove = this.f639w.remove(iA);
        c0013dRemove.f651b.O(this);
        if (this.O) {
            c0013dRemove.f650a.S(null);
            c0013dRemove.f650a.E(0);
        }
        c0013dRemove.f650a.dismiss();
        int size = this.f639w.size();
        if (size > 0) {
            this.E = this.f639w.get(size - 1).f652c;
        } else {
            this.E = D();
        }
        if (size != 0) {
            if (z10) {
                this.f639w.get(0).f651b.e(false);
                return;
            }
            return;
        }
        dismiss();
        m.a aVar = this.L;
        if (aVar != null) {
            aVar.b(gVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.M;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.M.removeGlobalOnLayoutListener(this.f640x);
            }
            this.M = null;
        }
        this.D.removeOnAttachStateChangeListener(this.f641y);
        this.N.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z10) {
        Iterator<C0013d> it = this.f639w.iterator();
        while (it.hasNext()) {
            k.y(it.next().a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        int size = this.f639w.size();
        if (size > 0) {
            C0013d[] c0013dArr = (C0013d[]) this.f639w.toArray(new C0013d[size]);
            for (int i10 = size - 1; i10 >= 0; i10--) {
                C0013d c0013d = c0013dArr[i10];
                if (c0013d.f650a.a()) {
                    c0013d.f650a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void g(m.a aVar) {
        this.L = aVar;
    }

    @Override // androidx.appcompat.view.menu.p
    public void h() {
        if (a()) {
            return;
        }
        Iterator<g> it = this.f638v.iterator();
        while (it.hasNext()) {
            F(it.next());
        }
        this.f638v.clear();
        View view = this.C;
        this.D = view;
        if (view != null) {
            boolean z10 = this.M == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.M = viewTreeObserver;
            if (z10) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f640x);
            }
            this.D.addOnAttachStateChangeListener(this.f641y);
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView j() {
        if (this.f639w.isEmpty()) {
            return null;
        }
        return this.f639w.get(r0.size() - 1).a();
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean k(r rVar) {
        for (C0013d c0013d : this.f639w) {
            if (rVar == c0013d.f651b) {
                c0013d.a().requestFocus();
                return true;
            }
        }
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        l(rVar);
        m.a aVar = this.L;
        if (aVar != null) {
            aVar.c(rVar);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.k
    public void l(g gVar) {
        gVar.c(this, this.f632p);
        if (a()) {
            F(gVar);
        } else {
            this.f638v.add(gVar);
        }
    }

    @Override // androidx.appcompat.view.menu.k
    protected boolean m() {
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0013d c0013d;
        int size = this.f639w.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                c0013d = null;
                break;
            }
            c0013d = this.f639w.get(i10);
            if (!c0013d.f650a.a()) {
                break;
            } else {
                i10++;
            }
        }
        if (c0013d != null) {
            c0013d.f651b.e(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i10 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.k
    public void p(View view) {
        if (this.C != view) {
            this.C = view;
            this.B = androidx.core.view.e.b(this.A, a0.E(view));
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void r(boolean z10) {
        this.J = z10;
    }

    @Override // androidx.appcompat.view.menu.k
    public void s(int i10) {
        if (this.A != i10) {
            this.A = i10;
            this.B = androidx.core.view.e.b(i10, a0.E(this.C));
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void t(int i10) {
        this.F = true;
        this.H = i10;
    }

    @Override // androidx.appcompat.view.menu.k
    public void u(PopupWindow.OnDismissListener onDismissListener) {
        this.N = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.k
    public void v(boolean z10) {
        this.K = z10;
    }

    @Override // androidx.appcompat.view.menu.k
    public void w(int i10) {
        this.G = true;
        this.I = i10;
    }
}
