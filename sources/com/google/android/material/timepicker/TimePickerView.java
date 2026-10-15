package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.a0;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import y3.h;

/* JADX INFO: loaded from: classes2.dex */
class TimePickerView extends ConstraintLayout {
    private final Chip M;
    private final Chip N;
    private final ClockHandView O;
    private final ClockFaceView P;
    private final MaterialButtonToggleGroup Q;
    private final View.OnClickListener R;
    private f S;
    private g T;
    private e U;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TimePickerView.this.T != null) {
                TimePickerView.this.T.a(((Integer) view.getTag(y3.f.H)).intValue());
            }
        }
    }

    class b implements MaterialButtonToggleGroup.e {
        b() {
        }

        @Override // com.google.android.material.button.MaterialButtonToggleGroup.e
        public void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10) {
            int i11 = i10 == y3.f.f36706k ? 1 : 0;
            if (TimePickerView.this.S == null || !z10) {
                return;
            }
            TimePickerView.this.S.a(i11);
        }
    }

    class c extends GestureDetector.SimpleOnGestureListener {
        c() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            boolean zOnDoubleTap = super.onDoubleTap(motionEvent);
            if (TimePickerView.this.U != null) {
                TimePickerView.this.U.a();
            }
            return zOnDoubleTap;
        }
    }

    class d implements View.OnTouchListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ GestureDetector f25761o;

        d(GestureDetector gestureDetector) {
            this.f25761o = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.f25761o.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    interface e {
        void a();
    }

    interface f {
        void a(int i10);
    }

    interface g {
        void a(int i10);
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void E() {
        Chip chip = this.M;
        int i10 = y3.f.H;
        chip.setTag(i10, 12);
        this.N.setTag(i10, 10);
        this.M.setOnClickListener(this.R);
        this.N.setOnClickListener(this.R);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void F() {
        d dVar = new d(new GestureDetector(getContext(), new c()));
        this.M.setOnTouchListener(dVar);
        this.N.setOnTouchListener(dVar);
    }

    private void G() {
        if (this.Q.getVisibility() == 0) {
            androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d();
            dVar.g(this);
            dVar.e(y3.f.f36703h, a0.E(this) == 0 ? 2 : 1);
            dVar.c(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        G();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (view == this && i10 == 0) {
            G();
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.R = new a();
        LayoutInflater.from(context).inflate(h.f36733j, this);
        this.P = (ClockFaceView) findViewById(y3.f.f36704i);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(y3.f.f36707l);
        this.Q = materialButtonToggleGroup;
        materialButtonToggleGroup.g(new b());
        this.M = (Chip) findViewById(y3.f.f36710o);
        this.N = (Chip) findViewById(y3.f.f36708m);
        this.O = (ClockHandView) findViewById(y3.f.f36705j);
        F();
        E();
    }
}
