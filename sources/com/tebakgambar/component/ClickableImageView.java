package com.tebakgambar.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import androidx.appcompat.widget.AppCompatImageView;
import com.tebakgambar.R;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class ClickableImageView extends AppCompatImageView {
    float A;
    private View.OnClickListener B;
    private View.OnClickListener C;
    private View.OnTouchListener D;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f26781r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f26782s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f26783t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f26784u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f26785v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f26786w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    int f26787x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int f26788y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    float f26789z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y.Z(ClickableImageView.this.getContext(), Integer.valueOf(R.raw.sound_click));
            if (ClickableImageView.this.B != null) {
                ClickableImageView.this.B.onClick(view);
            }
        }
    }

    class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            int action = motionEvent.getAction();
            if (action == 0) {
                ClickableImageView.this.f26781r = motionEvent.getRawX();
                ClickableImageView.this.f26782s = motionEvent.getRawY();
                ClickableImageView.this.f26783t = view.getX() - motionEvent.getRawX();
                ClickableImageView.this.f26784u = view.getY() - motionEvent.getRawY();
            } else if (action == 1) {
                ClickableImageView clickableImageView = ClickableImageView.this;
                float f10 = clickableImageView.f26789z;
                int i10 = clickableImageView.f26787x;
                int i11 = clickableImageView.f26785v;
                int i12 = marginLayoutParams.rightMargin;
                if (f10 > ((i10 - i11) - i12) / 2) {
                    clickableImageView.f26789z = (i10 - i11) - i12;
                } else {
                    clickableImageView.f26789z = marginLayoutParams.leftMargin;
                }
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                float f11 = rawX - ClickableImageView.this.f26781r;
                float f12 = rawY - ClickableImageView.this.f26782s;
                if (Math.abs(f11) < 10.0f && Math.abs(f12) < 10.0f) {
                    return ClickableImageView.this.performClick();
                }
                view.animate().x(ClickableImageView.this.f26789z).y(ClickableImageView.this.A).setInterpolator(new OvershootInterpolator()).setDuration(300L).start();
            } else {
                if (action != 2) {
                    return false;
                }
                ClickableImageView.this.f26785v = view.getWidth();
                ClickableImageView.this.f26786w = view.getHeight();
                View view2 = (View) view.getParent();
                ClickableImageView.this.f26787x = view2.getWidth();
                ClickableImageView.this.f26788y = view2.getHeight();
                ClickableImageView.this.f26789z = motionEvent.getRawX() + ClickableImageView.this.f26783t;
                ClickableImageView clickableImageView2 = ClickableImageView.this;
                clickableImageView2.f26789z = Math.max(marginLayoutParams.leftMargin, clickableImageView2.f26789z);
                ClickableImageView clickableImageView3 = ClickableImageView.this;
                clickableImageView3.f26789z = Math.min((clickableImageView3.f26787x - clickableImageView3.f26785v) - marginLayoutParams.rightMargin, clickableImageView3.f26789z);
                ClickableImageView.this.A = motionEvent.getRawY() + ClickableImageView.this.f26784u;
                ClickableImageView clickableImageView4 = ClickableImageView.this;
                clickableImageView4.A = Math.max(marginLayoutParams.topMargin, clickableImageView4.A);
                ClickableImageView clickableImageView5 = ClickableImageView.this;
                clickableImageView5.A = Math.min((clickableImageView5.f26788y - clickableImageView5.f26786w) - marginLayoutParams.bottomMargin, clickableImageView5.A);
                view.animate().x(ClickableImageView.this.f26789z).y(ClickableImageView.this.A).setDuration(0L).start();
            }
            return true;
        }
    }

    public ClickableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.C = new a();
        this.D = new b();
    }

    public void l() {
        setOnTouchListener(this.D);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        super.setOnClickListener(this.C);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.B = onClickListener;
    }
}
