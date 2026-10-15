package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.LinearLayoutCompat;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements g.b, androidx.appcompat.view.menu.n {
    private androidx.appcompat.view.menu.g D;
    private Context E;
    private int F;
    private boolean G;
    private androidx.appcompat.widget.c H;
    private m.a I;
    g.a J;
    private boolean K;
    private int L;
    private int M;
    private int N;
    e O;

    public interface a {
        boolean a();

        boolean b();
    }

    private static class b implements m.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(androidx.appcompat.view.menu.g gVar) {
            return false;
        }
    }

    public static class c extends LinearLayoutCompat.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f798a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f799b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f800c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f801d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f802e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f803f;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(c cVar) {
            super(cVar);
            this.f798a = cVar.f798a;
        }

        public c(int i10, int i11) {
            super(i10, i11);
            this.f798a = false;
        }
    }

    private class d implements g.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            e eVar = ActionMenuView.this.O;
            return eVar != null && eVar.onMenuItemClick(menuItem);
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(androidx.appcompat.view.menu.g gVar) {
            g.a aVar = ActionMenuView.this.J;
            if (aVar != null) {
                aVar.b(gVar);
            }
        }
    }

    public interface e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    static int L(View view, int i10, int i11, int i12, int i13) {
        c cVar = (c) view.getLayoutParams();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i12) - i13, View.MeasureSpec.getMode(i12));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z10 = actionMenuItemView != null && actionMenuItemView.p();
        int i14 = 2;
        if (i11 <= 0 || (z10 && i11 < 2)) {
            i14 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i11 * i10, Integer.MIN_VALUE), iMakeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i15 = measuredWidth / i10;
            if (measuredWidth % i10 != 0) {
                i15++;
            }
            if (!z10 || i15 >= 2) {
                i14 = i15;
            }
        }
        cVar.f801d = !cVar.f798a && z10;
        cVar.f799b = i14;
        view.measure(View.MeasureSpec.makeMeasureSpec(i10 * i14, 1073741824), iMakeMeasureSpec);
        return i14;
    }

    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9, types: [boolean, int] */
    private void M(int i10, int i11) {
        int i12;
        int i13;
        boolean z10;
        int i14;
        boolean z11;
        boolean z12;
        int i15;
        ?? r14;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, paddingTop, -2);
        int i16 = size - paddingLeft;
        int i17 = this.M;
        int i18 = i16 / i17;
        int i19 = i16 % i17;
        if (i18 == 0) {
            setMeasuredDimension(i16, 0);
            return;
        }
        int i20 = i17 + (i19 / i18);
        int childCount = getChildCount();
        int iMax = 0;
        int i21 = 0;
        boolean z13 = false;
        int i22 = 0;
        int iMax2 = 0;
        int i23 = 0;
        long j10 = 0;
        while (i21 < childCount) {
            View childAt = getChildAt(i21);
            int i24 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z14 = childAt instanceof ActionMenuItemView;
                int i25 = i22 + 1;
                if (z14) {
                    int i26 = this.N;
                    i15 = i25;
                    r14 = 0;
                    childAt.setPadding(i26, 0, i26, 0);
                } else {
                    i15 = i25;
                    r14 = 0;
                }
                c cVar = (c) childAt.getLayoutParams();
                cVar.f803f = r14;
                cVar.f800c = r14;
                cVar.f799b = r14;
                cVar.f801d = r14;
                ((LinearLayout.LayoutParams) cVar).leftMargin = r14;
                ((LinearLayout.LayoutParams) cVar).rightMargin = r14;
                cVar.f802e = z14 && ((ActionMenuItemView) childAt).p();
                int iL = L(childAt, i20, cVar.f798a ? 1 : i18, childMeasureSpec, paddingTop);
                iMax2 = Math.max(iMax2, iL);
                if (cVar.f801d) {
                    i23++;
                }
                if (cVar.f798a) {
                    z13 = true;
                }
                i18 -= iL;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (iL == 1) {
                    j10 |= (long) (1 << i21);
                    iMax = iMax;
                }
                i22 = i15;
            }
            i21++;
            size2 = i24;
        }
        int i27 = size2;
        boolean z15 = z13 && i22 == 2;
        boolean z16 = false;
        while (i23 > 0 && i18 > 0) {
            int i28 = 0;
            int i29 = 0;
            int i30 = Integer.MAX_VALUE;
            long j11 = 0;
            while (i29 < childCount) {
                boolean z17 = z16;
                c cVar2 = (c) getChildAt(i29).getLayoutParams();
                int i31 = iMax;
                if (cVar2.f801d) {
                    int i32 = cVar2.f799b;
                    if (i32 < i30) {
                        j11 = 1 << i29;
                        i30 = i32;
                        i28 = 1;
                    } else if (i32 == i30) {
                        i28++;
                        j11 |= 1 << i29;
                    }
                }
                i29++;
                iMax = i31;
                z16 = z17;
            }
            z10 = z16;
            i14 = iMax;
            j10 |= j11;
            if (i28 > i18) {
                i12 = mode;
                i13 = i16;
                break;
            }
            int i33 = i30 + 1;
            int i34 = 0;
            while (i34 < childCount) {
                View childAt2 = getChildAt(i34);
                c cVar3 = (c) childAt2.getLayoutParams();
                int i35 = i16;
                int i36 = mode;
                long j12 = 1 << i34;
                if ((j11 & j12) == 0) {
                    if (cVar3.f799b == i33) {
                        j10 |= j12;
                    }
                    z12 = z15;
                } else {
                    if (z15 && cVar3.f802e && i18 == 1) {
                        int i37 = this.N;
                        z12 = z15;
                        childAt2.setPadding(i37 + i20, 0, i37, 0);
                    } else {
                        z12 = z15;
                    }
                    cVar3.f799b++;
                    cVar3.f803f = true;
                    i18--;
                }
                i34++;
                mode = i36;
                i16 = i35;
                z15 = z12;
            }
            iMax = i14;
            z16 = true;
        }
        i12 = mode;
        i13 = i16;
        z10 = z16;
        i14 = iMax;
        boolean z18 = !z13 && i22 == 1;
        if (i18 <= 0 || j10 == 0 || (i18 >= i22 - 1 && !z18 && iMax2 <= 1)) {
            z11 = z10;
        } else {
            float fBitCount = Long.bitCount(j10);
            if (!z18) {
                if ((j10 & 1) != 0 && !((c) getChildAt(0).getLayoutParams()).f802e) {
                    fBitCount -= 0.5f;
                }
                int i38 = childCount - 1;
                if ((j10 & ((long) (1 << i38))) != 0 && !((c) getChildAt(i38).getLayoutParams()).f802e) {
                    fBitCount -= 0.5f;
                }
            }
            int i39 = fBitCount > 0.0f ? (int) ((i18 * i20) / fBitCount) : 0;
            z11 = z10;
            for (int i40 = 0; i40 < childCount; i40++) {
                if ((j10 & ((long) (1 << i40))) != 0) {
                    View childAt3 = getChildAt(i40);
                    c cVar4 = (c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        cVar4.f800c = i39;
                        cVar4.f803f = true;
                        if (i40 == 0 && !cVar4.f802e) {
                            ((LinearLayout.LayoutParams) cVar4).leftMargin = (-i39) / 2;
                        }
                    } else if (cVar4.f798a) {
                        cVar4.f800c = i39;
                        cVar4.f803f = true;
                        ((LinearLayout.LayoutParams) cVar4).rightMargin = (-i39) / 2;
                    } else {
                        if (i40 != 0) {
                            ((LinearLayout.LayoutParams) cVar4).leftMargin = i39 / 2;
                        }
                        if (i40 != childCount - 1) {
                            ((LinearLayout.LayoutParams) cVar4).rightMargin = i39 / 2;
                        }
                    }
                    z11 = true;
                }
            }
        }
        if (z11) {
            for (int i41 = 0; i41 < childCount; i41++) {
                View childAt4 = getChildAt(i41);
                c cVar5 = (c) childAt4.getLayoutParams();
                if (cVar5.f803f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((cVar5.f799b * i20) + cVar5.f800c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i13, i12 != 1073741824 ? i14 : i27);
    }

    public void B() {
        androidx.appcompat.widget.c cVar = this.H;
        if (cVar != null) {
            cVar.y();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public c generateDefaultLayoutParams() {
        c cVar = new c(-2, -2);
        ((LinearLayout.LayoutParams) cVar).gravity = 16;
        return cVar;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        c cVar = layoutParams instanceof c ? new c((c) layoutParams) : new c(layoutParams);
        if (((LinearLayout.LayoutParams) cVar).gravity <= 0) {
            ((LinearLayout.LayoutParams) cVar).gravity = 16;
        }
        return cVar;
    }

    public c F() {
        c cVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        cVarGenerateDefaultLayoutParams.f798a = true;
        return cVarGenerateDefaultLayoutParams;
    }

    protected boolean G(int i10) {
        boolean zA = false;
        if (i10 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i10 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i10);
        if (i10 < getChildCount() && (childAt instanceof a)) {
            zA = false | ((a) childAt).a();
        }
        return (i10 <= 0 || !(childAt2 instanceof a)) ? zA : zA | ((a) childAt2).b();
    }

    public boolean H() {
        androidx.appcompat.widget.c cVar = this.H;
        return cVar != null && cVar.B();
    }

    public boolean I() {
        androidx.appcompat.widget.c cVar = this.H;
        return cVar != null && cVar.D();
    }

    public boolean J() {
        androidx.appcompat.widget.c cVar = this.H;
        return cVar != null && cVar.E();
    }

    public boolean K() {
        return this.G;
    }

    public androidx.appcompat.view.menu.g N() {
        return this.D;
    }

    public void O(m.a aVar, g.a aVar2) {
        this.I = aVar;
        this.J = aVar2;
    }

    public boolean P() {
        androidx.appcompat.widget.c cVar = this.H;
        return cVar != null && cVar.K();
    }

    @Override // androidx.appcompat.view.menu.g.b
    public boolean a(androidx.appcompat.view.menu.i iVar) {
        return this.D.L(iVar, 0);
    }

    @Override // androidx.appcompat.view.menu.n
    public void b(androidx.appcompat.view.menu.g gVar) {
        this.D = gVar;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public Menu getMenu() {
        if (this.D == null) {
            Context context = getContext();
            androidx.appcompat.view.menu.g gVar = new androidx.appcompat.view.menu.g(context);
            this.D = gVar;
            gVar.R(new d());
            androidx.appcompat.widget.c cVar = new androidx.appcompat.widget.c(context);
            this.H = cVar;
            cVar.J(true);
            androidx.appcompat.widget.c cVar2 = this.H;
            m.a bVar = this.I;
            if (bVar == null) {
                bVar = new b();
            }
            cVar2.g(bVar);
            this.D.c(this.H, this.E);
            this.H.H(this);
        }
        return this.D;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.H.A();
    }

    public int getPopupTheme() {
        return this.F;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.widget.c cVar = this.H;
        if (cVar != null) {
            cVar.c(false);
            if (this.H.E()) {
                this.H.B();
                this.H.K();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        B();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int width;
        int paddingLeft;
        if (!this.K) {
            super.onLayout(z10, i10, i11, i12, i13);
            return;
        }
        int childCount = getChildCount();
        int i14 = (i13 - i11) / 2;
        int dividerWidth = getDividerWidth();
        int i15 = i12 - i10;
        int paddingRight = (i15 - getPaddingRight()) - getPaddingLeft();
        boolean zB = f1.b(this);
        int i16 = 0;
        int i17 = 0;
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt = getChildAt(i18);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f798a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (G(i18)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zB) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) cVar).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) cVar).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i19 = i14 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i19, width, measuredHeight + i19);
                    paddingRight -= measuredWidth;
                    i16 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) cVar).leftMargin) + ((LinearLayout.LayoutParams) cVar).rightMargin;
                    G(i18);
                    i17++;
                }
            }
        }
        if (childCount == 1 && i16 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i20 = (i15 / 2) - (measuredWidth2 / 2);
            int i21 = i14 - (measuredHeight2 / 2);
            childAt2.layout(i20, i21, measuredWidth2 + i20, measuredHeight2 + i21);
            return;
        }
        int i22 = i17 - (i16 ^ 1);
        int iMax = Math.max(0, i22 > 0 ? paddingRight / i22 : 0);
        if (zB) {
            int width2 = getWidth() - getPaddingRight();
            for (int i23 = 0; i23 < childCount; i23++) {
                View childAt3 = getChildAt(i23);
                c cVar2 = (c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !cVar2.f798a) {
                    int i24 = width2 - ((LinearLayout.LayoutParams) cVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i25 = i14 - (measuredHeight3 / 2);
                    childAt3.layout(i24 - measuredWidth3, i25, i24, measuredHeight3 + i25);
                    width2 = i24 - ((measuredWidth3 + ((LinearLayout.LayoutParams) cVar2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i26 = 0; i26 < childCount; i26++) {
            View childAt4 = getChildAt(i26);
            c cVar3 = (c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !cVar3.f798a) {
                int i27 = paddingLeft2 + ((LinearLayout.LayoutParams) cVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i28 = i14 - (measuredHeight4 / 2);
                childAt4.layout(i27, i28, i27 + measuredWidth4, measuredHeight4 + i28);
                paddingLeft2 = i27 + measuredWidth4 + ((LinearLayout.LayoutParams) cVar3).rightMargin + iMax;
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    protected void onMeasure(int i10, int i11) {
        androidx.appcompat.view.menu.g gVar;
        boolean z10 = this.K;
        boolean z11 = View.MeasureSpec.getMode(i10) == 1073741824;
        this.K = z11;
        if (z10 != z11) {
            this.L = 0;
        }
        int size = View.MeasureSpec.getSize(i10);
        if (this.K && (gVar = this.D) != null && size != this.L) {
            this.L = size;
            gVar.K(true);
        }
        int childCount = getChildCount();
        if (this.K && childCount > 0) {
            M(i10, i11);
            return;
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            c cVar = (c) getChildAt(i12).getLayoutParams();
            ((LinearLayout.LayoutParams) cVar).rightMargin = 0;
            ((LinearLayout.LayoutParams) cVar).leftMargin = 0;
        }
        super.onMeasure(i10, i11);
    }

    public void setExpandedActionViewsExclusive(boolean z10) {
        this.H.G(z10);
    }

    public void setOnMenuItemClickListener(e eVar) {
        this.O = eVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.H.I(drawable);
    }

    public void setOverflowReserved(boolean z10) {
        this.G = z10;
    }

    public void setPopupTheme(int i10) {
        if (this.F != i10) {
            this.F = i10;
            if (i10 == 0) {
                this.E = getContext();
            } else {
                this.E = new ContextThemeWrapper(getContext(), i10);
            }
        }
    }

    public void setPresenter(androidx.appcompat.widget.c cVar) {
        this.H = cVar;
        cVar.H(this);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.M = (int) (56.0f * f10);
        this.N = (int) (f10 * 4.0f);
        this.E = context;
        this.F = 0;
    }
}
