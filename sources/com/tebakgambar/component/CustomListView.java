package com.tebakgambar.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListView;

/* JADX INFO: loaded from: classes2.dex */
public class CustomListView extends ListView {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f26822o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private GestureDetector f26823p;

    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            try {
                return Math.abs(f11) > Math.abs(f10);
            } catch (Exception unused) {
                return false;
            }
        }
    }

    public CustomListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26822o = false;
        try {
            this.f26823p = new GestureDetector(context, new a());
            setFadingEdgeLength(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean a() {
        return this.f26822o;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent) && this.f26823p.onTouchEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i10, int i11) {
        if (!a()) {
            super.onMeasure(i10, i11);
            return;
        }
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    public void setExpanded(boolean z10) {
        this.f26822o = z10;
    }
}
