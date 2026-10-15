package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.HashMap;
import s.d;
import s.e;
import t.b;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    private static j L;
    private HashMap<String, Integer> A;
    private int B;
    private int C;
    int D;
    int E;
    int F;
    int G;
    private SparseArray<s.e> H;
    c I;
    private int J;
    private int K;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    SparseArray<View> f1458o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ArrayList<androidx.constraintlayout.widget.b> f1459p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected s.f f1460q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f1461r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f1462s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f1463t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f1464u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected boolean f1465v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f1466w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private d f1467x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected androidx.constraintlayout.widget.c f1468y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f1469z;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1470a;

        static {
            int[] iArr = new int[e.b.values().length];
            f1470a = iArr;
            try {
                iArr[e.b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1470a[e.b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1470a[e.b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1470a[e.b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    class c implements b.InterfaceC0249b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ConstraintLayout f1521a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1522b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1523c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1524d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1525e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1526f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f1527g;

        public c(ConstraintLayout constraintLayout) {
            this.f1521a = constraintLayout;
        }

        private boolean d(int i10, int i11, int i12) {
            if (i10 == i11) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i10);
            View.MeasureSpec.getSize(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && i12 == size;
            }
            return false;
        }

        @Override // t.b.InterfaceC0249b
        public final void a() {
            int childCount = this.f1521a.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = this.f1521a.getChildAt(i10);
                if (childAt instanceof g) {
                    ((g) childAt).a(this.f1521a);
                }
            }
            int size = this.f1521a.f1459p.size();
            if (size > 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    ((androidx.constraintlayout.widget.b) this.f1521a.f1459p.get(i11)).p(this.f1521a);
                }
            }
        }

        @Override // t.b.InterfaceC0249b
        @SuppressLint({"WrongCall"})
        public final void b(s.e eVar, b.a aVar) {
            int iMakeMeasureSpec;
            int iMakeMeasureSpec2;
            int baseline;
            int iMax;
            int i10;
            int measuredHeight;
            int i11;
            if (eVar == null) {
                return;
            }
            if (eVar.T() == 8 && !eVar.h0()) {
                aVar.f35052e = 0;
                aVar.f35053f = 0;
                aVar.f35054g = 0;
                return;
            }
            if (eVar.I() == null) {
                return;
            }
            e.b bVar = aVar.f35048a;
            e.b bVar2 = aVar.f35049b;
            int i12 = aVar.f35050c;
            int i13 = aVar.f35051d;
            int i14 = this.f1522b + this.f1523c;
            int i15 = this.f1524d;
            View view = (View) eVar.q();
            int[] iArr = a.f1470a;
            int i16 = iArr[bVar.ordinal()];
            if (i16 == 1) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
            } else if (i16 == 2) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1526f, i15, -2);
            } else if (i16 == 3) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1526f, i15 + eVar.z(), -1);
            } else if (i16 != 4) {
                iMakeMeasureSpec = 0;
            } else {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1526f, i15, -2);
                boolean z10 = eVar.f34425w == 1;
                int i17 = aVar.f35057j;
                if (i17 == b.a.f35046l || i17 == b.a.f35047m) {
                    if (aVar.f35057j == b.a.f35047m || !z10 || (z10 && (view.getMeasuredHeight() == eVar.v())) || (view instanceof g) || eVar.l0()) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(eVar.U(), 1073741824);
                    }
                }
            }
            int i18 = iArr[bVar2.ordinal()];
            if (i18 == 1) {
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
            } else if (i18 == 2) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1527g, i14, -2);
            } else if (i18 == 3) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1527g, i14 + eVar.S(), -1);
            } else if (i18 != 4) {
                iMakeMeasureSpec2 = 0;
            } else {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1527g, i14, -2);
                boolean z11 = eVar.f34427x == 1;
                int i19 = aVar.f35057j;
                if (i19 == b.a.f35046l || i19 == b.a.f35047m) {
                    if (aVar.f35057j == b.a.f35047m || !z11 || (z11 && (view.getMeasuredWidth() == eVar.U())) || (view instanceof g) || eVar.m0()) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(eVar.v(), 1073741824);
                    }
                }
            }
            s.f fVar = (s.f) eVar.I();
            if (fVar != null && s.j.b(ConstraintLayout.this.f1466w, 256) && view.getMeasuredWidth() == eVar.U() && view.getMeasuredWidth() < fVar.U() && view.getMeasuredHeight() == eVar.v() && view.getMeasuredHeight() < fVar.v() && view.getBaseline() == eVar.n() && !eVar.k0()) {
                if (d(eVar.A(), iMakeMeasureSpec, eVar.U()) && d(eVar.B(), iMakeMeasureSpec2, eVar.v())) {
                    aVar.f35052e = eVar.U();
                    aVar.f35053f = eVar.v();
                    aVar.f35054g = eVar.n();
                    return;
                }
            }
            e.b bVar3 = e.b.MATCH_CONSTRAINT;
            boolean z12 = bVar == bVar3;
            boolean z13 = bVar2 == bVar3;
            e.b bVar4 = e.b.MATCH_PARENT;
            boolean z14 = bVar2 == bVar4 || bVar2 == e.b.FIXED;
            boolean z15 = bVar == bVar4 || bVar == e.b.FIXED;
            boolean z16 = z12 && eVar.f34388d0 > 0.0f;
            boolean z17 = z13 && eVar.f34388d0 > 0.0f;
            if (view == null) {
                return;
            }
            b bVar5 = (b) view.getLayoutParams();
            int i20 = aVar.f35057j;
            if (i20 != b.a.f35046l && i20 != b.a.f35047m && z12 && eVar.f34425w == 0 && z13 && eVar.f34427x == 0) {
                i11 = -1;
                measuredHeight = 0;
                baseline = 0;
                iMax = 0;
            } else {
                if ((view instanceof k) && (eVar instanceof s.k)) {
                    ((k) view).t((s.k) eVar, iMakeMeasureSpec, iMakeMeasureSpec2);
                } else {
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                }
                eVar.S0(iMakeMeasureSpec, iMakeMeasureSpec2);
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                int i21 = eVar.f34431z;
                iMax = i21 > 0 ? Math.max(i21, measuredWidth) : measuredWidth;
                int i22 = eVar.A;
                if (i22 > 0) {
                    iMax = Math.min(i22, iMax);
                }
                int i23 = eVar.C;
                if (i23 > 0) {
                    measuredHeight = Math.max(i23, measuredHeight2);
                    i10 = iMakeMeasureSpec;
                } else {
                    i10 = iMakeMeasureSpec;
                    measuredHeight = measuredHeight2;
                }
                int i24 = eVar.D;
                if (i24 > 0) {
                    measuredHeight = Math.min(i24, measuredHeight);
                }
                if (!s.j.b(ConstraintLayout.this.f1466w, 1)) {
                    if (z16 && z14) {
                        iMax = (int) ((measuredHeight * eVar.f34388d0) + 0.5f);
                    } else if (z17 && z15) {
                        measuredHeight = (int) ((iMax / eVar.f34388d0) + 0.5f);
                    }
                }
                if (measuredWidth != iMax || measuredHeight2 != measuredHeight) {
                    int iMakeMeasureSpec3 = measuredWidth != iMax ? View.MeasureSpec.makeMeasureSpec(iMax, 1073741824) : i10;
                    if (measuredHeight2 != measuredHeight) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                    }
                    view.measure(iMakeMeasureSpec3, iMakeMeasureSpec2);
                    eVar.S0(iMakeMeasureSpec3, iMakeMeasureSpec2);
                    iMax = view.getMeasuredWidth();
                    measuredHeight = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                }
                i11 = -1;
            }
            boolean z18 = baseline != i11;
            aVar.f35056i = (iMax == aVar.f35050c && measuredHeight == aVar.f35051d) ? false : true;
            if (bVar5.f1484g0) {
                z18 = true;
            }
            if (z18 && baseline != -1 && eVar.n() != baseline) {
                aVar.f35056i = true;
            }
            aVar.f35052e = iMax;
            aVar.f35053f = measuredHeight;
            aVar.f35055h = z18;
            aVar.f35054g = baseline;
        }

        public void c(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f1522b = i12;
            this.f1523c = i13;
            this.f1524d = i14;
            this.f1525e = i15;
            this.f1526f = i10;
            this.f1527g = i11;
        }
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1458o = new SparseArray<>();
        this.f1459p = new ArrayList<>(4);
        this.f1460q = new s.f();
        this.f1461r = 0;
        this.f1462s = 0;
        this.f1463t = Integer.MAX_VALUE;
        this.f1464u = Integer.MAX_VALUE;
        this.f1465v = true;
        this.f1466w = 257;
        this.f1467x = null;
        this.f1468y = null;
        this.f1469z = -1;
        this.A = new HashMap<>();
        this.B = -1;
        this.C = -1;
        this.D = -1;
        this.E = -1;
        this.F = 0;
        this.G = 0;
        this.H = new SparseArray<>();
        this.I = new c(this);
        this.J = 0;
        this.K = 0;
        q(attributeSet, 0, 0);
    }

    private boolean A() {
        int childCount = getChildCount();
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= childCount) {
                break;
            }
            if (getChildAt(i10).isLayoutRequested()) {
                z10 = true;
                break;
            }
            i10++;
        }
        if (z10) {
            w();
        }
        return z10;
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int iMax2 = Build.VERSION.SDK_INT >= 17 ? Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart()) : 0;
        return iMax2 > 0 ? iMax2 : iMax;
    }

    public static j getSharedValues() {
        if (L == null) {
            L = new j();
        }
        return L;
    }

    private final s.e h(int i10) {
        if (i10 == 0) {
            return this.f1460q;
        }
        View viewFindViewById = this.f1458o.get(i10);
        if (viewFindViewById == null && (viewFindViewById = findViewById(i10)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
            onViewAdded(viewFindViewById);
        }
        if (viewFindViewById == this) {
            return this.f1460q;
        }
        if (viewFindViewById == null) {
            return null;
        }
        return ((b) viewFindViewById.getLayoutParams()).f1514v0;
    }

    private void q(AttributeSet attributeSet, int i10, int i11) {
        this.f1460q.y0(this);
        this.f1460q.R1(this.I);
        this.f1458o.put(getId(), this);
        this.f1467x = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, i.f1805n1, i10, i11);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i12 = 0; i12 < indexCount; i12++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i12);
                if (index == i.f1850s1) {
                    this.f1461r = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1461r);
                } else if (index == i.f1859t1) {
                    this.f1462s = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1462s);
                } else if (index == i.f1832q1) {
                    this.f1463t = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1463t);
                } else if (index == i.f1841r1) {
                    this.f1464u = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1464u);
                } else if (index == i.H2) {
                    this.f1466w = typedArrayObtainStyledAttributes.getInt(index, this.f1466w);
                } else if (index == i.C1) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            t(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f1468y = null;
                        }
                    }
                } else if (index == i.f1904y1) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        d dVar = new d();
                        this.f1467x = dVar;
                        dVar.m(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f1467x = null;
                    }
                    this.f1469z = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f1460q.S1(this.f1466w);
    }

    private void s() {
        this.f1465v = true;
        this.B = -1;
        this.C = -1;
        this.D = -1;
        this.E = -1;
        this.F = 0;
        this.G = 0;
    }

    private void w() {
        boolean zIsInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            s.e eVarP = p(getChildAt(i10));
            if (eVarP != null) {
                eVarP.r0();
            }
        }
        if (zIsInEditMode) {
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    x(0, resourceName, Integer.valueOf(childAt.getId()));
                    int iIndexOf = resourceName.indexOf(47);
                    if (iIndexOf != -1) {
                        resourceName = resourceName.substring(iIndexOf + 1);
                    }
                    h(childAt.getId()).z0(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.f1469z != -1) {
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt2 = getChildAt(i12);
                if (childAt2.getId() == this.f1469z && (childAt2 instanceof e)) {
                    this.f1467x = ((e) childAt2).getConstraintSet();
                }
            }
        }
        d dVar = this.f1467x;
        if (dVar != null) {
            dVar.d(this, true);
        }
        this.f1460q.r1();
        int size = this.f1459p.size();
        if (size > 0) {
            for (int i13 = 0; i13 < size; i13++) {
                this.f1459p.get(i13).r(this);
            }
        }
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt3 = getChildAt(i14);
            if (childAt3 instanceof g) {
                ((g) childAt3).b(this);
            }
        }
        this.H.clear();
        this.H.put(0, this.f1460q);
        this.H.put(getId(), this.f1460q);
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt4 = getChildAt(i15);
            this.H.put(childAt4.getId(), p(childAt4));
        }
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt5 = getChildAt(i16);
            s.e eVarP2 = p(childAt5);
            if (eVarP2 != null) {
                b bVar = (b) childAt5.getLayoutParams();
                this.f1460q.a(eVarP2);
                d(zIsInEditMode, childAt5, eVarP2, bVar, this.H);
            }
        }
    }

    private void z(s.e eVar, b bVar, SparseArray<s.e> sparseArray, int i10, d.b bVar2) {
        View view = this.f1458o.get(i10);
        s.e eVar2 = sparseArray.get(i10);
        if (eVar2 == null || view == null || !(view.getLayoutParams() instanceof b)) {
            return;
        }
        bVar.f1484g0 = true;
        d.b bVar3 = d.b.BASELINE;
        if (bVar2 == bVar3) {
            b bVar4 = (b) view.getLayoutParams();
            bVar4.f1484g0 = true;
            bVar4.f1514v0.H0(true);
        }
        eVar.m(bVar3).a(eVar2.m(bVar2), bVar.D, bVar.C, true);
        eVar.H0(true);
        eVar.m(d.b.TOP).p();
        eVar.m(d.b.BOTTOM).p();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    protected void d(boolean z10, View view, s.e eVar, b bVar, SparseArray<s.e> sparseArray) {
        int i10;
        float f10;
        int i11;
        int i12;
        s.e eVar2;
        s.e eVar3;
        s.e eVar4;
        s.e eVar5;
        int i13;
        bVar.a();
        bVar.f1516w0 = false;
        eVar.g1(view.getVisibility());
        if (bVar.f1490j0) {
            eVar.Q0(true);
            eVar.g1(8);
        }
        eVar.y0(view);
        if (view instanceof androidx.constraintlayout.widget.b) {
            ((androidx.constraintlayout.widget.b) view).n(eVar, this.f1460q.L1());
        }
        if (bVar.f1486h0) {
            s.g gVar = (s.g) eVar;
            int i14 = bVar.f1508s0;
            int i15 = bVar.f1510t0;
            float f11 = bVar.f1512u0;
            if (Build.VERSION.SDK_INT < 17) {
                i14 = bVar.f1471a;
                i15 = bVar.f1473b;
                f11 = bVar.f1475c;
            }
            if (f11 != -1.0f) {
                gVar.w1(f11);
                return;
            } else if (i14 != -1) {
                gVar.u1(i14);
                return;
            } else {
                if (i15 != -1) {
                    gVar.v1(i15);
                    return;
                }
                return;
            }
        }
        int i16 = bVar.f1494l0;
        int i17 = bVar.f1496m0;
        int i18 = bVar.f1498n0;
        int i19 = bVar.f1500o0;
        int i20 = bVar.f1502p0;
        int i21 = bVar.f1504q0;
        float f12 = bVar.f1506r0;
        if (Build.VERSION.SDK_INT < 17) {
            i16 = bVar.f1479e;
            int i22 = bVar.f1481f;
            int i23 = bVar.f1483g;
            int i24 = bVar.f1485h;
            int i25 = bVar.f1515w;
            int i26 = bVar.f1518y;
            float f13 = bVar.G;
            if (i16 == -1 && i22 == -1) {
                int i27 = bVar.f1509t;
                if (i27 != -1) {
                    i16 = i27;
                } else {
                    int i28 = bVar.f1507s;
                    if (i28 != -1) {
                        i22 = i28;
                    }
                }
            }
            if (i23 == -1 && i24 == -1) {
                i11 = bVar.f1511u;
                if (i11 == -1) {
                    int i29 = bVar.f1513v;
                    if (i29 != -1) {
                        i10 = i26;
                        f10 = f13;
                        i20 = i25;
                        i12 = i29;
                        i17 = i22;
                        i11 = i23;
                    }
                    i11 = i23;
                    i10 = i26;
                    f10 = f13;
                    i20 = i25;
                    i12 = i24;
                    i17 = i22;
                } else {
                    i10 = i26;
                    f10 = f13;
                    i20 = i25;
                    i12 = i24;
                    i17 = i22;
                }
            } else {
                i11 = i23;
                i10 = i26;
                f10 = f13;
                i20 = i25;
                i12 = i24;
                i17 = i22;
            }
        } else {
            i10 = i21;
            f10 = f12;
            i11 = i18;
            i12 = i19;
        }
        int i30 = bVar.f1501p;
        if (i30 != -1) {
            s.e eVar6 = sparseArray.get(i30);
            if (eVar6 != null) {
                eVar.j(eVar6, bVar.f1505r, bVar.f1503q);
            }
        } else {
            if (i16 != -1) {
                s.e eVar7 = sparseArray.get(i16);
                if (eVar7 != null) {
                    d.b bVar2 = d.b.LEFT;
                    eVar.c0(bVar2, eVar7, bVar2, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i20);
                }
            } else if (i17 != -1 && (eVar2 = sparseArray.get(i17)) != null) {
                eVar.c0(d.b.LEFT, eVar2, d.b.RIGHT, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i20);
            }
            if (i11 != -1) {
                s.e eVar8 = sparseArray.get(i11);
                if (eVar8 != null) {
                    eVar.c0(d.b.RIGHT, eVar8, d.b.LEFT, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i10);
                }
            } else if (i12 != -1 && (eVar3 = sparseArray.get(i12)) != null) {
                d.b bVar3 = d.b.RIGHT;
                eVar.c0(bVar3, eVar3, bVar3, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i10);
            }
            int i31 = bVar.f1487i;
            if (i31 != -1) {
                s.e eVar9 = sparseArray.get(i31);
                if (eVar9 != null) {
                    d.b bVar4 = d.b.TOP;
                    eVar.c0(bVar4, eVar9, bVar4, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.f1517x);
                }
            } else {
                int i32 = bVar.f1489j;
                if (i32 != -1 && (eVar4 = sparseArray.get(i32)) != null) {
                    eVar.c0(d.b.TOP, eVar4, d.b.BOTTOM, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.f1517x);
                }
            }
            int i33 = bVar.f1491k;
            if (i33 != -1) {
                s.e eVar10 = sparseArray.get(i33);
                if (eVar10 != null) {
                    eVar.c0(d.b.BOTTOM, eVar10, d.b.TOP, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.f1519z);
                }
            } else {
                int i34 = bVar.f1493l;
                if (i34 != -1 && (eVar5 = sparseArray.get(i34)) != null) {
                    d.b bVar5 = d.b.BOTTOM;
                    eVar.c0(bVar5, eVar5, bVar5, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.f1519z);
                }
            }
            int i35 = bVar.f1495m;
            if (i35 != -1) {
                z(eVar, bVar, sparseArray, i35, d.b.BASELINE);
            } else {
                int i36 = bVar.f1497n;
                if (i36 != -1) {
                    z(eVar, bVar, sparseArray, i36, d.b.TOP);
                } else {
                    int i37 = bVar.f1499o;
                    if (i37 != -1) {
                        z(eVar, bVar, sparseArray, i37, d.b.BOTTOM);
                    }
                }
            }
            if (f10 >= 0.0f) {
                eVar.J0(f10);
            }
            float f14 = bVar.H;
            if (f14 >= 0.0f) {
                eVar.a1(f14);
            }
        }
        if (z10 && ((i13 = bVar.X) != -1 || bVar.Y != -1)) {
            eVar.Y0(i13, bVar.Y);
        }
        if (bVar.f1480e0) {
            eVar.M0(e.b.FIXED);
            eVar.h1(((ViewGroup.MarginLayoutParams) bVar).width);
            if (((ViewGroup.MarginLayoutParams) bVar).width == -2) {
                eVar.M0(e.b.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) bVar).width == -1) {
            if (bVar.f1472a0) {
                eVar.M0(e.b.MATCH_CONSTRAINT);
            } else {
                eVar.M0(e.b.MATCH_PARENT);
            }
            eVar.m(d.b.LEFT).f34367g = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            eVar.m(d.b.RIGHT).f34367g = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        } else {
            eVar.M0(e.b.MATCH_CONSTRAINT);
            eVar.h1(0);
        }
        if (bVar.f1482f0) {
            eVar.d1(e.b.FIXED);
            eVar.I0(((ViewGroup.MarginLayoutParams) bVar).height);
            if (((ViewGroup.MarginLayoutParams) bVar).height == -2) {
                eVar.d1(e.b.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) bVar).height == -1) {
            if (bVar.f1474b0) {
                eVar.d1(e.b.MATCH_CONSTRAINT);
            } else {
                eVar.d1(e.b.MATCH_PARENT);
            }
            eVar.m(d.b.TOP).f34367g = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            eVar.m(d.b.BOTTOM).f34367g = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        } else {
            eVar.d1(e.b.MATCH_CONSTRAINT);
            eVar.I0(0);
        }
        eVar.A0(bVar.I);
        eVar.O0(bVar.L);
        eVar.f1(bVar.M);
        eVar.K0(bVar.N);
        eVar.b1(bVar.O);
        eVar.i1(bVar.f1478d0);
        eVar.N0(bVar.P, bVar.R, bVar.T, bVar.V);
        eVar.e1(bVar.Q, bVar.S, bVar.U, bVar.W);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<androidx.constraintlayout.widget.b> arrayList = this.f1459p;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                this.f1459p.get(i10).q(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i12 = Integer.parseInt(strArrSplit[0]);
                        int i13 = Integer.parseInt(strArrSplit[1]);
                        int i14 = Integer.parseInt(strArrSplit[2]);
                        int i15 = (int) ((i12 / 1080.0f) * width);
                        int i16 = (int) ((i13 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f10 = i15;
                        float f11 = i16;
                        float f12 = i15 + ((int) ((i14 / 1080.0f) * width));
                        canvas.drawLine(f10, f11, f12, f11, paint);
                        float f13 = i16 + ((int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height));
                        canvas.drawLine(f12, f11, f12, f13, paint);
                        canvas.drawLine(f12, f13, f10, f13, paint);
                        canvas.drawLine(f10, f13, f10, f11, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f10, f11, f12, f13, paint);
                        canvas.drawLine(f10, f13, f12, f11, paint);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public b generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void forceLayout() {
        s();
        super.forceLayout();
    }

    public Object g(int i10, Object obj) {
        if (i10 != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> map = this.A;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.A.get(str);
    }

    public int getMaxHeight() {
        return this.f1464u;
    }

    public int getMaxWidth() {
        return this.f1463t;
    }

    public int getMinHeight() {
        return this.f1462s;
    }

    public int getMinWidth() {
        return this.f1461r;
    }

    public int getOptimizationLevel() {
        return this.f1460q.G1();
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        if (this.f1460q.f34409o == null) {
            int id2 = getId();
            if (id2 != -1) {
                this.f1460q.f34409o = getContext().getResources().getResourceEntryName(id2);
            } else {
                this.f1460q.f34409o = "parent";
            }
        }
        if (this.f1460q.r() == null) {
            s.f fVar = this.f1460q;
            fVar.z0(fVar.f34409o);
            Log.v("ConstraintLayout", " setDebugName " + this.f1460q.r());
        }
        for (s.e eVar : this.f1460q.o1()) {
            View view = (View) eVar.q();
            if (view != null) {
                if (eVar.f34409o == null && (id = view.getId()) != -1) {
                    eVar.f34409o = getContext().getResources().getResourceEntryName(id);
                }
                if (eVar.r() == null) {
                    eVar.z0(eVar.f34409o);
                    Log.v("ConstraintLayout", " setDebugName " + eVar.r());
                }
            }
        }
        this.f1460q.M(sb);
        return sb.toString();
    }

    public View i(int i10) {
        return this.f1458o.get(i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            b bVar = (b) childAt.getLayoutParams();
            s.e eVar = bVar.f1514v0;
            if ((childAt.getVisibility() != 8 || bVar.f1486h0 || bVar.f1488i0 || bVar.f1492k0 || zIsInEditMode) && !bVar.f1490j0) {
                int iV = eVar.V();
                int iW = eVar.W();
                int iU = eVar.U() + iV;
                int iV2 = eVar.v() + iW;
                childAt.layout(iV, iW, iU, iV2);
                if ((childAt instanceof g) && (content = ((g) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iV, iW, iU, iV2);
                }
            }
        }
        int size = this.f1459p.size();
        if (size > 0) {
            for (int i15 = 0; i15 < size; i15++) {
                this.f1459p.get(i15).o(this);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.J == i10) {
            int i12 = this.K;
        }
        if (!this.f1465v) {
            int childCount = getChildCount();
            int i13 = 0;
            while (true) {
                if (i13 >= childCount) {
                    break;
                }
                if (getChildAt(i13).isLayoutRequested()) {
                    this.f1465v = true;
                    break;
                }
                i13++;
            }
        }
        boolean z10 = this.f1465v;
        this.J = i10;
        this.K = i11;
        this.f1460q.U1(r());
        if (this.f1465v) {
            this.f1465v = false;
            if (A()) {
                this.f1460q.W1();
            }
        }
        v(this.f1460q, this.f1466w, i10, i11);
        u(i10, i11, this.f1460q.U(), this.f1460q.v(), this.f1460q.M1(), this.f1460q.K1());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        s.e eVarP = p(view);
        if ((view instanceof Guideline) && !(eVarP instanceof s.g)) {
            b bVar = (b) view.getLayoutParams();
            s.g gVar = new s.g();
            bVar.f1514v0 = gVar;
            bVar.f1486h0 = true;
            gVar.x1(bVar.Z);
        }
        if (view instanceof androidx.constraintlayout.widget.b) {
            androidx.constraintlayout.widget.b bVar2 = (androidx.constraintlayout.widget.b) view;
            bVar2.s();
            ((b) view.getLayoutParams()).f1488i0 = true;
            if (!this.f1459p.contains(bVar2)) {
                this.f1459p.add(bVar2);
            }
        }
        this.f1458o.put(view.getId(), view);
        this.f1465v = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f1458o.remove(view.getId());
        this.f1460q.q1(p(view));
        this.f1459p.remove(view);
        this.f1465v = true;
    }

    public final s.e p(View view) {
        if (view == this) {
            return this.f1460q;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof b) {
            return ((b) view.getLayoutParams()).f1514v0;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof b) {
            return ((b) view.getLayoutParams()).f1514v0;
        }
        return null;
    }

    protected boolean r() {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
        }
        return false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        s();
        super.requestLayout();
    }

    public void setConstraintSet(d dVar) {
        this.f1467x = dVar;
    }

    @Override // android.view.View
    public void setId(int i10) {
        this.f1458o.remove(getId());
        super.setId(i10);
        this.f1458o.put(getId(), this);
    }

    public void setMaxHeight(int i10) {
        if (i10 == this.f1464u) {
            return;
        }
        this.f1464u = i10;
        requestLayout();
    }

    public void setMaxWidth(int i10) {
        if (i10 == this.f1463t) {
            return;
        }
        this.f1463t = i10;
        requestLayout();
    }

    public void setMinHeight(int i10) {
        if (i10 == this.f1462s) {
            return;
        }
        this.f1462s = i10;
        requestLayout();
    }

    public void setMinWidth(int i10) {
        if (i10 == this.f1461r) {
            return;
        }
        this.f1461r = i10;
        requestLayout();
    }

    public void setOnConstraintsChanged(f fVar) {
        androidx.constraintlayout.widget.c cVar = this.f1468y;
        if (cVar != null) {
            cVar.c(fVar);
        }
    }

    public void setOptimizationLevel(int i10) {
        this.f1466w = i10;
        this.f1460q.S1(i10);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    protected void t(int i10) {
        this.f1468y = new androidx.constraintlayout.widget.c(getContext(), this, i10);
    }

    protected void u(int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
        c cVar = this.I;
        int i14 = cVar.f1525e;
        int iResolveSizeAndState = ViewGroup.resolveSizeAndState(i12 + cVar.f1524d, i10, 0);
        int iResolveSizeAndState2 = ViewGroup.resolveSizeAndState(i13 + i14, i11, 0) & 16777215;
        int iMin = Math.min(this.f1463t, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(this.f1464u, iResolveSizeAndState2);
        if (z10) {
            iMin |= 16777216;
        }
        if (z11) {
            iMin2 |= 16777216;
        }
        setMeasuredDimension(iMin, iMin2);
        this.B = iMin;
        this.C = iMin2;
    }

    protected void v(s.f fVar, int i10, int i11, int i12) {
        int iMax;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        int iMax2 = Math.max(0, getPaddingTop());
        int iMax3 = Math.max(0, getPaddingBottom());
        int i13 = iMax2 + iMax3;
        int paddingWidth = getPaddingWidth();
        this.I.c(i11, i12, iMax2, iMax3, paddingWidth, i13);
        if (Build.VERSION.SDK_INT >= 17) {
            int iMax4 = Math.max(0, getPaddingStart());
            int iMax5 = Math.max(0, getPaddingEnd());
            if (iMax4 <= 0 && iMax5 <= 0) {
                iMax4 = Math.max(0, getPaddingLeft());
            } else if (r()) {
                iMax4 = iMax5;
            }
            iMax = iMax4;
        } else {
            iMax = Math.max(0, getPaddingLeft());
        }
        int i14 = size - paddingWidth;
        int i15 = size2 - i13;
        y(fVar, mode, i14, mode2, i15);
        fVar.N1(i10, mode, i14, mode2, i15, this.B, this.C, iMax, iMax2);
    }

    public void x(int i10, Object obj, Object obj2) {
        if (i10 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.A == null) {
                this.A = new HashMap<>();
            }
            String strSubstring = (String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            this.A.put(strSubstring, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003e A[PHI: r2
      0x003e: PHI (r2v4 s.e$b) = (r2v3 s.e$b), (r2v0 s.e$b) binds: [B:21:0x004a, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void y(s.f r8, int r9, int r10, int r11, int r12) {
        /*
            r7 = this;
            androidx.constraintlayout.widget.ConstraintLayout$c r0 = r7.I
            int r1 = r0.f1525e
            int r0 = r0.f1524d
            s.e$b r2 = s.e.b.FIXED
            int r3 = r7.getChildCount()
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = 0
            if (r9 == r5) goto L2e
            if (r9 == 0) goto L23
            if (r9 == r4) goto L1a
            r9 = r2
        L18:
            r10 = 0
            goto L38
        L1a:
            int r9 = r7.f1463t
            int r9 = r9 - r0
            int r10 = java.lang.Math.min(r9, r10)
            r9 = r2
            goto L38
        L23:
            s.e$b r9 = s.e.b.WRAP_CONTENT
            if (r3 != 0) goto L18
            int r10 = r7.f1461r
            int r10 = java.lang.Math.max(r6, r10)
            goto L38
        L2e:
            s.e$b r9 = s.e.b.WRAP_CONTENT
            if (r3 != 0) goto L38
            int r10 = r7.f1461r
            int r10 = java.lang.Math.max(r6, r10)
        L38:
            if (r11 == r5) goto L53
            if (r11 == 0) goto L48
            if (r11 == r4) goto L40
        L3e:
            r12 = 0
            goto L5d
        L40:
            int r11 = r7.f1464u
            int r11 = r11 - r1
            int r12 = java.lang.Math.min(r11, r12)
            goto L5d
        L48:
            s.e$b r2 = s.e.b.WRAP_CONTENT
            if (r3 != 0) goto L3e
            int r11 = r7.f1462s
            int r12 = java.lang.Math.max(r6, r11)
            goto L5d
        L53:
            s.e$b r2 = s.e.b.WRAP_CONTENT
            if (r3 != 0) goto L5d
            int r11 = r7.f1462s
            int r12 = java.lang.Math.max(r6, r11)
        L5d:
            int r11 = r8.U()
            if (r10 != r11) goto L69
            int r11 = r8.v()
            if (r12 == r11) goto L6c
        L69:
            r8.J1()
        L6c:
            r8.j1(r6)
            r8.k1(r6)
            int r11 = r7.f1463t
            int r11 = r11 - r0
            r8.U0(r11)
            int r11 = r7.f1464u
            int r11 = r11 - r1
            r8.T0(r11)
            r8.X0(r6)
            r8.W0(r6)
            r8.M0(r9)
            r8.h1(r10)
            r8.d1(r2)
            r8.I0(r12)
            int r9 = r7.f1461r
            int r9 = r9 - r0
            r8.X0(r9)
            int r9 = r7.f1462s
            int r9 = r9 - r1
            r8.W0(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.y(s.f, int, int, int, int):void");
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1458o = new SparseArray<>();
        this.f1459p = new ArrayList<>(4);
        this.f1460q = new s.f();
        this.f1461r = 0;
        this.f1462s = 0;
        this.f1463t = Integer.MAX_VALUE;
        this.f1464u = Integer.MAX_VALUE;
        this.f1465v = true;
        this.f1466w = 257;
        this.f1467x = null;
        this.f1468y = null;
        this.f1469z = -1;
        this.A = new HashMap<>();
        this.B = -1;
        this.C = -1;
        this.D = -1;
        this.E = -1;
        this.F = 0;
        this.G = 0;
        this.H = new SparseArray<>();
        this.I = new c(this);
        this.J = 0;
        this.K = 0;
        q(attributeSet, i10, 0);
    }

    public static class b extends ViewGroup.MarginLayoutParams {
        public int A;
        public int B;
        public int C;
        public int D;
        boolean E;
        boolean F;
        public float G;
        public float H;
        public String I;
        float J;
        int K;
        public float L;
        public float M;
        public int N;
        public int O;
        public int P;
        public int Q;
        public int R;
        public int S;
        public int T;
        public int U;
        public float V;
        public float W;
        public int X;
        public int Y;
        public int Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1471a;

        /* JADX INFO: renamed from: a0, reason: collision with root package name */
        public boolean f1472a0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1473b;

        /* JADX INFO: renamed from: b0, reason: collision with root package name */
        public boolean f1474b0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f1475c;

        /* JADX INFO: renamed from: c0, reason: collision with root package name */
        public String f1476c0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1477d;

        /* JADX INFO: renamed from: d0, reason: collision with root package name */
        public int f1478d0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1479e;

        /* JADX INFO: renamed from: e0, reason: collision with root package name */
        boolean f1480e0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1481f;

        /* JADX INFO: renamed from: f0, reason: collision with root package name */
        boolean f1482f0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1483g;

        /* JADX INFO: renamed from: g0, reason: collision with root package name */
        boolean f1484g0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1485h;

        /* JADX INFO: renamed from: h0, reason: collision with root package name */
        boolean f1486h0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f1487i;

        /* JADX INFO: renamed from: i0, reason: collision with root package name */
        boolean f1488i0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f1489j;

        /* JADX INFO: renamed from: j0, reason: collision with root package name */
        boolean f1490j0;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f1491k;

        /* JADX INFO: renamed from: k0, reason: collision with root package name */
        boolean f1492k0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f1493l;

        /* JADX INFO: renamed from: l0, reason: collision with root package name */
        int f1494l0;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f1495m;

        /* JADX INFO: renamed from: m0, reason: collision with root package name */
        int f1496m0;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f1497n;

        /* JADX INFO: renamed from: n0, reason: collision with root package name */
        int f1498n0;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f1499o;

        /* JADX INFO: renamed from: o0, reason: collision with root package name */
        int f1500o0;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f1501p;

        /* JADX INFO: renamed from: p0, reason: collision with root package name */
        int f1502p0;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f1503q;

        /* JADX INFO: renamed from: q0, reason: collision with root package name */
        int f1504q0;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public float f1505r;

        /* JADX INFO: renamed from: r0, reason: collision with root package name */
        float f1506r0;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f1507s;

        /* JADX INFO: renamed from: s0, reason: collision with root package name */
        int f1508s0;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f1509t;

        /* JADX INFO: renamed from: t0, reason: collision with root package name */
        int f1510t0;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f1511u;

        /* JADX INFO: renamed from: u0, reason: collision with root package name */
        float f1512u0;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f1513v;

        /* JADX INFO: renamed from: v0, reason: collision with root package name */
        s.e f1514v0;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f1515w;

        /* JADX INFO: renamed from: w0, reason: collision with root package name */
        public boolean f1516w0;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f1517x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f1518y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f1519z;

        private static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SparseIntArray f1520a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f1520a = sparseIntArray;
                sparseIntArray.append(i.f1851s2, 64);
                sparseIntArray.append(i.V1, 65);
                sparseIntArray.append(i.f1725e2, 8);
                sparseIntArray.append(i.f1734f2, 9);
                sparseIntArray.append(i.f1752h2, 10);
                sparseIntArray.append(i.f1761i2, 11);
                sparseIntArray.append(i.f1815o2, 12);
                sparseIntArray.append(i.f1806n2, 13);
                sparseIntArray.append(i.L1, 14);
                sparseIntArray.append(i.K1, 15);
                sparseIntArray.append(i.G1, 16);
                sparseIntArray.append(i.I1, 52);
                sparseIntArray.append(i.H1, 53);
                sparseIntArray.append(i.M1, 2);
                sparseIntArray.append(i.O1, 3);
                sparseIntArray.append(i.N1, 4);
                sparseIntArray.append(i.f1896x2, 49);
                sparseIntArray.append(i.f1905y2, 50);
                sparseIntArray.append(i.S1, 5);
                sparseIntArray.append(i.T1, 6);
                sparseIntArray.append(i.U1, 7);
                sparseIntArray.append(i.B1, 67);
                sparseIntArray.append(i.f1814o1, 1);
                sparseIntArray.append(i.f1770j2, 17);
                sparseIntArray.append(i.f1779k2, 18);
                sparseIntArray.append(i.R1, 19);
                sparseIntArray.append(i.Q1, 20);
                sparseIntArray.append(i.C2, 21);
                sparseIntArray.append(i.F2, 22);
                sparseIntArray.append(i.D2, 23);
                sparseIntArray.append(i.A2, 24);
                sparseIntArray.append(i.E2, 25);
                sparseIntArray.append(i.B2, 26);
                sparseIntArray.append(i.f1914z2, 55);
                sparseIntArray.append(i.G2, 54);
                sparseIntArray.append(i.f1689a2, 29);
                sparseIntArray.append(i.f1824p2, 30);
                sparseIntArray.append(i.P1, 44);
                sparseIntArray.append(i.f1707c2, 45);
                sparseIntArray.append(i.f1842r2, 46);
                sparseIntArray.append(i.f1698b2, 47);
                sparseIntArray.append(i.f1833q2, 48);
                sparseIntArray.append(i.E1, 27);
                sparseIntArray.append(i.D1, 28);
                sparseIntArray.append(i.f1860t2, 31);
                sparseIntArray.append(i.W1, 32);
                sparseIntArray.append(i.f1878v2, 33);
                sparseIntArray.append(i.f1869u2, 34);
                sparseIntArray.append(i.f1887w2, 35);
                sparseIntArray.append(i.Y1, 36);
                sparseIntArray.append(i.X1, 37);
                sparseIntArray.append(i.Z1, 38);
                sparseIntArray.append(i.f1716d2, 39);
                sparseIntArray.append(i.f1797m2, 40);
                sparseIntArray.append(i.f1743g2, 41);
                sparseIntArray.append(i.J1, 42);
                sparseIntArray.append(i.F1, 43);
                sparseIntArray.append(i.f1788l2, 51);
                sparseIntArray.append(i.I2, 66);
            }
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1471a = -1;
            this.f1473b = -1;
            this.f1475c = -1.0f;
            this.f1477d = true;
            this.f1479e = -1;
            this.f1481f = -1;
            this.f1483g = -1;
            this.f1485h = -1;
            this.f1487i = -1;
            this.f1489j = -1;
            this.f1491k = -1;
            this.f1493l = -1;
            this.f1495m = -1;
            this.f1497n = -1;
            this.f1499o = -1;
            this.f1501p = -1;
            this.f1503q = 0;
            this.f1505r = 0.0f;
            this.f1507s = -1;
            this.f1509t = -1;
            this.f1511u = -1;
            this.f1513v = -1;
            this.f1515w = Integer.MIN_VALUE;
            this.f1517x = Integer.MIN_VALUE;
            this.f1518y = Integer.MIN_VALUE;
            this.f1519z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = true;
            this.F = true;
            this.G = 0.5f;
            this.H = 0.5f;
            this.I = null;
            this.J = 0.0f;
            this.K = 1;
            this.L = -1.0f;
            this.M = -1.0f;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 0;
            this.T = 0;
            this.U = 0;
            this.V = 1.0f;
            this.W = 1.0f;
            this.X = -1;
            this.Y = -1;
            this.Z = -1;
            this.f1472a0 = false;
            this.f1474b0 = false;
            this.f1476c0 = null;
            this.f1478d0 = 0;
            this.f1480e0 = true;
            this.f1482f0 = true;
            this.f1484g0 = false;
            this.f1486h0 = false;
            this.f1488i0 = false;
            this.f1490j0 = false;
            this.f1492k0 = false;
            this.f1494l0 = -1;
            this.f1496m0 = -1;
            this.f1498n0 = -1;
            this.f1500o0 = -1;
            this.f1502p0 = Integer.MIN_VALUE;
            this.f1504q0 = Integer.MIN_VALUE;
            this.f1506r0 = 0.5f;
            this.f1514v0 = new s.e();
            this.f1516w0 = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.f1805n1);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                int i11 = a.f1520a.get(index);
                switch (i11) {
                    case 1:
                        this.Z = typedArrayObtainStyledAttributes.getInt(index, this.Z);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f1501p);
                        this.f1501p = resourceId;
                        if (resourceId == -1) {
                            this.f1501p = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 3:
                        this.f1503q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1503q);
                        break;
                    case 4:
                        float f10 = typedArrayObtainStyledAttributes.getFloat(index, this.f1505r) % 360.0f;
                        this.f1505r = f10;
                        if (f10 < 0.0f) {
                            this.f1505r = (360.0f - f10) % 360.0f;
                        }
                        break;
                    case 5:
                        this.f1471a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1471a);
                        break;
                    case 6:
                        this.f1473b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1473b);
                        break;
                    case 7:
                        this.f1475c = typedArrayObtainStyledAttributes.getFloat(index, this.f1475c);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1479e);
                        this.f1479e = resourceId2;
                        if (resourceId2 == -1) {
                            this.f1479e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1481f);
                        this.f1481f = resourceId3;
                        if (resourceId3 == -1) {
                            this.f1481f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1483g);
                        this.f1483g = resourceId4;
                        if (resourceId4 == -1) {
                            this.f1483g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1485h);
                        this.f1485h = resourceId5;
                        if (resourceId5 == -1) {
                            this.f1485h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1487i);
                        this.f1487i = resourceId6;
                        if (resourceId6 == -1) {
                            this.f1487i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1489j);
                        this.f1489j = resourceId7;
                        if (resourceId7 == -1) {
                            this.f1489j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1491k);
                        this.f1491k = resourceId8;
                        if (resourceId8 == -1) {
                            this.f1491k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1493l);
                        this.f1493l = resourceId9;
                        if (resourceId9 == -1) {
                            this.f1493l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1495m);
                        this.f1495m = resourceId10;
                        if (resourceId10 == -1) {
                            this.f1495m = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1507s);
                        this.f1507s = resourceId11;
                        if (resourceId11 == -1) {
                            this.f1507s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1509t);
                        this.f1509t = resourceId12;
                        if (resourceId12 == -1) {
                            this.f1509t = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1511u);
                        this.f1511u = resourceId13;
                        if (resourceId13 == -1) {
                            this.f1511u = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1513v);
                        this.f1513v = resourceId14;
                        if (resourceId14 == -1) {
                            this.f1513v = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 21:
                        this.f1515w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1515w);
                        break;
                    case 22:
                        this.f1517x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1517x);
                        break;
                    case 23:
                        this.f1518y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1518y);
                        break;
                    case 24:
                        this.f1519z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1519z);
                        break;
                    case 25:
                        this.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.A);
                        break;
                    case 26:
                        this.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.B);
                        break;
                    case 27:
                        this.f1472a0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1472a0);
                        break;
                    case 28:
                        this.f1474b0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1474b0);
                        break;
                    case 29:
                        this.G = typedArrayObtainStyledAttributes.getFloat(index, this.G);
                        break;
                    case 30:
                        this.H = typedArrayObtainStyledAttributes.getFloat(index, this.H);
                        break;
                    case 31:
                        int i12 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.P = i12;
                        if (i12 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        }
                        break;
                    case 32:
                        int i13 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.Q = i13;
                        if (i13 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        }
                        break;
                    case 33:
                        try {
                            this.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.R);
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.R) == -2) {
                                this.R = -2;
                            }
                        }
                        break;
                    case 34:
                        try {
                            this.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.T);
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.T) == -2) {
                                this.T = -2;
                            }
                        }
                        break;
                    case 35:
                        this.V = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.V));
                        this.P = 2;
                        break;
                    case 36:
                        try {
                            this.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.S);
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.S) == -2) {
                                this.S = -2;
                            }
                        }
                        break;
                    case 37:
                        try {
                            this.U = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.U);
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.U) == -2) {
                                this.U = -2;
                            }
                        }
                        break;
                    case 38:
                        this.W = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.W));
                        this.Q = 2;
                        break;
                    default:
                        switch (i11) {
                            case 44:
                                d.r(this, typedArrayObtainStyledAttributes.getString(index));
                                break;
                            case 45:
                                this.L = typedArrayObtainStyledAttributes.getFloat(index, this.L);
                                break;
                            case 46:
                                this.M = typedArrayObtainStyledAttributes.getFloat(index, this.M);
                                break;
                            case 47:
                                this.N = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.O = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.X = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.X);
                                break;
                            case 50:
                                this.Y = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.Y);
                                break;
                            case 51:
                                this.f1476c0 = typedArrayObtainStyledAttributes.getString(index);
                                break;
                            case 52:
                                int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1497n);
                                this.f1497n = resourceId15;
                                if (resourceId15 == -1) {
                                    this.f1497n = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case 53:
                                int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1499o);
                                this.f1499o = resourceId16;
                                if (resourceId16 == -1) {
                                    this.f1499o = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case 54:
                                this.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.D);
                                break;
                            case 55:
                                this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            default:
                                switch (i11) {
                                    case 64:
                                        d.p(this, typedArrayObtainStyledAttributes, index, 0);
                                        this.E = true;
                                        break;
                                    case 65:
                                        d.p(this, typedArrayObtainStyledAttributes, index, 1);
                                        this.F = true;
                                        break;
                                    case 66:
                                        this.f1478d0 = typedArrayObtainStyledAttributes.getInt(index, this.f1478d0);
                                        break;
                                    case 67:
                                        this.f1477d = typedArrayObtainStyledAttributes.getBoolean(index, this.f1477d);
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            a();
        }

        public void a() {
            this.f1486h0 = false;
            this.f1480e0 = true;
            this.f1482f0 = true;
            int i10 = ((ViewGroup.MarginLayoutParams) this).width;
            if (i10 == -2 && this.f1472a0) {
                this.f1480e0 = false;
                if (this.P == 0) {
                    this.P = 1;
                }
            }
            int i11 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i11 == -2 && this.f1474b0) {
                this.f1482f0 = false;
                if (this.Q == 0) {
                    this.Q = 1;
                }
            }
            if (i10 == 0 || i10 == -1) {
                this.f1480e0 = false;
                if (i10 == 0 && this.P == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f1472a0 = true;
                }
            }
            if (i11 == 0 || i11 == -1) {
                this.f1482f0 = false;
                if (i11 == 0 && this.Q == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f1474b0 = true;
                }
            }
            if (this.f1475c == -1.0f && this.f1471a == -1 && this.f1473b == -1) {
                return;
            }
            this.f1486h0 = true;
            this.f1480e0 = true;
            this.f1482f0 = true;
            if (!(this.f1514v0 instanceof s.g)) {
                this.f1514v0 = new s.g();
            }
            ((s.g) this.f1514v0).x1(this.Z);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void resolveLayoutDirection(int r11) {
            /*
                Method dump skipped, instruction units count: 269
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.b.resolveLayoutDirection(int):void");
        }

        public b(int i10, int i11) {
            super(i10, i11);
            this.f1471a = -1;
            this.f1473b = -1;
            this.f1475c = -1.0f;
            this.f1477d = true;
            this.f1479e = -1;
            this.f1481f = -1;
            this.f1483g = -1;
            this.f1485h = -1;
            this.f1487i = -1;
            this.f1489j = -1;
            this.f1491k = -1;
            this.f1493l = -1;
            this.f1495m = -1;
            this.f1497n = -1;
            this.f1499o = -1;
            this.f1501p = -1;
            this.f1503q = 0;
            this.f1505r = 0.0f;
            this.f1507s = -1;
            this.f1509t = -1;
            this.f1511u = -1;
            this.f1513v = -1;
            this.f1515w = Integer.MIN_VALUE;
            this.f1517x = Integer.MIN_VALUE;
            this.f1518y = Integer.MIN_VALUE;
            this.f1519z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = true;
            this.F = true;
            this.G = 0.5f;
            this.H = 0.5f;
            this.I = null;
            this.J = 0.0f;
            this.K = 1;
            this.L = -1.0f;
            this.M = -1.0f;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 0;
            this.T = 0;
            this.U = 0;
            this.V = 1.0f;
            this.W = 1.0f;
            this.X = -1;
            this.Y = -1;
            this.Z = -1;
            this.f1472a0 = false;
            this.f1474b0 = false;
            this.f1476c0 = null;
            this.f1478d0 = 0;
            this.f1480e0 = true;
            this.f1482f0 = true;
            this.f1484g0 = false;
            this.f1486h0 = false;
            this.f1488i0 = false;
            this.f1490j0 = false;
            this.f1492k0 = false;
            this.f1494l0 = -1;
            this.f1496m0 = -1;
            this.f1498n0 = -1;
            this.f1500o0 = -1;
            this.f1502p0 = Integer.MIN_VALUE;
            this.f1504q0 = Integer.MIN_VALUE;
            this.f1506r0 = 0.5f;
            this.f1514v0 = new s.e();
            this.f1516w0 = false;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1471a = -1;
            this.f1473b = -1;
            this.f1475c = -1.0f;
            this.f1477d = true;
            this.f1479e = -1;
            this.f1481f = -1;
            this.f1483g = -1;
            this.f1485h = -1;
            this.f1487i = -1;
            this.f1489j = -1;
            this.f1491k = -1;
            this.f1493l = -1;
            this.f1495m = -1;
            this.f1497n = -1;
            this.f1499o = -1;
            this.f1501p = -1;
            this.f1503q = 0;
            this.f1505r = 0.0f;
            this.f1507s = -1;
            this.f1509t = -1;
            this.f1511u = -1;
            this.f1513v = -1;
            this.f1515w = Integer.MIN_VALUE;
            this.f1517x = Integer.MIN_VALUE;
            this.f1518y = Integer.MIN_VALUE;
            this.f1519z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = true;
            this.F = true;
            this.G = 0.5f;
            this.H = 0.5f;
            this.I = null;
            this.J = 0.0f;
            this.K = 1;
            this.L = -1.0f;
            this.M = -1.0f;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 0;
            this.T = 0;
            this.U = 0;
            this.V = 1.0f;
            this.W = 1.0f;
            this.X = -1;
            this.Y = -1;
            this.Z = -1;
            this.f1472a0 = false;
            this.f1474b0 = false;
            this.f1476c0 = null;
            this.f1478d0 = 0;
            this.f1480e0 = true;
            this.f1482f0 = true;
            this.f1484g0 = false;
            this.f1486h0 = false;
            this.f1488i0 = false;
            this.f1490j0 = false;
            this.f1492k0 = false;
            this.f1494l0 = -1;
            this.f1496m0 = -1;
            this.f1498n0 = -1;
            this.f1500o0 = -1;
            this.f1502p0 = Integer.MIN_VALUE;
            this.f1504q0 = Integer.MIN_VALUE;
            this.f1506r0 = 0.5f;
            this.f1514v0 = new s.e();
            this.f1516w0 = false;
        }
    }
}
