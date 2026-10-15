package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: ConstraintHelper.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b extends View {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int[] f1547o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected int f1548p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected Context f1549q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected s.h f1550r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected boolean f1551s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected String f1552t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected String f1553u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private View[] f1554v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected HashMap<Integer, String> f1555w;

    public b(Context context) {
        super(context);
        this.f1547o = new int[32];
        this.f1551s = false;
        this.f1554v = null;
        this.f1555w = new HashMap<>();
        this.f1549q = context;
        m(null);
    }

    private void d(String str) {
        if (str == null || str.length() == 0 || this.f1549q == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        int iK = k(strTrim);
        if (iK != 0) {
            this.f1555w.put(Integer.valueOf(iK), strTrim);
            e(iK);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
    }

    private void e(int i10) {
        if (i10 == getId()) {
            return;
        }
        int i11 = this.f1548p + 1;
        int[] iArr = this.f1547o;
        if (i11 > iArr.length) {
            this.f1547o = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f1547o;
        int i12 = this.f1548p;
        iArr2[i12] = i10;
        this.f1548p = i12 + 1;
    }

    private void f(String str) {
        if (str == null || str.length() == 0 || this.f1549q == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.b) && strTrim.equals(((ConstraintLayout.b) layoutParams).f1476c0)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    e(childAt.getId());
                }
            }
        }
    }

    private int j(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.f1549q.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            if (childAt.getId() != -1) {
                String resourceEntryName = null;
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    private int k(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int iJ = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object objG = constraintLayout.g(0, str);
            if (objG instanceof Integer) {
                iJ = ((Integer) objG).intValue();
            }
        }
        if (iJ == 0 && constraintLayout != null) {
            iJ = j(constraintLayout, str);
        }
        if (iJ == 0) {
            try {
                iJ = h.class.getField(str).getInt(null);
            } catch (Exception unused) {
            }
        }
        return iJ == 0 ? this.f1549q.getResources().getIdentifier(str, "id", this.f1549q.getPackageName()) : iJ;
    }

    protected void g() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        h((ConstraintLayout) parent);
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f1547o, this.f1548p);
    }

    protected void h(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i10 = 0; i10 < this.f1548p; i10++) {
            View viewI = constraintLayout.i(this.f1547o[i10]);
            if (viewI != null) {
                viewI.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    viewI.setTranslationZ(viewI.getTranslationZ() + elevation);
                }
            }
        }
    }

    protected void i(ConstraintLayout constraintLayout) {
    }

    protected View[] l(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f1554v;
        if (viewArr == null || viewArr.length != this.f1548p) {
            this.f1554v = new View[this.f1548p];
        }
        for (int i10 = 0; i10 < this.f1548p; i10++) {
            this.f1554v[i10] = constraintLayout.i(this.f1547o[i10]);
        }
        return this.f1554v;
    }

    protected void m(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, i.f1805n1);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == i.f1913z1) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f1552t = string;
                    setIds(string);
                } else if (index == i.A1) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.f1553u = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void n(s.e eVar, boolean z10) {
    }

    public void o(ConstraintLayout constraintLayout) {
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f1552t;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f1553u;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.f1551s) {
            super.onMeasure(i10, i11);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void p(ConstraintLayout constraintLayout) {
    }

    public void q(ConstraintLayout constraintLayout) {
    }

    public void r(ConstraintLayout constraintLayout) {
        String str;
        int iJ;
        if (isInEditMode()) {
            setIds(this.f1552t);
        }
        s.h hVar = this.f1550r;
        if (hVar == null) {
            return;
        }
        hVar.b();
        for (int i10 = 0; i10 < this.f1548p; i10++) {
            int i11 = this.f1547o[i10];
            View viewI = constraintLayout.i(i11);
            if (viewI == null && (iJ = j(constraintLayout, (str = this.f1555w.get(Integer.valueOf(i11))))) != 0) {
                this.f1547o[i10] = iJ;
                this.f1555w.put(Integer.valueOf(iJ), str);
                viewI = constraintLayout.i(iJ);
            }
            if (viewI != null) {
                this.f1550r.a(constraintLayout.p(viewI));
            }
        }
        this.f1550r.c(constraintLayout.f1460q);
    }

    public void s() {
        if (this.f1550r == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            ((ConstraintLayout.b) layoutParams).f1514v0 = (s.e) this.f1550r;
        }
    }

    protected void setIds(String str) {
        this.f1552t = str;
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f1548p = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                d(str.substring(i10));
                return;
            } else {
                d(str.substring(i10, iIndexOf));
                i10 = iIndexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String str) {
        this.f1553u = str;
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f1548p = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                f(str.substring(i10));
                return;
            } else {
                f(str.substring(i10, iIndexOf));
                i10 = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f1552t = null;
        this.f1548p = 0;
        for (int i10 : iArr) {
            e(i10);
        }
    }

    @Override // android.view.View
    public void setTag(int i10, Object obj) {
        super.setTag(i10, obj);
        if (obj == null && this.f1552t == null) {
            e(i10);
        }
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1547o = new int[32];
        this.f1551s = false;
        this.f1554v = null;
        this.f1555w = new HashMap<>();
        this.f1549q = context;
        m(attributeSet);
    }
}
