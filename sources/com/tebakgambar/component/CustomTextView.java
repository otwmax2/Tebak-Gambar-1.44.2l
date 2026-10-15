package com.tebakgambar.component;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.TextView;
import com.tebakgambar.R;
import g8.u;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Locale;
import java.util.WeakHashMap;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class CustomTextView extends TextView {
    private int[] A;
    private boolean B;
    private boolean C;
    private ValueAnimator D;
    private d E;
    private DecimalFormat F;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View.OnClickListener f26825o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View.OnClickListener f26826p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ArrayList<e> f26827q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ArrayList<e> f26828r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private WeakHashMap<String, Pair<Canvas, Bitmap>> f26829s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Canvas f26830t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Bitmap f26831u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Drawable f26832v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f26833w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Integer f26834x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Paint.Join f26835y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f26836z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y.Z(CustomTextView.this.getContext(), Integer.valueOf(R.raw.sound_click));
            if (CustomTextView.this.f26825o != null) {
                CustomTextView.this.f26825o.onClick(view);
            }
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CustomTextView.super.setText(CustomTextView.this.F == null ? String.valueOf(valueAnimator.getAnimatedValue()) : CustomTextView.this.F.format(valueAnimator.getAnimatedValue()));
        }
    }

    class c implements Animator.AnimatorListener {
        c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            CustomTextView.this.C = false;
            if (CustomTextView.this.E == null) {
                return;
            }
            CustomTextView.this.E.a(CustomTextView.this.D.getAnimatedValue());
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            CustomTextView.this.C = true;
            if (CustomTextView.this.E == null) {
                return;
            }
            CustomTextView.this.E.b(CustomTextView.this.D.getAnimatedValue());
        }
    }

    public interface d {
        void a(Object obj);

        void b(Object obj);
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f26840a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f26841b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f26842c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f26843d;

        public e(float f10, float f11, float f12, int i10) {
            this.f26840a = f10;
            this.f26841b = f11;
            this.f26842c = f12;
            this.f26843d = i10;
        }
    }

    public CustomTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26826p = new a();
        this.B = false;
        this.C = false;
        l(attributeSet);
    }

    private void k() {
        String str = String.format("%dx%d", Integer.valueOf(getWidth()), Integer.valueOf(getHeight()));
        Pair<Canvas, Bitmap> pair = this.f26829s.get(str);
        if (pair != null) {
            this.f26830t = (Canvas) pair.first;
            this.f26831u = (Bitmap) pair.second;
            return;
        }
        this.f26830t = new Canvas();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        this.f26831u = bitmapCreateBitmap;
        this.f26830t.setBitmap(bitmapCreateBitmap);
        this.f26829s.put(str, new Pair<>(this.f26830t, this.f26831u));
    }

    private void n() {
        DecimalFormat decimalFormat = new DecimalFormat("#,##0");
        this.F = decimalFormat;
        decimalFormat.setDecimalFormatSymbols(new DecimalFormatSymbols(Locale.ITALY));
        ValueAnimator valueAnimator = new ValueAnimator();
        this.D = valueAnimator;
        valueAnimator.addUpdateListener(new b());
        this.D.addListener(new c());
        this.D.setDuration(1000L);
    }

    public void g(float f10, float f11, float f12, int i10) {
        if (f10 == 0.0f) {
            f10 = 1.0E-4f;
        }
        this.f26828r.add(new e(f10, f11, f12, i10));
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingBottom() {
        return !this.B ? super.getCompoundPaddingBottom() : this.A[3];
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        return !this.B ? super.getCompoundPaddingLeft() : this.A[0];
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        return !this.B ? super.getCompoundPaddingRight() : this.A[1];
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingTop() {
        return !this.B ? super.getCompoundPaddingTop() : this.A[2];
    }

    @Override // android.view.View
    public Drawable getForeground() {
        Drawable drawable = this.f26832v;
        return drawable == null ? drawable : new ColorDrawable(getCurrentTextColor());
    }

    public void h(float f10, float f11, float f12, int i10) {
        if (f10 == 0.0f) {
            f10 = 1.0E-4f;
        }
        this.f26827q.add(new e(f10, f11, f12, i10));
    }

    public void i(int i10, int i11) {
        if (this.C) {
            return;
        }
        this.D.setIntValues(i10, i11);
        this.D.start();
    }

    @Override // android.view.View
    public void invalidate() {
        if (this.B) {
            return;
        }
        super.invalidate();
    }

    public void j() {
        this.A = new int[]{getCompoundPaddingLeft(), getCompoundPaddingRight(), getCompoundPaddingTop(), getCompoundPaddingBottom()};
        this.B = true;
    }

    public void l(AttributeSet attributeSet) {
        this.f26827q = new ArrayList<>();
        this.f26828r = new ArrayList<>();
        if (this.f26829s == null) {
            this.f26829s = new WeakHashMap<>();
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, u.X);
            String string = typedArrayObtainStyledAttributes.getString(14);
            if (string != null) {
                setTypeface(Typeface.createFromAsset(getContext().getAssets(), String.format("fonts/%s.ttf", string)));
            }
            if (typedArrayObtainStyledAttributes.hasValue(1)) {
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
                if (drawable != null) {
                    setForegroundDrawable(drawable);
                } else {
                    setTextColor(typedArrayObtainStyledAttributes.getColor(1, -16777216));
                }
            }
            if (typedArrayObtainStyledAttributes.hasValue(0)) {
                Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(0);
                if (drawable2 != null) {
                    setBackgroundDrawable(drawable2);
                } else {
                    setBackgroundColor(typedArrayObtainStyledAttributes.getColor(0, -16777216));
                }
            }
            if (typedArrayObtainStyledAttributes.hasValue(2)) {
                g(typedArrayObtainStyledAttributes.getFloat(5, 0.0f), typedArrayObtainStyledAttributes.getFloat(3, 0.0f), typedArrayObtainStyledAttributes.getFloat(4, 0.0f), typedArrayObtainStyledAttributes.getColor(2, -16777216));
            }
            if (typedArrayObtainStyledAttributes.hasValue(6)) {
                h(typedArrayObtainStyledAttributes.getFloat(9, 0.0f), typedArrayObtainStyledAttributes.getFloat(7, 0.0f), typedArrayObtainStyledAttributes.getFloat(8, 0.0f), typedArrayObtainStyledAttributes.getColor(6, -16777216));
            }
            if (typedArrayObtainStyledAttributes.hasValue(10)) {
                float f10 = typedArrayObtainStyledAttributes.getFloat(13, 1.0f);
                int color = typedArrayObtainStyledAttributes.getColor(10, -16777216);
                float f11 = typedArrayObtainStyledAttributes.getFloat(12, 10.0f);
                Paint.Join join = null;
                int i10 = typedArrayObtainStyledAttributes.getInt(11, 0);
                if (i10 == 0) {
                    join = Paint.Join.MITER;
                } else if (i10 == 1) {
                    join = Paint.Join.BEVEL;
                } else if (i10 == 2) {
                    join = Paint.Join.ROUND;
                }
                m(f10, color, join, f11);
            }
        }
        n();
    }

    public void m(float f10, int i10, Paint.Join join, float f11) {
        this.f26833w = f10;
        this.f26834x = Integer.valueOf(i10);
        this.f26835y = join;
        this.f26836z = f11;
    }

    public void o() {
        this.B = false;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.D;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        j();
        Drawable background = getBackground();
        Drawable[] compoundDrawables = getCompoundDrawables();
        int currentTextColor = getCurrentTextColor();
        setCompoundDrawables(null, null, null, null);
        for (e eVar : this.f26827q) {
            setShadowLayer(eVar.f26840a, eVar.f26841b, eVar.f26842c, eVar.f26843d);
            super.onDraw(canvas);
        }
        setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        setTextColor(currentTextColor);
        Drawable drawable = this.f26832v;
        if (drawable != null && (drawable instanceof BitmapDrawable)) {
            k();
            super.onDraw(this.f26830t);
            ((BitmapDrawable) this.f26832v).getPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
            this.f26832v.setBounds(canvas.getClipBounds());
            this.f26832v.draw(this.f26830t);
            canvas.drawBitmap(this.f26831u, 0.0f, 0.0f, (Paint) null);
            this.f26830t.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        if (this.f26834x != null) {
            TextPaint paint = getPaint();
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeJoin(this.f26835y);
            paint.setStrokeMiter(this.f26836z);
            setTextColor(this.f26834x.intValue());
            paint.setStrokeWidth(this.f26833w);
            super.onDraw(canvas);
            paint.setStyle(Paint.Style.FILL);
            setTextColor(currentTextColor);
        }
        if (this.f26828r.size() > 0) {
            k();
            TextPaint paint2 = getPaint();
            for (e eVar2 : this.f26828r) {
                setTextColor(eVar2.f26843d);
                super.onDraw(this.f26830t);
                setTextColor(-16777216);
                paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
                paint2.setMaskFilter(new BlurMaskFilter(eVar2.f26840a, BlurMaskFilter.Blur.NORMAL));
                this.f26830t.save();
                this.f26830t.translate(eVar2.f26841b, eVar2.f26842c);
                super.onDraw(this.f26830t);
                this.f26830t.restore();
                canvas.drawBitmap(this.f26831u, 0.0f, 0.0f, (Paint) null);
                this.f26830t.drawColor(0, PorterDuff.Mode.CLEAR);
                paint2.setXfermode(null);
                paint2.setMaskFilter(null);
                setTextColor(currentTextColor);
                setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            }
        }
        if (compoundDrawables != null) {
            setCompoundDrawablesWithIntrinsicBounds(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
        }
        setBackgroundDrawable(background);
        setTextColor(currentTextColor);
        o();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (isClickable()) {
            super.setOnClickListener(this.f26826p);
        }
    }

    @Override // android.view.View
    public void postInvalidate() {
        if (this.B) {
            return;
        }
        super.postInvalidate();
    }

    @Override // android.view.View
    public void requestLayout() {
        if (this.B) {
            return;
        }
        super.requestLayout();
    }

    public void setForegroundDrawable(Drawable drawable) {
        this.f26832v = drawable;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        if (isClickable()) {
            this.f26825o = onClickListener;
        } else {
            super.setOnClickListener(onClickListener);
        }
    }

    @Override // android.view.View
    public void invalidate(Rect rect) {
        if (this.B) {
            return;
        }
        super.invalidate(rect);
    }

    @Override // android.view.View
    public void postInvalidate(int i10, int i11, int i12, int i13) {
        if (this.B) {
            return;
        }
        super.postInvalidate(i10, i11, i12, i13);
    }

    @Override // android.view.View
    public void invalidate(int i10, int i11, int i12, int i13) {
        if (this.B) {
            return;
        }
        super.invalidate(i10, i11, i12, i13);
    }
}
