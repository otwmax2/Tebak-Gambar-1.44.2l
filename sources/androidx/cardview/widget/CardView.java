package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int[] f1293v = {R.attr.colorBackground};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final e f1294w;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f1295o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f1296p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f1297q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f1298r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final Rect f1299s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final Rect f1300t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final d f1301u;

    class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Drawable f1302a;

        a() {
        }

        @Override // androidx.cardview.widget.d
        public void a(int i10, int i11, int i12, int i13) {
            CardView.this.f1300t.set(i10, i11, i12, i13);
            CardView cardView = CardView.this;
            Rect rect = cardView.f1299s;
            CardView.super.setPadding(i10 + rect.left, i11 + rect.top, i12 + rect.right, i13 + rect.bottom);
        }

        @Override // androidx.cardview.widget.d
        public void b(int i10, int i11) {
            CardView cardView = CardView.this;
            if (i10 > cardView.f1297q) {
                CardView.super.setMinimumWidth(i10);
            }
            CardView cardView2 = CardView.this;
            if (i11 > cardView2.f1298r) {
                CardView.super.setMinimumHeight(i11);
            }
        }

        @Override // androidx.cardview.widget.d
        public void c(Drawable drawable) {
            this.f1302a = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        @Override // androidx.cardview.widget.d
        public boolean d() {
            return CardView.this.getPreventCornerOverlap();
        }

        @Override // androidx.cardview.widget.d
        public boolean e() {
            return CardView.this.getUseCompatPadding();
        }

        @Override // androidx.cardview.widget.d
        public Drawable f() {
            return this.f1302a;
        }

        @Override // androidx.cardview.widget.d
        public View g() {
            return CardView.this;
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            f1294w = new b();
        } else if (i10 >= 17) {
            f1294w = new androidx.cardview.widget.a();
        } else {
            f1294w = new c();
        }
        f1294w.i();
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, n.a.f32278a);
    }

    public ColorStateList getCardBackgroundColor() {
        return f1294w.h(this.f1301u);
    }

    public float getCardElevation() {
        return f1294w.c(this.f1301u);
    }

    public int getContentPaddingBottom() {
        return this.f1299s.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f1299s.left;
    }

    public int getContentPaddingRight() {
        return this.f1299s.right;
    }

    public int getContentPaddingTop() {
        return this.f1299s.top;
    }

    public float getMaxCardElevation() {
        return f1294w.g(this.f1301u);
    }

    public boolean getPreventCornerOverlap() {
        return this.f1296p;
    }

    public float getRadius() {
        return f1294w.d(this.f1301u);
    }

    public boolean getUseCompatPadding() {
        return this.f1295o;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (f1294w instanceof b) {
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i10);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i10 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(r0.k(this.f1301u)), View.MeasureSpec.getSize(i10)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(r0.j(this.f1301u)), View.MeasureSpec.getSize(i11)), mode2);
        }
        super.onMeasure(i10, i11);
    }

    public void setCardBackgroundColor(int i10) {
        f1294w.m(this.f1301u, ColorStateList.valueOf(i10));
    }

    public void setCardElevation(float f10) {
        f1294w.f(this.f1301u, f10);
    }

    public void setMaxCardElevation(float f10) {
        f1294w.n(this.f1301u, f10);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i10) {
        this.f1298r = i10;
        super.setMinimumHeight(i10);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i10) {
        this.f1297q = i10;
        super.setMinimumWidth(i10);
    }

    @Override // android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
    }

    public void setPreventCornerOverlap(boolean z10) {
        if (z10 != this.f1296p) {
            this.f1296p = z10;
            f1294w.l(this.f1301u);
        }
    }

    public void setRadius(float f10) {
        f1294w.b(this.f1301u, f10);
    }

    public void setUseCompatPadding(boolean z10) {
        if (this.f1295o != z10) {
            this.f1295o = z10;
            f1294w.e(this.f1301u);
        }
    }

    public CardView(Context context, AttributeSet attributeSet, int i10) {
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, i10);
        Rect rect = new Rect();
        this.f1299s = rect;
        this.f1300t = new Rect();
        a aVar = new a();
        this.f1301u = aVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.e.f32285a, i10, n.d.f32284a);
        int i11 = n.e.f32288d;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(i11);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(f1293v);
            int color = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateListValueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(n.b.f32280b) : getResources().getColor(n.b.f32279a));
        }
        ColorStateList colorStateList = colorStateListValueOf;
        float dimension = typedArrayObtainStyledAttributes.getDimension(n.e.f32289e, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(n.e.f32290f, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(n.e.f32291g, 0.0f);
        this.f1295o = typedArrayObtainStyledAttributes.getBoolean(n.e.f32293i, false);
        this.f1296p = typedArrayObtainStyledAttributes.getBoolean(n.e.f32292h, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(n.e.f32294j, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(n.e.f32296l, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(n.e.f32298n, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(n.e.f32297m, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(n.e.f32295k, dimensionPixelSize);
        float f10 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f1297q = typedArrayObtainStyledAttributes.getDimensionPixelSize(n.e.f32286b, 0);
        this.f1298r = typedArrayObtainStyledAttributes.getDimensionPixelSize(n.e.f32287c, 0);
        typedArrayObtainStyledAttributes.recycle();
        f1294w.a(aVar, context, colorStateList, dimension, dimension2, f10);
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f1294w.m(this.f1301u, colorStateList);
    }
}
