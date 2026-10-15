package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    private int A;
    int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private o0 H;
    private int I;
    private int J;
    private int K;
    private CharSequence L;
    private CharSequence M;
    private ColorStateList N;
    private ColorStateList O;
    private boolean P;
    private boolean Q;
    private final ArrayList<View> R;
    private final ArrayList<View> S;
    private final int[] T;
    final androidx.core.view.k U;
    private ArrayList<MenuItem> V;
    f W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private final ActionMenuView.e f894a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private y0 f895b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private androidx.appcompat.widget.c f896c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private d f897d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private m.a f898e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private g.a f899f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private boolean f900g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private final Runnable f901h0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ActionMenuView f902o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private TextView f903p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private TextView f904q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ImageButton f905r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ImageView f906s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Drawable f907t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private CharSequence f908u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    ImageButton f909v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    View f910w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Context f911x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f912y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f913z;

    class a implements ActionMenuView.e {
        a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.e
        public boolean onMenuItemClick(MenuItem menuItem) {
            if (Toolbar.this.U.j(menuItem)) {
                return true;
            }
            f fVar = Toolbar.this.W;
            if (fVar != null) {
                return fVar.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.P();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.e();
        }
    }

    private class d implements androidx.appcompat.view.menu.m {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        androidx.appcompat.view.menu.g f917o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        androidx.appcompat.view.menu.i f918p;

        d() {
        }

        @Override // androidx.appcompat.view.menu.m
        public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
        }

        @Override // androidx.appcompat.view.menu.m
        public void c(boolean z10) {
            if (this.f918p != null) {
                androidx.appcompat.view.menu.g gVar = this.f917o;
                boolean z11 = false;
                if (gVar != null) {
                    int size = gVar.size();
                    int i10 = 0;
                    while (true) {
                        if (i10 >= size) {
                            break;
                        }
                        if (this.f917o.getItem(i10) == this.f918p) {
                            z11 = true;
                            break;
                        }
                        i10++;
                    }
                }
                if (z11) {
                    return;
                }
                e(this.f917o, this.f918p);
            }
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean d() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean e(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.i iVar) {
            KeyEvent.Callback callback = Toolbar.this.f910w;
            if (callback instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) callback).f();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f910w);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f909v);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f910w = null;
            toolbar3.a();
            this.f918p = null;
            Toolbar.this.requestLayout();
            iVar.r(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean f(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.i iVar) {
            Toolbar.this.g();
            ViewParent parent = Toolbar.this.f909v.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f909v);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f909v);
            }
            Toolbar.this.f910w = iVar.getActionView();
            this.f918p = iVar;
            ViewParent parent2 = Toolbar.this.f910w.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f910w);
                }
                e eVarGenerateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                eVarGenerateDefaultLayoutParams.f338a = 8388611 | (toolbar4.B & 112);
                eVarGenerateDefaultLayoutParams.f920b = 2;
                toolbar4.f910w.setLayoutParams(eVarGenerateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f910w);
            }
            Toolbar.this.I();
            Toolbar.this.requestLayout();
            iVar.r(true);
            KeyEvent.Callback callback = Toolbar.this.f910w;
            if (callback instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) callback).c();
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.m
        public void i(Context context, androidx.appcompat.view.menu.g gVar) {
            androidx.appcompat.view.menu.i iVar;
            androidx.appcompat.view.menu.g gVar2 = this.f917o;
            if (gVar2 != null && (iVar = this.f918p) != null) {
                gVar2.f(iVar);
            }
            this.f917o = gVar;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean k(androidx.appcompat.view.menu.r rVar) {
            return false;
        }
    }

    public interface f {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, f.a.N);
    }

    private int C(View view, int i10, int[] iArr, int i11) {
        e eVar = (e) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin - iArr[0];
        int iMax = i10 + Math.max(0, i12);
        iArr[0] = Math.max(0, -i12);
        int iQ = q(view, i11);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iQ, iMax + measuredWidth, view.getMeasuredHeight() + iQ);
        return iMax + measuredWidth + ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
    }

    private int D(View view, int i10, int[] iArr, int i11) {
        e eVar = (e) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin - iArr[1];
        int iMax = i10 - Math.max(0, i12);
        iArr[1] = Math.max(0, -i12);
        int iQ = q(view, i11);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iQ, iMax, view.getMeasuredHeight() + iQ);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) eVar).leftMargin);
    }

    private int E(View view, int i10, int i11, int i12, int i13, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i14 = marginLayoutParams.leftMargin - iArr[0];
        int i15 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i14) + Math.max(0, i15);
        iArr[0] = Math.max(0, -i14);
        iArr[1] = Math.max(0, -i15);
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + iMax + i11, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i12, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    private void F(View view, int i10, int i11, int i12, int i13, int i14) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i12, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i14 >= 0) {
            if (mode != 0) {
                i14 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i14);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private void G() {
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        this.U.h(menu, getMenuInflater());
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.V = currentMenuItems2;
        this.U.k(menu);
    }

    private void H() {
        removeCallbacks(this.f901h0);
        post(this.f901h0);
    }

    private boolean N() {
        if (!this.f900g0) {
            return false;
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (O(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean O(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private void b(List<View> list, int i10) {
        boolean z10 = androidx.core.view.a0.E(this) == 1;
        int childCount = getChildCount();
        int iB = androidx.core.view.e.b(i10, androidx.core.view.a0.E(this));
        list.clear();
        if (!z10) {
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.f920b == 0 && O(childAt) && p(eVar.f338a) == iB) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i12 = childCount - 1; i12 >= 0; i12--) {
            View childAt2 = getChildAt(i12);
            e eVar2 = (e) childAt2.getLayoutParams();
            if (eVar2.f920b == 0 && O(childAt2) && p(eVar2.f338a) == iB) {
                list.add(childAt2);
            }
        }
    }

    private void c(View view, boolean z10) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        e eVarGenerateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (e) layoutParams;
        eVarGenerateDefaultLayoutParams.f920b = 1;
        if (!z10 || this.f910w == null) {
            addView(view, eVarGenerateDefaultLayoutParams);
        } else {
            view.setLayoutParams(eVarGenerateDefaultLayoutParams);
            this.S.add(view);
        }
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i10 = 0; i10 < menu.size(); i10++) {
            arrayList.add(menu.getItem(i10));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new androidx.appcompat.view.g(getContext());
    }

    private void h() {
        if (this.H == null) {
            this.H = new o0();
        }
    }

    private void i() {
        if (this.f906s == null) {
            this.f906s = new AppCompatImageView(getContext());
        }
    }

    private void j() {
        k();
        if (this.f902o.N() == null) {
            androidx.appcompat.view.menu.g gVar = (androidx.appcompat.view.menu.g) this.f902o.getMenu();
            if (this.f897d0 == null) {
                this.f897d0 = new d();
            }
            this.f902o.setExpandedActionViewsExclusive(true);
            gVar.c(this.f897d0, this.f911x);
        }
    }

    private void k() {
        if (this.f902o == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f902o = actionMenuView;
            actionMenuView.setPopupTheme(this.f912y);
            this.f902o.setOnMenuItemClickListener(this.f894a0);
            this.f902o.O(this.f898e0, this.f899f0);
            e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.f338a = 8388613 | (this.B & 112);
            this.f902o.setLayoutParams(eVarGenerateDefaultLayoutParams);
            c(this.f902o, false);
        }
    }

    private void l() {
        if (this.f905r == null) {
            this.f905r = new o(getContext(), null, f.a.M);
            e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.f338a = 8388611 | (this.B & 112);
            this.f905r.setLayoutParams(eVarGenerateDefaultLayoutParams);
        }
    }

    private int p(int i10) {
        int iE = androidx.core.view.a0.E(this);
        int iB = androidx.core.view.e.b(i10, iE) & 7;
        return (iB == 1 || iB == 3 || iB == 5) ? iB : iE == 1 ? 5 : 3;
    }

    private int q(View view, int i10) {
        e eVar = (e) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i11 = i10 > 0 ? (measuredHeight - i10) / 2 : 0;
        int iR = r(eVar.f338a);
        if (iR == 48) {
            return getPaddingTop() - i11;
        }
        if (iR == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin) - i11;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i12 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
        if (iMax < i12) {
            iMax = i12;
        } else {
            int i13 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i14 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            if (i13 < i14) {
                iMax = Math.max(0, iMax - (i14 - i13));
            }
        }
        return paddingTop + iMax;
    }

    private int r(int i10) {
        int i11 = i10 & 112;
        return (i11 == 16 || i11 == 48 || i11 == 80) ? i11 : this.K & 112;
    }

    private int s(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return androidx.core.view.h.b(marginLayoutParams) + androidx.core.view.h.a(marginLayoutParams);
    }

    private int t(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private int u(List<View> list, int[] iArr) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int size = list.size();
        int i12 = 0;
        int measuredWidth = 0;
        while (i12 < size) {
            View view = list.get(i12);
            e eVar = (e) view.getLayoutParams();
            int i13 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin - i10;
            int i14 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin - i11;
            int iMax = Math.max(0, i13);
            int iMax2 = Math.max(0, i14);
            int iMax3 = Math.max(0, -i13);
            int iMax4 = Math.max(0, -i14);
            measuredWidth += iMax + view.getMeasuredWidth() + iMax2;
            i12++;
            i11 = iMax4;
            i10 = iMax3;
        }
        return measuredWidth;
    }

    private boolean z(View view) {
        return view.getParent() == this || this.S.contains(view);
    }

    public boolean A() {
        ActionMenuView actionMenuView = this.f902o;
        return actionMenuView != null && actionMenuView.I();
    }

    public boolean B() {
        ActionMenuView actionMenuView = this.f902o;
        return actionMenuView != null && actionMenuView.J();
    }

    void I() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((e) childAt.getLayoutParams()).f920b != 2 && childAt != this.f902o) {
                removeViewAt(childCount);
                this.S.add(childAt);
            }
        }
    }

    public void J(int i10, int i11) {
        h();
        this.H.g(i10, i11);
    }

    public void K(androidx.appcompat.view.menu.g gVar, androidx.appcompat.widget.c cVar) {
        if (gVar == null && this.f902o == null) {
            return;
        }
        k();
        androidx.appcompat.view.menu.g gVarN = this.f902o.N();
        if (gVarN == gVar) {
            return;
        }
        if (gVarN != null) {
            gVarN.O(this.f896c0);
            gVarN.O(this.f897d0);
        }
        if (this.f897d0 == null) {
            this.f897d0 = new d();
        }
        cVar.G(true);
        if (gVar != null) {
            gVar.c(cVar, this.f911x);
            gVar.c(this.f897d0, this.f911x);
        } else {
            cVar.i(this.f911x, null);
            this.f897d0.i(this.f911x, null);
            cVar.c(true);
            this.f897d0.c(true);
        }
        this.f902o.setPopupTheme(this.f912y);
        this.f902o.setPresenter(cVar);
        this.f896c0 = cVar;
    }

    public void L(Context context, int i10) {
        this.A = i10;
        TextView textView = this.f904q;
        if (textView != null) {
            textView.setTextAppearance(context, i10);
        }
    }

    public void M(Context context, int i10) {
        this.f913z = i10;
        TextView textView = this.f903p;
        if (textView != null) {
            textView.setTextAppearance(context, i10);
        }
    }

    public boolean P() {
        ActionMenuView actionMenuView = this.f902o;
        return actionMenuView != null && actionMenuView.P();
    }

    void a() {
        for (int size = this.S.size() - 1; size >= 0; size--) {
            addView(this.S.get(size));
        }
        this.S.clear();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof e);
    }

    public boolean d() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f902o) != null && actionMenuView.K();
    }

    public void e() {
        d dVar = this.f897d0;
        androidx.appcompat.view.menu.i iVar = dVar == null ? null : dVar.f918p;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    public void f() {
        ActionMenuView actionMenuView = this.f902o;
        if (actionMenuView != null) {
            actionMenuView.B();
        }
    }

    void g() {
        if (this.f909v == null) {
            o oVar = new o(getContext(), null, f.a.M);
            this.f909v = oVar;
            oVar.setImageDrawable(this.f907t);
            this.f909v.setContentDescription(this.f908u);
            e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.f338a = 8388611 | (this.B & 112);
            eVarGenerateDefaultLayoutParams.f920b = 2;
            this.f909v.setLayoutParams(eVarGenerateDefaultLayoutParams);
            this.f909v.setOnClickListener(new c());
        }
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f909v;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f909v;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        o0 o0Var = this.H;
        if (o0Var != null) {
            return o0Var.a();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i10 = this.J;
        return i10 != Integer.MIN_VALUE ? i10 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        o0 o0Var = this.H;
        if (o0Var != null) {
            return o0Var.b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        o0 o0Var = this.H;
        if (o0Var != null) {
            return o0Var.c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        o0 o0Var = this.H;
        if (o0Var != null) {
            return o0Var.d();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i10 = this.I;
        return i10 != Integer.MIN_VALUE ? i10 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        androidx.appcompat.view.menu.g gVarN;
        ActionMenuView actionMenuView = this.f902o;
        return actionMenuView != null && (gVarN = actionMenuView.N()) != null && gVarN.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.J, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return androidx.core.view.a0.E(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return androidx.core.view.a0.E(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.I, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f906s;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f906s;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        j();
        return this.f902o.getMenu();
    }

    View getNavButtonView() {
        return this.f905r;
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f905r;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f905r;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    androidx.appcompat.widget.c getOuterActionMenuPresenter() {
        return this.f896c0;
    }

    public Drawable getOverflowIcon() {
        j();
        return this.f902o.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f911x;
    }

    public int getPopupTheme() {
        return this.f912y;
    }

    public CharSequence getSubtitle() {
        return this.M;
    }

    final TextView getSubtitleTextView() {
        return this.f904q;
    }

    public CharSequence getTitle() {
        return this.L;
    }

    public int getTitleMarginBottom() {
        return this.G;
    }

    public int getTitleMarginEnd() {
        return this.E;
    }

    public int getTitleMarginStart() {
        return this.D;
    }

    public int getTitleMarginTop() {
        return this.F;
    }

    final TextView getTitleTextView() {
        return this.f903p;
    }

    public e0 getWrapper() {
        if (this.f895b0 == null) {
            this.f895b0 = new y0(this, true);
        }
        return this.f895b0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public e generateDefaultLayoutParams() {
        return new e(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e ? new e((e) layoutParams) : layoutParams instanceof a.C0011a ? new e((a.C0011a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f901h0);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.Q = false;
        }
        if (!this.Q) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.Q = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.Q = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x029f A[LOOP:0: B:104:0x029d->B:105:0x029f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02c1 A[LOOP:1: B:107:0x02bf->B:108:0x02c1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02fa A[LOOP:2: B:116:0x02f8->B:117:0x02fa, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0227  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instruction units count: 783
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int measuredWidth;
        int iMax;
        int iCombineMeasuredStates;
        int measuredWidth2;
        int iCombineMeasuredStates2;
        int iMax2;
        int measuredHeight;
        int[] iArr = this.T;
        boolean zB = f1.b(this);
        int i12 = !zB ? 1 : 0;
        if (O(this.f905r)) {
            F(this.f905r, i10, 0, i11, 0, this.C);
            measuredWidth = this.f905r.getMeasuredWidth() + s(this.f905r);
            iMax = Math.max(0, this.f905r.getMeasuredHeight() + t(this.f905r));
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.f905r.getMeasuredState());
        } else {
            measuredWidth = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (O(this.f909v)) {
            F(this.f909v, i10, 0, i11, 0, this.C);
            measuredWidth = this.f909v.getMeasuredWidth() + s(this.f909v);
            iMax = Math.max(iMax, this.f909v.getMeasuredHeight() + t(this.f909v));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f909v.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = 0 + Math.max(currentContentInsetStart, measuredWidth);
        iArr[zB ? 1 : 0] = Math.max(0, currentContentInsetStart - measuredWidth);
        if (O(this.f902o)) {
            F(this.f902o, i10, iMax3, i11, 0, this.C);
            measuredWidth2 = this.f902o.getMeasuredWidth() + s(this.f902o);
            iMax = Math.max(iMax, this.f902o.getMeasuredHeight() + t(this.f902o));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f902o.getMeasuredState());
        } else {
            measuredWidth2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax4 = iMax3 + Math.max(currentContentInsetEnd, measuredWidth2);
        iArr[i12] = Math.max(0, currentContentInsetEnd - measuredWidth2);
        if (O(this.f910w)) {
            iMax4 += E(this.f910w, i10, iMax4, i11, 0, iArr);
            iMax = Math.max(iMax, this.f910w.getMeasuredHeight() + t(this.f910w));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f910w.getMeasuredState());
        }
        if (O(this.f906s)) {
            iMax4 += E(this.f906s, i10, iMax4, i11, 0, iArr);
            iMax = Math.max(iMax, this.f906s.getMeasuredHeight() + t(this.f906s));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f906s.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (((e) childAt.getLayoutParams()).f920b == 0 && O(childAt)) {
                iMax4 += E(childAt, i10, iMax4, i11, 0, iArr);
                iMax = Math.max(iMax, childAt.getMeasuredHeight() + t(childAt));
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i14 = this.F + this.G;
        int i15 = this.D + this.E;
        if (O(this.f903p)) {
            E(this.f903p, i10, iMax4 + i15, i11, i14, iArr);
            int measuredWidth3 = this.f903p.getMeasuredWidth() + s(this.f903p);
            measuredHeight = this.f903p.getMeasuredHeight() + t(this.f903p);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f903p.getMeasuredState());
            iMax2 = measuredWidth3;
        } else {
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
            measuredHeight = 0;
        }
        if (O(this.f904q)) {
            iMax2 = Math.max(iMax2, E(this.f904q, i10, iMax4 + i15, i11, measuredHeight + i14, iArr));
            measuredHeight += this.f904q.getMeasuredHeight() + t(this.f904q);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f904q.getMeasuredState());
        }
        int iMax5 = Math.max(iMax, measuredHeight);
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax4 + iMax2 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i10, (-16777216) & iCombineMeasuredStates2), N() ? 0 : View.resolveSizeAndState(Math.max(iMax5 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i11, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        g gVar = (g) parcelable;
        super.onRestoreInstanceState(gVar.h());
        ActionMenuView actionMenuView = this.f902o;
        androidx.appcompat.view.menu.g gVarN = actionMenuView != null ? actionMenuView.N() : null;
        int i10 = gVar.f921q;
        if (i10 != 0 && this.f897d0 != null && gVarN != null && (menuItemFindItem = gVarN.findItem(i10)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (gVar.f922r) {
            H();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i10);
        }
        h();
        this.H.f(i10 == 1);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        androidx.appcompat.view.menu.i iVar;
        g gVar = new g(super.onSaveInstanceState());
        d dVar = this.f897d0;
        if (dVar != null && (iVar = dVar.f918p) != null) {
            gVar.f921q = iVar.getItemId();
        }
        gVar.f922r = B();
        return gVar;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.P = false;
        }
        if (!this.P) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.P = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.P = false;
        }
        return true;
    }

    public void setCollapseContentDescription(int i10) {
        setCollapseContentDescription(i10 != 0 ? getContext().getText(i10) : null);
    }

    public void setCollapseIcon(int i10) {
        setCollapseIcon(g.a.b(getContext(), i10));
    }

    public void setCollapsible(boolean z10) {
        this.f900g0 = z10;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i10) {
        if (i10 < 0) {
            i10 = Integer.MIN_VALUE;
        }
        if (i10 != this.J) {
            this.J = i10;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i10) {
        if (i10 < 0) {
            i10 = Integer.MIN_VALUE;
        }
        if (i10 != this.I) {
            this.I = i10;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i10) {
        setLogo(g.a.b(getContext(), i10));
    }

    public void setLogoDescription(int i10) {
        setLogoDescription(getContext().getText(i10));
    }

    public void setNavigationContentDescription(int i10) {
        setNavigationContentDescription(i10 != 0 ? getContext().getText(i10) : null);
    }

    public void setNavigationIcon(int i10) {
        setNavigationIcon(g.a.b(getContext(), i10));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        l();
        this.f905r.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(f fVar) {
        this.W = fVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        j();
        this.f902o.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i10) {
        if (this.f912y != i10) {
            this.f912y = i10;
            if (i10 == 0) {
                this.f911x = getContext();
            } else {
                this.f911x = new ContextThemeWrapper(getContext(), i10);
            }
        }
    }

    public void setSubtitle(int i10) {
        setSubtitle(getContext().getText(i10));
    }

    public void setSubtitleTextColor(int i10) {
        setSubtitleTextColor(ColorStateList.valueOf(i10));
    }

    public void setTitle(int i10) {
        setTitle(getContext().getText(i10));
    }

    public void setTitleMarginBottom(int i10) {
        this.G = i10;
        requestLayout();
    }

    public void setTitleMarginEnd(int i10) {
        this.E = i10;
        requestLayout();
    }

    public void setTitleMarginStart(int i10) {
        this.D = i10;
        requestLayout();
    }

    public void setTitleMarginTop(int i10) {
        this.F = i10;
        requestLayout();
    }

    public void setTitleTextColor(int i10) {
        setTitleTextColor(ColorStateList.valueOf(i10));
    }

    public boolean v() {
        d dVar = this.f897d0;
        return (dVar == null || dVar.f918p == null) ? false : true;
    }

    public boolean w() {
        ActionMenuView actionMenuView = this.f902o;
        return actionMenuView != null && actionMenuView.H();
    }

    public void x(int i10) {
        getMenuInflater().inflate(i10, getMenu());
    }

    public void y() {
        Iterator<MenuItem> it = this.V.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(it.next().getItemId());
        }
        G();
    }

    public static class e extends a.C0011a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f920b;

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f920b = 0;
        }

        void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public e(int i10, int i11) {
            super(i10, i11);
            this.f920b = 0;
            this.f338a = 8388627;
        }

        public e(e eVar) {
            super((a.C0011a) eVar);
            this.f920b = 0;
            this.f920b = eVar.f920b;
        }

        public e(a.C0011a c0011a) {
            super(c0011a);
            this.f920b = 0;
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f920b = 0;
            a(marginLayoutParams);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f920b = 0;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.K = 8388627;
        this.R = new ArrayList<>();
        this.S = new ArrayList<>();
        this.T = new int[2];
        this.U = new androidx.core.view.k(new Runnable() { // from class: androidx.appcompat.widget.x0
            @Override // java.lang.Runnable
            public final void run() {
                this.f1209o.y();
            }
        });
        this.V = new ArrayList<>();
        this.f894a0 = new a();
        this.f901h0 = new b();
        Context context2 = getContext();
        int[] iArr = f.j.R2;
        w0 w0VarV = w0.v(context2, attributeSet, iArr, i10, 0);
        androidx.core.view.a0.o0(this, context, iArr, attributeSet, w0VarV.r(), i10, 0);
        this.f913z = w0VarV.n(f.j.f29214t3, 0);
        this.A = w0VarV.n(f.j.f29169k3, 0);
        this.K = w0VarV.l(f.j.S2, this.K);
        this.B = w0VarV.l(f.j.T2, 48);
        int iE = w0VarV.e(f.j.f29184n3, 0);
        int i11 = f.j.f29209s3;
        iE = w0VarV.s(i11) ? w0VarV.e(i11, iE) : iE;
        this.G = iE;
        this.F = iE;
        this.E = iE;
        this.D = iE;
        int iE2 = w0VarV.e(f.j.f29199q3, -1);
        if (iE2 >= 0) {
            this.D = iE2;
        }
        int iE3 = w0VarV.e(f.j.f29194p3, -1);
        if (iE3 >= 0) {
            this.E = iE3;
        }
        int iE4 = w0VarV.e(f.j.f29204r3, -1);
        if (iE4 >= 0) {
            this.F = iE4;
        }
        int iE5 = w0VarV.e(f.j.f29189o3, -1);
        if (iE5 >= 0) {
            this.G = iE5;
        }
        this.C = w0VarV.f(f.j.f29139e3, -1);
        int iE6 = w0VarV.e(f.j.f29119a3, Integer.MIN_VALUE);
        int iE7 = w0VarV.e(f.j.W2, Integer.MIN_VALUE);
        int iF = w0VarV.f(f.j.Y2, 0);
        int iF2 = w0VarV.f(f.j.Z2, 0);
        h();
        this.H.e(iF, iF2);
        if (iE6 != Integer.MIN_VALUE || iE7 != Integer.MIN_VALUE) {
            this.H.g(iE6, iE7);
        }
        this.I = w0VarV.e(f.j.f29124b3, Integer.MIN_VALUE);
        this.J = w0VarV.e(f.j.X2, Integer.MIN_VALUE);
        this.f907t = w0VarV.g(f.j.V2);
        this.f908u = w0VarV.p(f.j.U2);
        CharSequence charSequenceP = w0VarV.p(f.j.f29179m3);
        if (!TextUtils.isEmpty(charSequenceP)) {
            setTitle(charSequenceP);
        }
        CharSequence charSequenceP2 = w0VarV.p(f.j.f29164j3);
        if (!TextUtils.isEmpty(charSequenceP2)) {
            setSubtitle(charSequenceP2);
        }
        this.f911x = getContext();
        setPopupTheme(w0VarV.n(f.j.f29159i3, 0));
        Drawable drawableG = w0VarV.g(f.j.f29154h3);
        if (drawableG != null) {
            setNavigationIcon(drawableG);
        }
        CharSequence charSequenceP3 = w0VarV.p(f.j.f29149g3);
        if (!TextUtils.isEmpty(charSequenceP3)) {
            setNavigationContentDescription(charSequenceP3);
        }
        Drawable drawableG2 = w0VarV.g(f.j.f29129c3);
        if (drawableG2 != null) {
            setLogo(drawableG2);
        }
        CharSequence charSequenceP4 = w0VarV.p(f.j.f29134d3);
        if (!TextUtils.isEmpty(charSequenceP4)) {
            setLogoDescription(charSequenceP4);
        }
        int i12 = f.j.f29219u3;
        if (w0VarV.s(i12)) {
            setTitleTextColor(w0VarV.c(i12));
        }
        int i13 = f.j.f29174l3;
        if (w0VarV.s(i13)) {
            setSubtitleTextColor(w0VarV.c(i13));
        }
        int i14 = f.j.f29144f3;
        if (w0VarV.s(i14)) {
            x(w0VarV.n(i14, 0));
        }
        w0VarV.w();
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        ImageButton imageButton = this.f909v;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            this.f909v.setImageDrawable(drawable);
        } else {
            ImageButton imageButton = this.f909v;
            if (imageButton != null) {
                imageButton.setImageDrawable(this.f907t);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            i();
            if (!z(this.f906s)) {
                c(this.f906s, true);
            }
        } else {
            ImageView imageView = this.f906s;
            if (imageView != null && z(imageView)) {
                removeView(this.f906s);
                this.S.remove(this.f906s);
            }
        }
        ImageView imageView2 = this.f906s;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            i();
        }
        ImageView imageView = this.f906s;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            l();
        }
        ImageButton imageButton = this.f905r;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
            z0.a(this.f905r, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            l();
            if (!z(this.f905r)) {
                c(this.f905r, true);
            }
        } else {
            ImageButton imageButton = this.f905r;
            if (imageButton != null && z(imageButton)) {
                removeView(this.f905r);
                this.S.remove(this.f905r);
            }
        }
        ImageButton imageButton2 = this.f905r;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f904q;
            if (textView != null && z(textView)) {
                removeView(this.f904q);
                this.S.remove(this.f904q);
            }
        } else {
            if (this.f904q == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f904q = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f904q.setEllipsize(TextUtils.TruncateAt.END);
                int i10 = this.A;
                if (i10 != 0) {
                    this.f904q.setTextAppearance(context, i10);
                }
                ColorStateList colorStateList = this.O;
                if (colorStateList != null) {
                    this.f904q.setTextColor(colorStateList);
                }
            }
            if (!z(this.f904q)) {
                c(this.f904q, true);
            }
        }
        TextView textView2 = this.f904q;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.M = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.O = colorStateList;
        TextView textView = this.f904q;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f903p;
            if (textView != null && z(textView)) {
                removeView(this.f903p);
                this.S.remove(this.f903p);
            }
        } else {
            if (this.f903p == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f903p = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f903p.setEllipsize(TextUtils.TruncateAt.END);
                int i10 = this.f913z;
                if (i10 != 0) {
                    this.f903p.setTextAppearance(context, i10);
                }
                ColorStateList colorStateList = this.N;
                if (colorStateList != null) {
                    this.f903p.setTextColor(colorStateList);
                }
            }
            if (!z(this.f903p)) {
                c(this.f903p, true);
            }
        }
        TextView textView2 = this.f903p;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.L = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.N = colorStateList;
        TextView textView = this.f903p;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public static class g extends b0.a {
        public static final Parcelable.Creator<g> CREATOR = new a();

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f921q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f922r;

        class a implements Parcelable.ClassLoaderCreator<g> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public g createFromParcel(Parcel parcel) {
                return new g(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public g createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new g(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public g[] newArray(int i10) {
                return new g[i10];
            }
        }

        public g(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f921q = parcel.readInt();
            this.f922r = parcel.readInt() != 0;
        }

        @Override // b0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f921q);
            parcel.writeInt(this.f922r ? 1 : 0);
        }

        public g(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
