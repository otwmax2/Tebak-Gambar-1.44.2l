package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.core.view.a0;
import androidx.core.view.accessibility.c;
import androidx.core.view.h;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.k;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;
import o4.k;
import y3.j;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final String f25212y = MaterialButtonToggleGroup.class.getSimpleName();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f25213z = j.f36774q;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List<d> f25214o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final c f25215p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final f f25216q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final LinkedHashSet<e> f25217r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Comparator<MaterialButton> f25218s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Integer[] f25219t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f25220u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f25221v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f25222w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f25223x;

    class a implements Comparator<MaterialButton> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            int iCompareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
            return iCompareTo2 != 0 ? iCompareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
        }
    }

    class b extends androidx.core.view.a {
        b() {
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.accessibility.c cVar) {
            super.g(view, cVar);
            cVar.a0(c.C0039c.a(0, 1, MaterialButtonToggleGroup.this.n(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    private class c implements MaterialButton.a {
        private c() {
        }

        @Override // com.google.android.material.button.MaterialButton.a
        public void a(MaterialButton materialButton, boolean z10) {
            if (MaterialButtonToggleGroup.this.f25220u) {
                return;
            }
            if (MaterialButtonToggleGroup.this.f25221v) {
                MaterialButtonToggleGroup.this.f25223x = z10 ? materialButton.getId() : -1;
            }
            if (MaterialButtonToggleGroup.this.u(materialButton.getId(), z10)) {
                MaterialButtonToggleGroup.this.l(materialButton.getId(), materialButton.isChecked());
            }
            MaterialButtonToggleGroup.this.invalidate();
        }

        /* synthetic */ c(MaterialButtonToggleGroup materialButtonToggleGroup, a aVar) {
            this();
        }
    }

    private static class d {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final o4.c f25227e = new o4.a(0.0f);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        o4.c f25228a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        o4.c f25229b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        o4.c f25230c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        o4.c f25231d;

        d(o4.c cVar, o4.c cVar2, o4.c cVar3, o4.c cVar4) {
            this.f25228a = cVar;
            this.f25229b = cVar3;
            this.f25230c = cVar4;
            this.f25231d = cVar2;
        }

        public static d a(d dVar) {
            o4.c cVar = f25227e;
            return new d(cVar, dVar.f25231d, cVar, dVar.f25230c);
        }

        public static d b(d dVar, View view) {
            return k.d(view) ? c(dVar) : d(dVar);
        }

        public static d c(d dVar) {
            o4.c cVar = dVar.f25228a;
            o4.c cVar2 = dVar.f25231d;
            o4.c cVar3 = f25227e;
            return new d(cVar, cVar2, cVar3, cVar3);
        }

        public static d d(d dVar) {
            o4.c cVar = f25227e;
            return new d(cVar, cVar, dVar.f25229b, dVar.f25230c);
        }

        public static d e(d dVar, View view) {
            return k.d(view) ? d(dVar) : c(dVar);
        }

        public static d f(d dVar) {
            o4.c cVar = dVar.f25228a;
            o4.c cVar2 = f25227e;
            return new d(cVar, cVar2, dVar.f25229b, cVar2);
        }
    }

    public interface e {
        void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10);
    }

    private class f implements MaterialButton.b {
        private f() {
        }

        @Override // com.google.android.material.button.MaterialButton.b
        public void a(MaterialButton materialButton, boolean z10) {
            MaterialButtonToggleGroup.this.invalidate();
        }

        /* synthetic */ f(MaterialButtonToggleGroup materialButtonToggleGroup, a aVar) {
            this();
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, y3.b.f36648r);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (p(i10)) {
                return i10;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (p(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if ((getChildAt(i11) instanceof MaterialButton) && p(i11)) {
                i10++;
            }
        }
        return i10;
    }

    private void h() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i10 = firstVisibleChildIndex + 1; i10 < getChildCount(); i10++) {
            MaterialButton materialButtonM = m(i10);
            int iMin = Math.min(materialButtonM.getStrokeWidth(), m(i10 - 1).getStrokeWidth());
            LinearLayout.LayoutParams layoutParamsI = i(materialButtonM);
            if (getOrientation() == 0) {
                h.c(layoutParamsI, 0);
                h.d(layoutParamsI, -iMin);
                layoutParamsI.topMargin = 0;
            } else {
                layoutParamsI.bottomMargin = 0;
                layoutParamsI.topMargin = -iMin;
                h.d(layoutParamsI, 0);
            }
            materialButtonM.setLayoutParams(layoutParamsI);
        }
        r(firstVisibleChildIndex);
    }

    private LinearLayout.LayoutParams i(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    private void j(int i10) {
        s(i10, true);
        u(i10, true);
        setCheckedId(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i10, boolean z10) {
        Iterator<e> it = this.f25217r.iterator();
        while (it.hasNext()) {
            it.next().a(this, i10, z10);
        }
    }

    private MaterialButton m(int i10) {
        return (MaterialButton) getChildAt(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int n(View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if (getChildAt(i11) == view) {
                return i10;
            }
            if ((getChildAt(i11) instanceof MaterialButton) && p(i11)) {
                i10++;
            }
        }
        return -1;
    }

    private d o(int i10, int i11, int i12) {
        d dVar = this.f25214o.get(i10);
        if (i11 == i12) {
            return dVar;
        }
        boolean z10 = getOrientation() == 0;
        if (i10 == i11) {
            return z10 ? d.e(dVar, this) : d.f(dVar);
        }
        if (i10 == i12) {
            return z10 ? d.b(dVar, this) : d.a(dVar);
        }
        return null;
    }

    private boolean p(int i10) {
        return getChildAt(i10).getVisibility() != 8;
    }

    private void r(int i10) {
        if (getChildCount() == 0 || i10 == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m(i10).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
        } else {
            h.c(layoutParams, 0);
            h.d(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    private void s(int i10, boolean z10) {
        View viewFindViewById = findViewById(i10);
        if (viewFindViewById instanceof MaterialButton) {
            this.f25220u = true;
            ((MaterialButton) viewFindViewById).setChecked(z10);
            this.f25220u = false;
        }
    }

    private void setCheckedId(int i10) {
        this.f25223x = i10;
        l(i10, true);
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(a0.m());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.a(this.f25215p);
        materialButton.setOnPressedChangeListenerInternal(this.f25216q);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    private static void t(k.b bVar, d dVar) {
        if (dVar == null) {
            bVar.o(0.0f);
        } else {
            bVar.B(dVar.f25228a).t(dVar.f25231d).F(dVar.f25229b).x(dVar.f25230c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean u(int i10, boolean z10) {
        List<Integer> checkedButtonIds = getCheckedButtonIds();
        if (this.f25222w && checkedButtonIds.isEmpty()) {
            s(i10, true);
            this.f25223x = i10;
            return false;
        }
        if (z10 && this.f25221v) {
            checkedButtonIds.remove(Integer.valueOf(i10));
            Iterator<Integer> it = checkedButtonIds.iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                s(iIntValue, false);
                l(iIntValue, false);
            }
        }
        return true;
    }

    private void v() {
        TreeMap treeMap = new TreeMap(this.f25218s);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            treeMap.put(m(i10), Integer.valueOf(i10));
        }
        this.f25219t = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e(f25212y, "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i10, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        if (materialButton.isChecked()) {
            u(materialButton.getId(), true);
            setCheckedId(materialButton.getId());
        }
        o4.k shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f25214o.add(new d(shapeAppearanceModel.r(), shapeAppearanceModel.j(), shapeAppearanceModel.t(), shapeAppearanceModel.l()));
        a0.q0(materialButton, new b());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        v();
        super.dispatchDraw(canvas);
    }

    public void g(e eVar) {
        this.f25217r.add(eVar);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    public int getCheckedButtonId() {
        if (this.f25221v) {
            return this.f25223x;
        }
        return -1;
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            MaterialButton materialButtonM = m(i10);
            if (materialButtonM.isChecked()) {
                arrayList.add(Integer.valueOf(materialButtonM.getId()));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        Integer[] numArr = this.f25219t;
        if (numArr != null && i11 < numArr.length) {
            return numArr[i11].intValue();
        }
        Log.w(f25212y, "Child order wasn't updated");
        return i11;
    }

    public void k() {
        this.f25220u = true;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            MaterialButton materialButtonM = m(i10);
            materialButtonM.setChecked(false);
            l(materialButtonM.getId(), false);
        }
        this.f25220u = false;
        setCheckedId(-1);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f25223x;
        if (i10 != -1) {
            j(i10);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        androidx.core.view.accessibility.c.x0(accessibilityNodeInfo).Z(c.b.a(1, getVisibleButtonCount(), false, q() ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        w();
        h();
        super.onMeasure(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.h(this.f25215p);
            materialButton.setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f25214o.remove(iIndexOfChild);
        }
        w();
        h();
    }

    public boolean q() {
        return this.f25221v;
    }

    public void setSelectionRequired(boolean z10) {
        this.f25222w = z10;
    }

    public void setSingleSelection(boolean z10) {
        if (this.f25221v != z10) {
            this.f25221v = z10;
            k();
        }
    }

    void w() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i10 = 0; i10 < childCount; i10++) {
            MaterialButton materialButtonM = m(i10);
            if (materialButtonM.getVisibility() != 8) {
                k.b bVarV = materialButtonM.getShapeAppearanceModel().v();
                t(bVarV, o(i10, firstVisibleChildIndex, lastVisibleChildIndex));
                materialButtonM.setShapeAppearanceModel(bVarV.m());
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f25213z;
        super(q4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f25214o = new ArrayList();
        a aVar = null;
        this.f25215p = new c(this, aVar);
        this.f25216q = new f(this, aVar);
        this.f25217r = new LinkedHashSet<>();
        this.f25218s = new a();
        this.f25220u = false;
        TypedArray typedArrayH = com.google.android.material.internal.j.h(getContext(), attributeSet, y3.k.f36830h2, i10, i11, new int[0]);
        setSingleSelection(typedArrayH.getBoolean(y3.k.f36851k2, false));
        this.f25223x = typedArrayH.getResourceId(y3.k.f36837i2, -1);
        this.f25222w = typedArrayH.getBoolean(y3.k.f36844j2, false);
        setChildrenDrawingOrderEnabled(true);
        typedArrayH.recycle();
        a0.A0(this, 1);
    }

    public void setSingleSelection(int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }
}
