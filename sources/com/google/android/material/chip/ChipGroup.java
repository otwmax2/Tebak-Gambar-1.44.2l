package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.core.view.a0;
import androidx.core.view.accessibility.c;
import java.util.ArrayList;
import java.util.List;
import y3.j;
import y3.k;

/* JADX INFO: loaded from: classes2.dex */
public class ChipGroup extends com.google.android.material.internal.c {
    private static final int B = j.f36769l;
    private boolean A;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f25267s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f25268t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f25269u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f25270v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private d f25271w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final b f25272x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private e f25273y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f25274z;

    private class b implements CompoundButton.OnCheckedChangeListener {
        private b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (ChipGroup.this.A) {
                return;
            }
            if (ChipGroup.this.getCheckedChipIds().isEmpty() && ChipGroup.this.f25270v) {
                ChipGroup.this.r(compoundButton.getId(), true);
                ChipGroup.this.q(compoundButton.getId(), false);
                return;
            }
            int id = compoundButton.getId();
            if (!z10) {
                if (ChipGroup.this.f25274z == id) {
                    ChipGroup.this.setCheckedId(-1);
                }
            } else {
                if (ChipGroup.this.f25274z != -1 && ChipGroup.this.f25274z != id && ChipGroup.this.f25269u) {
                    ChipGroup chipGroup = ChipGroup.this;
                    chipGroup.r(chipGroup.f25274z, false);
                }
                ChipGroup.this.setCheckedId(id);
            }
        }
    }

    public static class c extends ViewGroup.MarginLayoutParams {
        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(int i10, int i11) {
            super(i10, i11);
        }
    }

    public interface d {
        void a(ChipGroup chipGroup, int i10);
    }

    private class e implements ViewGroup.OnHierarchyChangeListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private ViewGroup.OnHierarchyChangeListener f25276o;

        private e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(a0.m());
                }
                Chip chip = (Chip) view2;
                if (chip.isChecked()) {
                    ((ChipGroup) view).m(chip.getId());
                }
                chip.setOnCheckedChangeListenerInternal(ChipGroup.this.f25272x);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f25276o;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f25276o;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, y3.b.f36635e);
    }

    private int getChipCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if (getChildAt(i11) instanceof Chip) {
                i10++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(int i10, boolean z10) {
        this.f25274z = i10;
        d dVar = this.f25271w;
        if (dVar != null && this.f25269u && z10) {
            dVar.a(this, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(int i10, boolean z10) {
        View viewFindViewById = findViewById(i10);
        if (viewFindViewById instanceof Chip) {
            this.A = true;
            ((Chip) viewFindViewById).setChecked(z10);
            this.A = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int i10) {
        q(i10, true);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i11 = this.f25274z;
                if (i11 != -1 && this.f25269u) {
                    r(i11, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i10, layoutParams);
    }

    @Override // com.google.android.material.internal.c
    public boolean c() {
        return super.c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof c);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public int getCheckedChipId() {
        if (this.f25269u) {
            return this.f25274z;
        }
        return -1;
    }

    public List<Integer> getCheckedChipIds() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                arrayList.add(Integer.valueOf(childAt.getId()));
                if (this.f25269u) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    public int getChipSpacingHorizontal() {
        return this.f25267s;
    }

    public int getChipSpacingVertical() {
        return this.f25268t;
    }

    public void m(int i10) {
        int i11 = this.f25274z;
        if (i10 == i11) {
            return;
        }
        if (i11 != -1 && this.f25269u) {
            r(i11, false);
        }
        if (i10 != -1) {
            r(i10, true);
        }
        setCheckedId(i10);
    }

    public void n() {
        this.A = true;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.A = false;
        setCheckedId(-1);
    }

    int o(View view) {
        if (!(view instanceof Chip)) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if (getChildAt(i11) instanceof Chip) {
                if (((Chip) getChildAt(i11)) == view) {
                    return i10;
                }
                i10++;
            }
        }
        return -1;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f25274z;
        if (i10 != -1) {
            r(i10, true);
            setCheckedId(this.f25274z);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        androidx.core.view.accessibility.c.x0(accessibilityNodeInfo).Z(c.b.a(getRowCount(), c() ? getChipCount() : -1, false, p() ? 1 : 2));
    }

    public boolean p() {
        return this.f25269u;
    }

    public void setChipSpacing(int i10) {
        setChipSpacingHorizontal(i10);
        setChipSpacingVertical(i10);
    }

    public void setChipSpacingHorizontal(int i10) {
        if (this.f25267s != i10) {
            this.f25267s = i10;
            setItemSpacing(i10);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i10) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i10));
    }

    public void setChipSpacingResource(int i10) {
        setChipSpacing(getResources().getDimensionPixelOffset(i10));
    }

    public void setChipSpacingVertical(int i10) {
        if (this.f25268t != i10) {
            this.f25268t = i10;
            setLineSpacing(i10);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i10) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i10));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i10) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void setOnCheckedChangeListener(d dVar) {
        this.f25271w = dVar;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f25273y.f25276o = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z10) {
        this.f25270v = z10;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i10) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i10) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override // com.google.android.material.internal.c
    public void setSingleLine(boolean z10) {
        super.setSingleLine(z10);
    }

    public void setSingleSelection(boolean z10) {
        if (this.f25269u != z10) {
            this.f25269u = z10;
            n();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ChipGroup(Context context, AttributeSet attributeSet, int i10) {
        int i11 = B;
        super(q4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f25272x = new b();
        this.f25273y = new e();
        this.f25274z = -1;
        this.A = false;
        TypedArray typedArrayH = com.google.android.material.internal.j.h(getContext(), attributeSet, k.D0, i10, i11, new int[0]);
        int dimensionPixelOffset = typedArrayH.getDimensionPixelOffset(k.F0, 0);
        setChipSpacingHorizontal(typedArrayH.getDimensionPixelOffset(k.G0, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayH.getDimensionPixelOffset(k.H0, dimensionPixelOffset));
        setSingleLine(typedArrayH.getBoolean(k.J0, false));
        setSingleSelection(typedArrayH.getBoolean(k.K0, false));
        setSelectionRequired(typedArrayH.getBoolean(k.I0, false));
        int resourceId = typedArrayH.getResourceId(k.E0, -1);
        if (resourceId != -1) {
            this.f25274z = resourceId;
        }
        typedArrayH.recycle();
        super.setOnHierarchyChangeListener(this.f25273y);
        a0.A0(this, 1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new c(layoutParams);
    }

    public void setSingleLine(int i10) {
        setSingleLine(getResources().getBoolean(i10));
    }

    public void setSingleSelection(int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }
}
