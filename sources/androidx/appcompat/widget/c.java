package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.b;
import java.util.ArrayList;

/* JADX INFO: compiled from: ActionMenuPresenter.java */
/* JADX INFO: loaded from: classes.dex */
class c extends androidx.appcompat.view.menu.b implements b.a {
    private boolean A;
    private boolean B;
    private boolean C;
    private int D;
    private int E;
    private int F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private int K;
    private final SparseBooleanArray L;
    e M;
    a N;
    RunnableC0015c O;
    private b P;
    final f Q;
    int R;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    d f977y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Drawable f978z;

    /* JADX INFO: compiled from: ActionMenuPresenter.java */
    private class a extends androidx.appcompat.view.menu.l {
        public a(Context context, androidx.appcompat.view.menu.r rVar, View view) {
            super(context, rVar, view, false, f.a.f28988l);
            if (!((androidx.appcompat.view.menu.i) rVar.getItem()).l()) {
                View view2 = c.this.f977y;
                f(view2 == null ? (View) ((androidx.appcompat.view.menu.b) c.this).f627w : view2);
            }
            j(c.this.Q);
        }

        @Override // androidx.appcompat.view.menu.l
        protected void e() {
            c cVar = c.this;
            cVar.N = null;
            cVar.R = 0;
            super.e();
        }
    }

    /* JADX INFO: compiled from: ActionMenuPresenter.java */
    private class b extends ActionMenuItemView.b {
        b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public androidx.appcompat.view.menu.p a() {
            a aVar = c.this.N;
            if (aVar != null) {
                return aVar.c();
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActionMenuPresenter.java */
    private class RunnableC0015c implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private e f981o;

        public RunnableC0015c(e eVar) {
            this.f981o = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((androidx.appcompat.view.menu.b) c.this).f621q != null) {
                ((androidx.appcompat.view.menu.b) c.this).f621q.d();
            }
            View view = (View) ((androidx.appcompat.view.menu.b) c.this).f627w;
            if (view != null && view.getWindowToken() != null && this.f981o.m()) {
                c.this.M = this.f981o;
            }
            c.this.O = null;
        }
    }

    /* JADX INFO: compiled from: ActionMenuPresenter.java */
    private class d extends AppCompatImageView implements ActionMenuView.a {

        /* JADX INFO: compiled from: ActionMenuPresenter.java */
        class a extends i0 {

            /* JADX INFO: renamed from: x, reason: collision with root package name */
            final /* synthetic */ c f984x;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(View view, c cVar) {
                super(view);
                this.f984x = cVar;
            }

            @Override // androidx.appcompat.widget.i0
            public androidx.appcompat.view.menu.p b() {
                e eVar = c.this.M;
                if (eVar == null) {
                    return null;
                }
                return eVar.c();
            }

            @Override // androidx.appcompat.widget.i0
            public boolean d() {
                c.this.K();
                return true;
            }

            @Override // androidx.appcompat.widget.i0
            public boolean e() {
                c cVar = c.this;
                if (cVar.O != null) {
                    return false;
                }
                cVar.B();
                return true;
            }
        }

        public d(Context context) {
            super(context, null, f.a.f28987k);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            z0.a(this, getContentDescription());
            setOnTouchListener(new a(this, c.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean b() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            c.this.K();
            return true;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i10, int i11, int i12, int i13) {
            boolean frame = super.setFrame(i10, i11, i12, i13);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                androidx.core.graphics.drawable.a.l(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    /* JADX INFO: compiled from: ActionMenuPresenter.java */
    private class e extends androidx.appcompat.view.menu.l {
        public e(Context context, androidx.appcompat.view.menu.g gVar, View view, boolean z10) {
            super(context, gVar, view, z10, f.a.f28988l);
            h(8388613);
            j(c.this.Q);
        }

        @Override // androidx.appcompat.view.menu.l
        protected void e() {
            if (((androidx.appcompat.view.menu.b) c.this).f621q != null) {
                ((androidx.appcompat.view.menu.b) c.this).f621q.close();
            }
            c.this.M = null;
            super.e();
        }
    }

    /* JADX INFO: compiled from: ActionMenuPresenter.java */
    private class f implements m.a {
        f() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
            if (gVar instanceof androidx.appcompat.view.menu.r) {
                gVar.D().e(false);
            }
            m.a aVarM = c.this.m();
            if (aVarM != null) {
                aVarM.b(gVar, z10);
            }
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(androidx.appcompat.view.menu.g gVar) {
            if (gVar == ((androidx.appcompat.view.menu.b) c.this).f621q) {
                return false;
            }
            c.this.R = ((androidx.appcompat.view.menu.r) gVar).getItem().getItemId();
            m.a aVarM = c.this.m();
            if (aVarM != null) {
                return aVarM.c(gVar);
            }
            return false;
        }
    }

    public c(Context context) {
        super(context, f.g.f29081c, f.g.f29080b);
        this.L = new SparseBooleanArray();
        this.Q = new f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View z(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f627w;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof n.a) && ((n.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public Drawable A() {
        d dVar = this.f977y;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.A) {
            return this.f978z;
        }
        return null;
    }

    public boolean B() {
        Object obj;
        RunnableC0015c runnableC0015c = this.O;
        if (runnableC0015c != null && (obj = this.f627w) != null) {
            ((View) obj).removeCallbacks(runnableC0015c);
            this.O = null;
            return true;
        }
        e eVar = this.M;
        if (eVar == null) {
            return false;
        }
        eVar.b();
        return true;
    }

    public boolean C() {
        a aVar = this.N;
        if (aVar == null) {
            return false;
        }
        aVar.b();
        return true;
    }

    public boolean D() {
        return this.O != null || E();
    }

    public boolean E() {
        e eVar = this.M;
        return eVar != null && eVar.d();
    }

    public void F(Configuration configuration) {
        if (!this.G) {
            this.F = androidx.appcompat.view.a.b(this.f620p).d();
        }
        androidx.appcompat.view.menu.g gVar = this.f621q;
        if (gVar != null) {
            gVar.K(true);
        }
    }

    public void G(boolean z10) {
        this.J = z10;
    }

    public void H(ActionMenuView actionMenuView) {
        this.f627w = actionMenuView;
        actionMenuView.b(this.f621q);
    }

    public void I(Drawable drawable) {
        d dVar = this.f977y;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            this.A = true;
            this.f978z = drawable;
        }
    }

    public void J(boolean z10) {
        this.B = z10;
        this.C = true;
    }

    public boolean K() {
        androidx.appcompat.view.menu.g gVar;
        if (!this.B || E() || (gVar = this.f621q) == null || this.f627w == null || this.O != null || gVar.z().isEmpty()) {
            return false;
        }
        RunnableC0015c runnableC0015c = new RunnableC0015c(new e(this.f620p, this.f621q, this.f977y, true));
        this.O = runnableC0015c;
        ((View) this.f627w).post(runnableC0015c);
        return true;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
        y();
        super.b(gVar, z10);
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public void c(boolean z10) {
        super.c(z10);
        ((View) this.f627w).requestLayout();
        androidx.appcompat.view.menu.g gVar = this.f621q;
        boolean z11 = false;
        if (gVar != null) {
            ArrayList<androidx.appcompat.view.menu.i> arrayListS = gVar.s();
            int size = arrayListS.size();
            for (int i10 = 0; i10 < size; i10++) {
                androidx.core.view.b bVarB = arrayListS.get(i10).b();
                if (bVarB != null) {
                    bVarB.i(this);
                }
            }
        }
        androidx.appcompat.view.menu.g gVar2 = this.f621q;
        ArrayList<androidx.appcompat.view.menu.i> arrayListZ = gVar2 != null ? gVar2.z() : null;
        if (this.B && arrayListZ != null) {
            int size2 = arrayListZ.size();
            if (size2 == 1) {
                z11 = !arrayListZ.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z11 = true;
            }
        }
        if (z11) {
            if (this.f977y == null) {
                this.f977y = new d(this.f619o);
            }
            ViewGroup viewGroup = (ViewGroup) this.f977y.getParent();
            if (viewGroup != this.f627w) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f977y);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f627w;
                actionMenuView.addView(this.f977y, actionMenuView.F());
            }
        } else {
            d dVar = this.f977y;
            if (dVar != null) {
                Object parent = dVar.getParent();
                Object obj = this.f627w;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f977y);
                }
            }
        }
        ((ActionMenuView) this.f627w).setOverflowReserved(this.B);
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        ArrayList<androidx.appcompat.view.menu.i> arrayListE;
        int size;
        int i10;
        int iL;
        int i11;
        c cVar = this;
        androidx.appcompat.view.menu.g gVar = cVar.f621q;
        View view = null;
        int i12 = 0;
        if (gVar != null) {
            arrayListE = gVar.E();
            size = arrayListE.size();
        } else {
            arrayListE = null;
            size = 0;
        }
        int i13 = cVar.F;
        int i14 = cVar.E;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) cVar.f627w;
        boolean z10 = false;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < size; i17++) {
            androidx.appcompat.view.menu.i iVar = arrayListE.get(i17);
            if (iVar.o()) {
                i15++;
            } else if (iVar.n()) {
                i16++;
            } else {
                z10 = true;
            }
            if (cVar.J && iVar.isActionViewExpanded()) {
                i13 = 0;
            }
        }
        if (cVar.B && (z10 || i16 + i15 > i13)) {
            i13--;
        }
        int i18 = i13 - i15;
        SparseBooleanArray sparseBooleanArray = cVar.L;
        sparseBooleanArray.clear();
        if (cVar.H) {
            int i19 = cVar.K;
            iL = i14 / i19;
            i10 = i19 + ((i14 % i19) / iL);
        } else {
            i10 = 0;
            iL = 0;
        }
        int i20 = 0;
        int i21 = 0;
        while (i20 < size) {
            androidx.appcompat.view.menu.i iVar2 = arrayListE.get(i20);
            if (iVar2.o()) {
                View viewN = cVar.n(iVar2, view, viewGroup);
                if (cVar.H) {
                    iL -= ActionMenuView.L(viewN, i10, iL, iMakeMeasureSpec, i12);
                } else {
                    viewN.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                int measuredWidth = viewN.getMeasuredWidth();
                i14 -= measuredWidth;
                if (i21 == 0) {
                    i21 = measuredWidth;
                }
                int groupId = iVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                iVar2.u(true);
                i11 = size;
            } else if (iVar2.n()) {
                int groupId2 = iVar2.getGroupId();
                boolean z11 = sparseBooleanArray.get(groupId2);
                boolean z12 = (i18 > 0 || z11) && i14 > 0 && (!cVar.H || iL > 0);
                boolean z13 = z12;
                i11 = size;
                if (z12) {
                    View viewN2 = cVar.n(iVar2, null, viewGroup);
                    if (cVar.H) {
                        int iL2 = ActionMenuView.L(viewN2, i10, iL, iMakeMeasureSpec, 0);
                        iL -= iL2;
                        if (iL2 == 0) {
                            z13 = false;
                        }
                    } else {
                        viewN2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    }
                    boolean z14 = z13;
                    int measuredWidth2 = viewN2.getMeasuredWidth();
                    i14 -= measuredWidth2;
                    if (i21 == 0) {
                        i21 = measuredWidth2;
                    }
                    z12 = z14 & (!cVar.H ? i14 + i21 <= 0 : i14 < 0);
                }
                if (z12 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z11) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i22 = 0; i22 < i20; i22++) {
                        androidx.appcompat.view.menu.i iVar3 = arrayListE.get(i22);
                        if (iVar3.getGroupId() == groupId2) {
                            if (iVar3.l()) {
                                i18++;
                            }
                            iVar3.u(false);
                        }
                    }
                }
                if (z12) {
                    i18--;
                }
                iVar2.u(z12);
            } else {
                i11 = size;
                iVar2.u(false);
                i20++;
                view = null;
                cVar = this;
                size = i11;
                i12 = 0;
            }
            i20++;
            view = null;
            cVar = this;
            size = i11;
            i12 = 0;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.b
    public void h(androidx.appcompat.view.menu.i iVar, n.a aVar) {
        aVar.e(iVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f627w);
        if (this.P == null) {
            this.P = new b();
        }
        actionMenuItemView.setPopupCallback(this.P);
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public void i(Context context, androidx.appcompat.view.menu.g gVar) {
        super.i(context, gVar);
        Resources resources = context.getResources();
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(context);
        if (!this.C) {
            this.B = aVarB.h();
        }
        if (!this.I) {
            this.D = aVarB.c();
        }
        if (!this.G) {
            this.F = aVarB.d();
        }
        int measuredWidth = this.D;
        if (this.B) {
            if (this.f977y == null) {
                d dVar = new d(this.f619o);
                this.f977y = dVar;
                if (this.A) {
                    dVar.setImageDrawable(this.f978z);
                    this.f978z = null;
                    this.A = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f977y.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f977y.getMeasuredWidth();
        } else {
            this.f977y = null;
        }
        this.E = measuredWidth;
        this.K = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public boolean k(androidx.appcompat.view.menu.r rVar) {
        boolean z10 = false;
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        androidx.appcompat.view.menu.r rVar2 = rVar;
        while (rVar2.e0() != this.f621q) {
            rVar2 = (androidx.appcompat.view.menu.r) rVar2.e0();
        }
        View viewZ = z(rVar2.getItem());
        if (viewZ == null) {
            return false;
        }
        this.R = rVar.getItem().getItemId();
        int size = rVar.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                break;
            }
            MenuItem item = rVar.getItem(i10);
            if (item.isVisible() && item.getIcon() != null) {
                z10 = true;
                break;
            }
            i10++;
        }
        a aVar = new a(this.f620p, rVar, viewZ);
        this.N = aVar;
        aVar.g(z10);
        this.N.k();
        super.k(rVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean l(ViewGroup viewGroup, int i10) {
        if (viewGroup.getChildAt(i10) == this.f977y) {
            return false;
        }
        return super.l(viewGroup, i10);
    }

    @Override // androidx.appcompat.view.menu.b
    public View n(androidx.appcompat.view.menu.i iVar, View view, ViewGroup viewGroup) {
        View actionView = iVar.getActionView();
        if (actionView == null || iVar.j()) {
            actionView = super.n(iVar, view, viewGroup);
        }
        actionView.setVisibility(iVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.b
    public androidx.appcompat.view.menu.n o(ViewGroup viewGroup) {
        androidx.appcompat.view.menu.n nVar = this.f627w;
        androidx.appcompat.view.menu.n nVarO = super.o(viewGroup);
        if (nVar != nVarO) {
            ((ActionMenuView) nVarO).setPresenter(this);
        }
        return nVarO;
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean q(int i10, androidx.appcompat.view.menu.i iVar) {
        return iVar.l();
    }

    public boolean y() {
        return B() | C();
    }
}
