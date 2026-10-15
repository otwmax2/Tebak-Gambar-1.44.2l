package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.view.a0;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
final class MaterialCalendarGridView extends GridView {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Calendar f25304o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f25305p;

    class a extends androidx.core.view.a {
        a() {
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.accessibility.c cVar) {
            super.g(view, cVar);
            cVar.Z(null);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a(int i10, Rect rect) {
        if (i10 == 33) {
            setSelection(getAdapter().i());
        } else if (i10 == 130) {
            setSelection(getAdapter().b());
        } else {
            super.onFocusChanged(true, i10, rect);
        }
    }

    private static int c(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    private static boolean d(Long l10, Long l11, Long l12, Long l13) {
        return l10 == null || l11 == null || l12 == null || l13 == null || l12.longValue() > l11.longValue() || l13.longValue() < l10.longValue();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public m getAdapter() {
        return (m) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        int iA;
        int iC;
        int iA2;
        int iC2;
        int width;
        int i10;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        m adapter = getAdapter();
        d<?> dVar = adapter.f25397p;
        c cVar = adapter.f25399r;
        Long item = adapter.getItem(adapter.b());
        Long item2 = adapter.getItem(adapter.i());
        for (androidx.core.util.d<Long, Long> dVar2 : dVar.t0()) {
            Long l10 = dVar2.f2381a;
            if (l10 != null) {
                if (dVar2.f2382b != null) {
                    long jLongValue = l10.longValue();
                    long jLongValue2 = dVar2.f2382b.longValue();
                    if (!d(item, item2, Long.valueOf(jLongValue), Long.valueOf(jLongValue2))) {
                        boolean zD = com.google.android.material.internal.k.d(this);
                        if (jLongValue < item.longValue()) {
                            iA = adapter.b();
                            iC = adapter.f(iA) ? 0 : !zD ? materialCalendarGridView.getChildAt(iA - 1).getRight() : materialCalendarGridView.getChildAt(iA - 1).getLeft();
                        } else {
                            materialCalendarGridView.f25304o.setTimeInMillis(jLongValue);
                            iA = adapter.a(materialCalendarGridView.f25304o.get(5));
                            iC = c(materialCalendarGridView.getChildAt(iA));
                        }
                        if (jLongValue2 > item2.longValue()) {
                            iA2 = Math.min(adapter.i(), getChildCount() - 1);
                            iC2 = adapter.g(iA2) ? getWidth() : !zD ? materialCalendarGridView.getChildAt(iA2).getRight() : materialCalendarGridView.getChildAt(iA2).getLeft();
                        } else {
                            materialCalendarGridView.f25304o.setTimeInMillis(jLongValue2);
                            iA2 = adapter.a(materialCalendarGridView.f25304o.get(5));
                            iC2 = c(materialCalendarGridView.getChildAt(iA2));
                        }
                        int itemId = (int) adapter.getItemId(iA);
                        int itemId2 = (int) adapter.getItemId(iA2);
                        while (itemId <= itemId2) {
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View childAt = materialCalendarGridView.getChildAt(numColumns);
                            int top = childAt.getTop() + cVar.f25325a.c();
                            int bottom = childAt.getBottom() - cVar.f25325a.b();
                            if (zD) {
                                int i11 = iA2 > numColumns2 ? 0 : iC2;
                                width = numColumns > iA ? getWidth() : iC;
                                i10 = i11;
                            } else {
                                i10 = numColumns > iA ? 0 : iC;
                                width = iA2 > numColumns2 ? getWidth() : iC2;
                            }
                            canvas.drawRect(i10, top, width, bottom, cVar.f25332h);
                            itemId++;
                            materialCalendarGridView = this;
                            adapter = adapter;
                        }
                    }
                }
            }
            materialCalendarGridView = this;
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        if (z10) {
            a(i10, rect);
        } else {
            super.onFocusChanged(false, i10, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (!super.onKeyDown(i10, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().b()) {
            return true;
        }
        if (19 != i10) {
            return false;
        }
        setSelection(getAdapter().b());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i10, int i11) {
        if (!this.f25305p) {
            super.onMeasure(i10, i11);
            return;
        }
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i10) {
        if (i10 < getAdapter().b()) {
            super.setSelection(getAdapter().b());
        } else {
            super.setSelection(i10);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f25304o = s.k();
        if (i.D(getContext())) {
            setNextFocusLeftId(y3.f.f36696a);
            setNextFocusRightId(y3.f.f36698c);
        }
        this.f25305p = i.E(getContext());
        a0.q0(this, new a());
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof m)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), m.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }
}
