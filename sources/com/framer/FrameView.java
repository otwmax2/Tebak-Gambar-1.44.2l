package com.framer;

import ab.b;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import java.io.IOException;
import java.io.InputStream;
import za.a;

/* JADX INFO: loaded from: classes.dex */
public class FrameView extends ab.a {
    private static int K = -1;
    private Bitmap A;
    private Paint B;
    private Paint C;
    private Rect D;
    private boolean E;
    private Bitmap F;
    private b G;
    private int H;
    private za.a<b> I;
    private int J;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f5488u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f5489v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f5490w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f5491x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f5492y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f5493z;

    class a implements a.InterfaceC0311a<b> {
        a() {
        }

        @Override // za.a.InterfaceC0311a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public b b(a.b bVar) {
            if (FrameView.this.G.a(bVar.i(), bVar.j())) {
                return FrameView.this.G;
            }
            return null;
        }

        @Override // za.a.InterfaceC0311a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void c(b bVar, a.c cVar) {
            cVar.q(bVar.d(), bVar.e(), (FrameView.this.H & 2) == 0, (bVar.f() + bVar.f()) / 2.0f, (FrameView.this.H & 2) != 0, bVar.f(), bVar.f(), (FrameView.this.H & 1) != 0, bVar.c());
        }

        @Override // za.a.InterfaceC0311a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void a(b bVar, a.b bVar2) {
            if (bVar2.k()) {
                FrameView.this.G = bVar;
            }
            FrameView.this.invalidate();
        }

        @Override // za.a.InterfaceC0311a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public boolean d(b bVar, a.c cVar, a.b bVar2) {
            boolean zK = bVar.k(cVar, FrameView.this.H, 2, bVar2.l());
            if (zK) {
                FrameView.this.invalidate();
            }
            return zK;
        }
    }

    public FrameView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5488u = 1500.0f;
        this.f5489v = 1500.0f;
        this.H = 1;
        this.I = new za.a<>(new a());
        this.J = 1;
        m();
    }

    public static Bitmap i(Bitmap bitmap, float f10) {
        Matrix matrix = new Matrix();
        matrix.postRotate(f10);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    private void m() {
        Paint paint = new Paint();
        this.B = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.C = paint2;
        paint2.setColor(Color.parseColor("#13beb5"));
    }

    public int getFrameDefaultWidth() {
        if (K == -1) {
            K = BitmapFactory.decodeResource(getResources(), i3.a.f30394a).getWidth();
        }
        return K;
    }

    public int getMode() {
        return this.J;
    }

    public Bitmap getPictureBitmap() {
        Bitmap bitmapCreateBitmap;
        Bitmap bitmapCreateBitmap2;
        Bitmap bitmap = null;
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            draw(new Canvas(bitmapCreateBitmap));
            bitmapCreateBitmap2 = Bitmap.createBitmap((int) this.f5488u, (int) this.f5489v, Bitmap.Config.ARGB_8888);
        } catch (Exception unused) {
        }
        try {
            new Canvas(bitmapCreateBitmap2).drawBitmap(bitmapCreateBitmap, this.D, new Rect(0, 0, (int) this.f5488u, (int) this.f5489v), (Paint) null);
            return bitmapCreateBitmap2;
        } catch (Exception unused2) {
            bitmap = bitmapCreateBitmap2;
            return bitmap;
        }
    }

    public void n(Bitmap bitmap, float f10) {
        if (f10 != 0.0f) {
            bitmap = i(bitmap, f10);
        }
        if (getWidth() == 0 || getHeight() == 0) {
            this.E = true;
            this.F = bitmap;
        } else {
            setPinchWidget(bitmap);
        }
        invalidate();
    }

    public void o(Uri uri, boolean z10) {
        int attributeInt;
        try {
            InputStream inputStreamOpenInputStream = getContext().getContentResolver().openInputStream(uri);
            float f10 = 0.0f;
            String path = uri.getPath();
            if (path != null) {
                try {
                    attributeInt = (Build.VERSION.SDK_INT >= 25 ? new ExifInterface(inputStreamOpenInputStream) : new ExifInterface(path)).getAttributeInt("Orientation", 0);
                } catch (IOException e10) {
                    e10.printStackTrace();
                    attributeInt = 0;
                }
            } else {
                attributeInt = 0;
            }
            if (attributeInt == 6) {
                f10 = 90.0f;
            } else if (attributeInt == 8) {
                f10 = 270.0f;
            }
            if (!z10) {
                n(BitmapFactory.decodeStream(inputStreamOpenInputStream), f10);
                return;
            }
            float f11 = this.f5488u;
            float f12 = this.f5489v;
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
            float fMin = Math.min(options.outWidth / f11, options.outHeight / f12);
            inputStreamOpenInputStream.close();
            options.inJustDecodeBounds = false;
            options.inSampleSize = Math.round(fMin);
            options.inPurgeable = true;
            InputStream inputStreamOpenInputStream2 = getContext().getContentResolver().openInputStream(uri);
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream2, null, options);
            inputStreamOpenInputStream2.close();
            n(bitmapDecodeStream, f10);
        } catch (IOException e11) {
            e11.printStackTrace();
        }
    }

    @Override // ab.a, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.A;
        if (bitmap != null) {
            int i10 = this.J;
            if (i10 == 1) {
                canvas.drawBitmap(bitmap, (Rect) null, this.D, this.B);
            } else if (i10 == 2) {
                this.G.b(canvas);
            }
            Rect rect = this.D;
            canvas.drawRect(0.0f, 0.0f, rect.right, rect.top, this.C);
            Rect rect2 = this.D;
            canvas.drawRect(0.0f, rect2.bottom, rect2.right, getHeight(), this.C);
            Rect rect3 = this.D;
            canvas.drawRect(0.0f, 0.0f, rect3.left, rect3.bottom, this.C);
            canvas.drawRect(this.D.right, 0.0f, getWidth(), this.D.bottom, this.C);
        }
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        float measuredWidth = getMeasuredWidth();
        this.f5492y = measuredWidth;
        float f10 = (this.f5489v / this.f5488u) * measuredWidth;
        this.f5493z = f10;
        if (f10 > getMeasuredWidth() || this.f5493z > getMeasuredHeight()) {
            float measuredHeight = getMeasuredHeight();
            this.f5493z = measuredHeight;
            this.f5492y = (this.f5488u / this.f5489v) * measuredHeight;
        }
        this.f5490w = 0.0f;
        this.f5491x = 0.0f;
        this.f5490w = (getMeasuredWidth() - this.f5492y) / 2.0f;
        this.f5491x = (getMeasuredHeight() - this.f5493z) / 2.0f;
        if (z10 || this.D == null) {
            float f11 = this.f5490w;
            float f12 = this.f5491x;
            this.D = new Rect((int) f11, (int) f12, (int) (f11 + this.f5492y), (int) (f12 + this.f5493z));
        }
        if (this.E) {
            setPinchWidget(this.F);
            this.F = null;
            this.E = false;
            b bVar = new b(this.A);
            this.G = bVar;
            bVar.h(this, true);
        }
    }

    @Override // ab.a, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.J == 1 ? super.onTouchEvent(motionEvent) : this.I.e(motionEvent);
    }

    public void setFrameBitmap(Bitmap bitmap) {
        this.A = bitmap;
        this.f5488u = bitmap.getWidth();
        this.f5489v = this.A.getHeight();
        float frameDefaultWidth = getFrameDefaultWidth();
        if (this.f5488u < frameDefaultWidth) {
            this.f5488u = frameDefaultWidth;
            this.f5489v = frameDefaultWidth;
        }
        if (getWidth() == 0 || getHeight() == 0) {
            this.E = true;
        } else {
            b bVar = new b(bitmap);
            this.G = bVar;
            bVar.h(this, true);
        }
        invalidate();
    }

    public void setMode(int i10) {
        this.J = i10;
    }

    public void setOuterColor(int i10) {
        this.C.setColor(i10);
        invalidate();
    }
}
