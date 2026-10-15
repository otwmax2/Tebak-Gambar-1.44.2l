package com.tebakgambar.component;

import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
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
import android.view.animation.LinearInterpolator;
import androidx.appcompat.widget.AppCompatButton;
import com.tebakgambar.R;
import g8.u;
import java.util.ArrayList;
import java.util.WeakHashMap;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class CustomButton extends AppCompatButton {
    private Integer A;
    private Paint.Join B;
    private float C;
    private int[] D;
    private boolean E;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View.OnClickListener f26792r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View.OnClickListener f26793s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ArrayList<b> f26794t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ArrayList<b> f26795u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private WeakHashMap<String, Pair<Canvas, Bitmap>> f26796v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Canvas f26797w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Bitmap f26798x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Drawable f26799y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f26800z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y.Z(CustomButton.this.getContext(), Integer.valueOf(R.raw.sound_click));
            if (CustomButton.this.f26792r != null) {
                CustomButton.this.f26792r.onClick(view);
            }
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f26802a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f26803b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f26804c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f26805d;

        public b(float f10, float f11, float f12, int i10) {
            this.f26802a = f10;
            this.f26803b = f11;
            this.f26804c = f12;
            this.f26805d = i10;
        }
    }

    public CustomButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26793s = new a();
        this.E = false;
        g(attributeSet);
    }

    private void f() {
        try {
            String str = String.format("%dx%d", Integer.valueOf(getWidth()), Integer.valueOf(getHeight()));
            Pair<Canvas, Bitmap> pair = this.f26796v.get(str);
            if (pair != null) {
                this.f26797w = (Canvas) pair.first;
                this.f26798x = (Bitmap) pair.second;
            } else {
                this.f26797w = new Canvas();
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
                this.f26798x = bitmapCreateBitmap;
                this.f26797w.setBitmap(bitmapCreateBitmap);
                this.f26796v.put(str, new Pair<>(this.f26797w, this.f26798x));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b(float f10, float f11, float f12, int i10) {
        if (f10 == 0.0f) {
            f10 = 1.0E-4f;
        }
        this.f26795u.add(new b(f10, f11, f12, i10));
    }

    public void c(float f10, float f11, float f12, int i10) {
        if (f10 == 0.0f) {
            f10 = 1.0E-4f;
        }
        this.f26794t.add(new b(f10, f11, f12, i10));
    }

    public void d(int i10, int i11) {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, "textColor", i10, i11);
        objectAnimatorOfInt.setInterpolator(new LinearInterpolator());
        objectAnimatorOfInt.setDuration(200L);
        objectAnimatorOfInt.setRepeatCount(-1);
        objectAnimatorOfInt.setRepeatMode(2);
        objectAnimatorOfInt.setEvaluator(new ArgbEvaluator());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorOfInt);
        animatorSet.start();
    }

    public void e() {
        this.D = new int[]{getCompoundPaddingLeft(), getCompoundPaddingRight(), getCompoundPaddingTop(), getCompoundPaddingBottom()};
        this.E = true;
    }

    public void g(AttributeSet attributeSet) {
        this.f26794t = new ArrayList<>();
        this.f26795u = new ArrayList<>();
        if (this.f26796v == null) {
            this.f26796v = new WeakHashMap<>();
        }
        setSoundEffectsEnabled(false);
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
                b(typedArrayObtainStyledAttributes.getFloat(5, 0.0f), typedArrayObtainStyledAttributes.getFloat(3, 0.0f), typedArrayObtainStyledAttributes.getFloat(4, 0.0f), typedArrayObtainStyledAttributes.getColor(2, -16777216));
            }
            if (typedArrayObtainStyledAttributes.hasValue(6)) {
                c(typedArrayObtainStyledAttributes.getFloat(9, 0.0f), typedArrayObtainStyledAttributes.getFloat(7, 0.0f), typedArrayObtainStyledAttributes.getFloat(8, 0.0f), typedArrayObtainStyledAttributes.getColor(6, -16777216));
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
                h(f10, color, join, f11);
            }
        }
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingBottom() {
        return !this.E ? super.getCompoundPaddingBottom() : this.D[3];
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        return !this.E ? super.getCompoundPaddingLeft() : this.D[0];
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        return !this.E ? super.getCompoundPaddingRight() : this.D[1];
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingTop() {
        return !this.E ? super.getCompoundPaddingTop() : this.D[2];
    }

    @Override // android.view.View
    public Drawable getForeground() {
        Drawable drawable = this.f26799y;
        return drawable == null ? drawable : new ColorDrawable(getCurrentTextColor());
    }

    public void h(float f10, int i10, Paint.Join join, float f11) {
        this.f26800z = f10;
        this.A = Integer.valueOf(i10);
        this.B = join;
        this.C = f11;
    }

    public void i() {
        this.E = false;
    }

    @Override // android.view.View
    public void invalidate() {
        if (this.E) {
            return;
        }
        super.invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        e();
        Drawable background = getBackground();
        Drawable[] compoundDrawables = getCompoundDrawables();
        int currentTextColor = getCurrentTextColor();
        setCompoundDrawables(null, null, null, null);
        for (b bVar : this.f26794t) {
            setShadowLayer(bVar.f26802a, bVar.f26803b, bVar.f26804c, bVar.f26805d);
            super.onDraw(canvas);
        }
        setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        setTextColor(currentTextColor);
        Drawable drawable = this.f26799y;
        if (drawable != null && (drawable instanceof BitmapDrawable)) {
            f();
            super.onDraw(this.f26797w);
            ((BitmapDrawable) this.f26799y).getPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
            this.f26799y.setBounds(canvas.getClipBounds());
            this.f26799y.draw(this.f26797w);
            canvas.drawBitmap(this.f26798x, 0.0f, 0.0f, (Paint) null);
            this.f26797w.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        if (this.A != null) {
            TextPaint paint = getPaint();
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeJoin(this.B);
            paint.setStrokeMiter(this.C);
            setTextColor(this.A.intValue());
            paint.setStrokeWidth(this.f26800z);
            super.onDraw(canvas);
            paint.setStyle(Paint.Style.FILL);
            setTextColor(currentTextColor);
        }
        if (this.f26795u.size() > 0) {
            f();
            TextPaint paint2 = getPaint();
            for (b bVar2 : this.f26795u) {
                setTextColor(bVar2.f26805d);
                super.onDraw(this.f26797w);
                setTextColor(-16777216);
                paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
                paint2.setMaskFilter(new BlurMaskFilter(bVar2.f26802a, BlurMaskFilter.Blur.NORMAL));
                this.f26797w.save();
                this.f26797w.translate(bVar2.f26803b, bVar2.f26804c);
                super.onDraw(this.f26797w);
                this.f26797w.restore();
                canvas.drawBitmap(this.f26798x, 0.0f, 0.0f, (Paint) null);
                this.f26797w.drawColor(0, PorterDuff.Mode.CLEAR);
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
        i();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        super.setOnClickListener(this.f26793s);
    }

    @Override // android.view.View
    public void postInvalidate() {
        if (this.E) {
            return;
        }
        super.postInvalidate();
    }

    @Override // android.view.View
    public void requestLayout() {
        if (this.E) {
            return;
        }
        super.requestLayout();
    }

    public void setForegroundDrawable(Drawable drawable) {
        this.f26799y = drawable;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f26792r = onClickListener;
    }

    @Override // android.view.View
    public void invalidate(Rect rect) {
        if (this.E) {
            return;
        }
        super.invalidate(rect);
    }

    @Override // android.view.View
    public void postInvalidate(int i10, int i11, int i12, int i13) {
        if (this.E) {
            return;
        }
        super.postInvalidate(i10, i11, i12, i13);
    }

    @Override // android.view.View
    public void invalidate(int i10, int i11, int i12, int i13) {
        if (this.E) {
            return;
        }
        super.invalidate(i10, i11, i12, i13);
    }
}
