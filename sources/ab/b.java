package ab;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import za.a;

/* JADX INFO: compiled from: PinchWidget.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bitmap f103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f108f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f109g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f110h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f111i;

    public b() {
        this.f104b = 0.0f;
        this.f105c = 0.0f;
        this.f106d = 1.0f;
        this.f107e = 0.0f;
    }

    private boolean j(float f10, float f11, float f12, float f13, float f14) {
        float width = (this.f103a.getWidth() / 2) * f12;
        float height = (this.f103a.getHeight() / 2) * f13;
        this.f104b = f10;
        this.f105c = f11;
        this.f106d = f12;
        this.f107e = f14;
        this.f108f = f10 - width;
        this.f110h = f11 - height;
        this.f109g = width + f10;
        this.f111i = height + f11;
        return true;
    }

    public boolean a(float f10, float f11) {
        return f10 >= this.f108f && f10 <= this.f109g && f11 >= this.f110h && f11 <= this.f111i;
    }

    public void b(Canvas canvas) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        float f10 = (this.f109g + this.f108f) / 2.0f;
        float f11 = (this.f111i + this.f110h) / 2.0f;
        canvas.save();
        canvas.translate(f10, f11);
        canvas.rotate((this.f107e * 180.0f) / 3.1415927f);
        canvas.translate(-f10, -f11);
        if (this.f103a == null) {
            return;
        }
        canvas.drawBitmap(this.f103a, new Rect(0, 0, this.f103a.getWidth(), this.f103a.getHeight()), new Rect((int) this.f108f, (int) this.f110h, (int) this.f109g, (int) this.f111i), paint);
        canvas.restore();
    }

    public float c() {
        return this.f107e;
    }

    public float d() {
        return this.f104b;
    }

    public float e() {
        return this.f105c;
    }

    public float f() {
        return this.f106d;
    }

    public void g(View view) {
        h(view, false);
    }

    public void h(View view, boolean z10) {
        if (z10) {
            this.f106d = view.getMeasuredWidth() / this.f103a.getWidth();
        }
        float f10 = this.f106d;
        j(view.getWidth() / 2.0f, view.getHeight() / 2.0f, f10, f10, this.f107e);
    }

    public void i(Bitmap bitmap) {
        this.f103a = bitmap;
    }

    public boolean k(a.c cVar, int i10, int i11, boolean z10) {
        float fN = cVar.n();
        float fO = cVar.o();
        if (z10) {
            fN = this.f104b;
            fO = this.f105c;
        }
        int i12 = i10 & i11;
        return j(fN, fO, i12 != 0 ? cVar.l() : cVar.k(), i12 != 0 ? cVar.m() : cVar.k(), cVar.j());
    }

    public b(Bitmap bitmap) {
        this();
        i(bitmap);
    }
}
