package com.tebakgambar.component;

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
import android.view.KeyEvent;
import android.widget.EditText;
import g8.u;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class CustomEditText extends EditText {
    private boolean A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ArrayList<b> f26806o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ArrayList<b> f26807p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private WeakHashMap<String, Pair<Canvas, Bitmap>> f26808q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Canvas f26809r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Bitmap f26810s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Drawable f26811t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f26812u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Integer f26813v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Paint.Join f26814w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f26815x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private a f26816y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int[] f26817z;

    public interface a {
        void a(CustomEditText customEditText);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f26818a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f26819b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f26820c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f26821d;

        public b(float f10, float f11, float f12, int i10) {
            this.f26818a = f10;
            this.f26819b = f11;
            this.f26820c = f12;
            this.f26821d = i10;
        }
    }

    public CustomEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A = false;
        e(attributeSet);
    }

    private void d() {
        String str = String.format("%dx%d", Integer.valueOf(getWidth()), Integer.valueOf(getHeight()));
        Pair<Canvas, Bitmap> pair = this.f26808q.get(str);
        if (pair != null) {
            this.f26809r = (Canvas) pair.first;
            this.f26810s = (Bitmap) pair.second;
            return;
        }
        this.f26809r = new Canvas();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        this.f26810s = bitmapCreateBitmap;
        this.f26809r.setBitmap(bitmapCreateBitmap);
        this.f26808q.put(str, new Pair<>(this.f26809r, this.f26810s));
    }

    public void a(float f10, float f11, float f12, int i10) {
        if (f10 == 0.0f) {
            f10 = 1.0E-4f;
        }
        this.f26807p.add(new b(f10, f11, f12, i10));
    }

    public void b(float f10, float f11, float f12, int i10) {
        if (f10 == 0.0f) {
            f10 = 1.0E-4f;
        }
        this.f26806o.add(new b(f10, f11, f12, i10));
    }

    public void c() {
        this.f26817z = new int[]{getCompoundPaddingLeft(), getCompoundPaddingRight(), getCompoundPaddingTop(), getCompoundPaddingBottom()};
        this.A = true;
    }

    public void e(AttributeSet attributeSet) {
        this.f26806o = new ArrayList<>();
        this.f26807p = new ArrayList<>();
        if (this.f26808q == null) {
            this.f26808q = new WeakHashMap<>();
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
                a(typedArrayObtainStyledAttributes.getFloat(5, 0.0f), typedArrayObtainStyledAttributes.getFloat(3, 0.0f), typedArrayObtainStyledAttributes.getFloat(4, 0.0f), typedArrayObtainStyledAttributes.getColor(2, -16777216));
            }
            if (typedArrayObtainStyledAttributes.hasValue(6)) {
                b(typedArrayObtainStyledAttributes.getFloat(9, 0.0f), typedArrayObtainStyledAttributes.getFloat(7, 0.0f), typedArrayObtainStyledAttributes.getFloat(8, 0.0f), typedArrayObtainStyledAttributes.getColor(6, -16777216));
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
                f(f10, color, join, f11);
            }
        }
    }

    public void f(float f10, int i10, Paint.Join join, float f11) {
        this.f26812u = f10;
        this.f26813v = Integer.valueOf(i10);
        this.f26814w = join;
        this.f26815x = f11;
    }

    public void g() {
        this.A = false;
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingBottom() {
        return !this.A ? super.getCompoundPaddingBottom() : this.f26817z[3];
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        return !this.A ? super.getCompoundPaddingLeft() : this.f26817z[0];
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        return !this.A ? super.getCompoundPaddingRight() : this.f26817z[1];
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingTop() {
        return !this.A ? super.getCompoundPaddingTop() : this.f26817z[2];
    }

    @Override // android.view.View
    public Drawable getForeground() {
        Drawable drawable = this.f26811t;
        return drawable == null ? drawable : new ColorDrawable(getCurrentTextColor());
    }

    @Override // android.view.View
    public void invalidate() {
        if (this.A) {
            return;
        }
        super.invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c();
        Drawable background = getBackground();
        Drawable[] compoundDrawables = getCompoundDrawables();
        int currentTextColor = getCurrentTextColor();
        setCompoundDrawables(null, null, null, null);
        for (b bVar : this.f26806o) {
            setShadowLayer(bVar.f26818a, bVar.f26819b, bVar.f26820c, bVar.f26821d);
            super.onDraw(canvas);
        }
        setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        setTextColor(currentTextColor);
        Drawable drawable = this.f26811t;
        if (drawable != null && (drawable instanceof BitmapDrawable)) {
            d();
            super.onDraw(this.f26809r);
            ((BitmapDrawable) this.f26811t).getPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
            this.f26811t.setBounds(canvas.getClipBounds());
            this.f26811t.draw(this.f26809r);
            canvas.drawBitmap(this.f26810s, 0.0f, 0.0f, (Paint) null);
            this.f26809r.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        if (this.f26813v != null) {
            TextPaint paint = getPaint();
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeJoin(this.f26814w);
            paint.setStrokeMiter(this.f26815x);
            setTextColor(this.f26813v.intValue());
            paint.setStrokeWidth(this.f26812u);
            super.onDraw(canvas);
            paint.setStyle(Paint.Style.FILL);
            setTextColor(currentTextColor);
        }
        if (this.f26807p.size() > 0) {
            d();
            TextPaint paint2 = getPaint();
            for (b bVar2 : this.f26807p) {
                setTextColor(bVar2.f26821d);
                super.onDraw(this.f26809r);
                setTextColor(-16777216);
                paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
                paint2.setMaskFilter(new BlurMaskFilter(bVar2.f26818a, BlurMaskFilter.Blur.NORMAL));
                this.f26809r.save();
                this.f26809r.translate(bVar2.f26819b, bVar2.f26820c);
                super.onDraw(this.f26809r);
                this.f26809r.restore();
                canvas.drawBitmap(this.f26810s, 0.0f, 0.0f, (Paint) null);
                this.f26809r.drawColor(0, PorterDuff.Mode.CLEAR);
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
        g();
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i10, KeyEvent keyEvent) {
        a aVar;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1 && (aVar = this.f26816y) != null) {
            aVar.a(this);
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public void postInvalidate() {
        if (this.A) {
            return;
        }
        super.postInvalidate();
    }

    @Override // android.view.View
    public void requestLayout() {
        if (this.A) {
            return;
        }
        super.requestLayout();
    }

    public void setBackPressedListener(a aVar) {
        this.f26816y = aVar;
    }

    public void setForegroundDrawable(Drawable drawable) {
        this.f26811t = drawable;
    }

    @Override // android.view.View
    public void invalidate(Rect rect) {
        if (this.A) {
            return;
        }
        super.invalidate(rect);
    }

    @Override // android.view.View
    public void postInvalidate(int i10, int i11, int i12, int i13) {
        if (this.A) {
            return;
        }
        super.postInvalidate(i10, i11, i12, i13);
    }

    @Override // android.view.View
    public void invalidate(int i10, int i11, int i12, int i13) {
        if (this.A) {
            return;
        }
        super.invalidate(i10, i11, i12, i13);
    }
}
