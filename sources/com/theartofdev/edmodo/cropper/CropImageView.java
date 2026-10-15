package com.theartofdev.edmodo.cropper;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.theartofdev.edmodo.cropper.CropOverlayView;
import com.theartofdev.edmodo.cropper.a;
import com.theartofdev.edmodo.cropper.b;
import java.lang.ref.WeakReference;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class CropImageView extends FrameLayout {
    private boolean A;
    private int B;
    private int C;
    private int D;
    private k E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private g K;
    private f L;
    private h M;
    private i N;
    private e O;
    private Uri P;
    private int Q;
    private float R;
    private float S;
    private float T;
    private RectF U;
    private int V;
    private boolean W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private Uri f27251a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private WeakReference<com.theartofdev.edmodo.cropper.b> f27252b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private WeakReference<com.theartofdev.edmodo.cropper.a> f27253c0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ImageView f27254o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final CropOverlayView f27255p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Matrix f27256q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Matrix f27257r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final ProgressBar f27258s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final float[] f27259t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final float[] f27260u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.theartofdev.edmodo.cropper.e f27261v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Bitmap f27262w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f27263x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f27264y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f27265z;

    class a implements CropOverlayView.b {
        a() {
        }

        @Override // com.theartofdev.edmodo.cropper.CropOverlayView.b
        public void a(boolean z10) {
            CropImageView.this.k(z10, true);
            g gVar = CropImageView.this.K;
            if (gVar != null && !z10) {
                gVar.a(CropImageView.this.getCropRect());
            }
            f fVar = CropImageView.this.L;
            if (fVar == null || !z10) {
                return;
            }
            fVar.a(CropImageView.this.getCropRect());
        }
    }

    public static class b {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Bitmap f27267o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final Uri f27268p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final Bitmap f27269q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final Uri f27270r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final Exception f27271s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final float[] f27272t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final Rect f27273u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final Rect f27274v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private final int f27275w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private final int f27276x;

        b(Bitmap bitmap, Uri uri, Bitmap bitmap2, Uri uri2, Exception exc, float[] fArr, Rect rect, Rect rect2, int i10, int i11) {
            this.f27267o = bitmap;
            this.f27268p = uri;
            this.f27269q = bitmap2;
            this.f27270r = uri2;
            this.f27271s = exc;
            this.f27272t = fArr;
            this.f27273u = rect;
            this.f27274v = rect2;
            this.f27275w = i10;
            this.f27276x = i11;
        }

        public Rect A() {
            return this.f27274v;
        }

        public float[] h() {
            return this.f27272t;
        }

        public Rect t() {
            return this.f27273u;
        }

        public Exception v() {
            return this.f27271s;
        }

        public Uri w() {
            return this.f27268p;
        }

        public int x() {
            return this.f27275w;
        }

        public int y() {
            return this.f27276x;
        }

        public Uri z() {
            return this.f27270r;
        }
    }

    public enum c {
        RECTANGLE,
        OVAL
    }

    public enum d {
        OFF,
        ON_TOUCH,
        ON
    }

    public interface e {
        void x(CropImageView cropImageView, b bVar);
    }

    public interface f {
        void a(Rect rect);
    }

    public interface g {
        void a(Rect rect);
    }

    public interface h {
        void a();
    }

    public interface i {
        void w(CropImageView cropImageView, Uri uri, Exception exc);
    }

    public enum j {
        NONE,
        SAMPLING,
        RESIZE_INSIDE,
        RESIZE_FIT,
        RESIZE_EXACT
    }

    public enum k {
        FIT_CENTER,
        CENTER,
        CENTER_CROP,
        CENTER_INSIDE
    }

    public CropImageView(Context context, AttributeSet attributeSet) {
        Bundle bundleExtra;
        super(context, attributeSet);
        this.f27256q = new Matrix();
        this.f27257r = new Matrix();
        this.f27259t = new float[8];
        this.f27260u = new float[8];
        this.F = false;
        this.G = true;
        this.H = true;
        this.I = true;
        this.Q = 1;
        this.R = 1.0f;
        com.theartofdev.edmodo.cropper.f fVar = null;
        Intent intent = context instanceof Activity ? ((Activity) context).getIntent() : null;
        if (intent != null && (bundleExtra = intent.getBundleExtra("CROP_IMAGE_EXTRA_BUNDLE")) != null) {
            fVar = (com.theartofdev.edmodo.cropper.f) bundleExtra.getParcelable("CROP_IMAGE_EXTRA_OPTIONS");
        }
        if (fVar == null) {
            fVar = new com.theartofdev.edmodo.cropper.f();
            if (attributeSet != null) {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z8.e.f37348u, 0, 0);
                try {
                    int i10 = z8.e.F;
                    fVar.f27387z = typedArrayObtainStyledAttributes.getBoolean(i10, fVar.f27387z);
                    int i11 = z8.e.f37350v;
                    fVar.A = typedArrayObtainStyledAttributes.getInteger(i11, fVar.A);
                    fVar.B = typedArrayObtainStyledAttributes.getInteger(z8.e.f37352w, fVar.B);
                    fVar.f27380s = k.values()[typedArrayObtainStyledAttributes.getInt(z8.e.U, fVar.f27380s.ordinal())];
                    fVar.f27383v = typedArrayObtainStyledAttributes.getBoolean(z8.e.f37354x, fVar.f27383v);
                    fVar.f27384w = typedArrayObtainStyledAttributes.getBoolean(z8.e.S, fVar.f27384w);
                    fVar.f27385x = typedArrayObtainStyledAttributes.getInteger(z8.e.N, fVar.f27385x);
                    fVar.f27376o = c.values()[typedArrayObtainStyledAttributes.getInt(z8.e.V, fVar.f27376o.ordinal())];
                    fVar.f27379r = d.values()[typedArrayObtainStyledAttributes.getInt(z8.e.H, fVar.f27379r.ordinal())];
                    fVar.f27377p = typedArrayObtainStyledAttributes.getDimension(z8.e.Y, fVar.f27377p);
                    fVar.f27378q = typedArrayObtainStyledAttributes.getDimension(z8.e.Z, fVar.f27378q);
                    fVar.f27386y = typedArrayObtainStyledAttributes.getFloat(z8.e.K, fVar.f27386y);
                    fVar.C = typedArrayObtainStyledAttributes.getDimension(z8.e.E, fVar.C);
                    fVar.D = typedArrayObtainStyledAttributes.getInteger(z8.e.D, fVar.D);
                    int i12 = z8.e.C;
                    fVar.E = typedArrayObtainStyledAttributes.getDimension(i12, fVar.E);
                    fVar.F = typedArrayObtainStyledAttributes.getDimension(z8.e.B, fVar.F);
                    fVar.G = typedArrayObtainStyledAttributes.getDimension(z8.e.A, fVar.G);
                    fVar.H = typedArrayObtainStyledAttributes.getInteger(z8.e.f37357z, fVar.H);
                    fVar.I = typedArrayObtainStyledAttributes.getDimension(z8.e.J, fVar.I);
                    fVar.J = typedArrayObtainStyledAttributes.getInteger(z8.e.I, fVar.J);
                    fVar.K = typedArrayObtainStyledAttributes.getInteger(z8.e.f37356y, fVar.K);
                    fVar.f27381t = typedArrayObtainStyledAttributes.getBoolean(z8.e.W, this.G);
                    fVar.f27382u = typedArrayObtainStyledAttributes.getBoolean(z8.e.X, this.H);
                    fVar.E = typedArrayObtainStyledAttributes.getDimension(i12, fVar.E);
                    fVar.L = (int) typedArrayObtainStyledAttributes.getDimension(z8.e.R, fVar.L);
                    fVar.M = (int) typedArrayObtainStyledAttributes.getDimension(z8.e.Q, fVar.M);
                    fVar.N = (int) typedArrayObtainStyledAttributes.getFloat(z8.e.P, fVar.N);
                    fVar.O = (int) typedArrayObtainStyledAttributes.getFloat(z8.e.O, fVar.O);
                    fVar.P = (int) typedArrayObtainStyledAttributes.getFloat(z8.e.M, fVar.P);
                    fVar.Q = (int) typedArrayObtainStyledAttributes.getFloat(z8.e.L, fVar.Q);
                    int i13 = z8.e.G;
                    fVar.f27372g0 = typedArrayObtainStyledAttributes.getBoolean(i13, fVar.f27372g0);
                    fVar.f27373h0 = typedArrayObtainStyledAttributes.getBoolean(i13, fVar.f27373h0);
                    this.F = typedArrayObtainStyledAttributes.getBoolean(z8.e.T, this.F);
                    if (typedArrayObtainStyledAttributes.hasValue(i11) && typedArrayObtainStyledAttributes.hasValue(i11) && !typedArrayObtainStyledAttributes.hasValue(i10)) {
                        fVar.f27387z = true;
                    }
                } finally {
                    typedArrayObtainStyledAttributes.recycle();
                }
            }
        }
        fVar.h();
        this.E = fVar.f27380s;
        this.I = fVar.f27383v;
        this.J = fVar.f27385x;
        this.G = fVar.f27381t;
        this.H = fVar.f27382u;
        this.f27265z = fVar.f27372g0;
        this.A = fVar.f27373h0;
        View viewInflate = LayoutInflater.from(context).inflate(z8.b.f37303b, (ViewGroup) this, true);
        ImageView imageView = (ImageView) viewInflate.findViewById(z8.a.f37294c);
        this.f27254o = imageView;
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        CropOverlayView cropOverlayView = (CropOverlayView) viewInflate.findViewById(z8.a.f37292a);
        this.f27255p = cropOverlayView;
        cropOverlayView.setCropWindowChangeListener(new a());
        cropOverlayView.setInitialAttributeValues(fVar);
        this.f27258s = (ProgressBar) viewInflate.findViewById(z8.a.f37293b);
        s();
    }

    private void d(float f10, float f11, boolean z10, boolean z11) {
        if (this.f27262w != null) {
            if (f10 <= 0.0f || f11 <= 0.0f) {
                return;
            }
            this.f27256q.invert(this.f27257r);
            RectF cropWindowRect = this.f27255p.getCropWindowRect();
            this.f27257r.mapRect(cropWindowRect);
            this.f27256q.reset();
            this.f27256q.postTranslate((f10 - this.f27262w.getWidth()) / 2.0f, (f11 - this.f27262w.getHeight()) / 2.0f);
            l();
            int i10 = this.f27264y;
            if (i10 > 0) {
                this.f27256q.postRotate(i10, com.theartofdev.edmodo.cropper.c.q(this.f27259t), com.theartofdev.edmodo.cropper.c.r(this.f27259t));
                l();
            }
            float fMin = Math.min(f10 / com.theartofdev.edmodo.cropper.c.x(this.f27259t), f11 / com.theartofdev.edmodo.cropper.c.t(this.f27259t));
            k kVar = this.E;
            if (kVar == k.FIT_CENTER || ((kVar == k.CENTER_INSIDE && fMin < 1.0f) || (fMin > 1.0f && this.I))) {
                this.f27256q.postScale(fMin, fMin, com.theartofdev.edmodo.cropper.c.q(this.f27259t), com.theartofdev.edmodo.cropper.c.r(this.f27259t));
                l();
            }
            float f12 = this.f27265z ? -this.R : this.R;
            float f13 = this.A ? -this.R : this.R;
            this.f27256q.postScale(f12, f13, com.theartofdev.edmodo.cropper.c.q(this.f27259t), com.theartofdev.edmodo.cropper.c.r(this.f27259t));
            l();
            this.f27256q.mapRect(cropWindowRect);
            if (z10) {
                this.S = f10 > com.theartofdev.edmodo.cropper.c.x(this.f27259t) ? 0.0f : Math.max(Math.min((f10 / 2.0f) - cropWindowRect.centerX(), -com.theartofdev.edmodo.cropper.c.u(this.f27259t)), getWidth() - com.theartofdev.edmodo.cropper.c.v(this.f27259t)) / f12;
                this.T = f11 <= com.theartofdev.edmodo.cropper.c.t(this.f27259t) ? Math.max(Math.min((f11 / 2.0f) - cropWindowRect.centerY(), -com.theartofdev.edmodo.cropper.c.w(this.f27259t)), getHeight() - com.theartofdev.edmodo.cropper.c.p(this.f27259t)) / f13 : 0.0f;
            } else {
                this.S = Math.min(Math.max(this.S * f12, -cropWindowRect.left), (-cropWindowRect.right) + f10) / f12;
                this.T = Math.min(Math.max(this.T * f13, -cropWindowRect.top), (-cropWindowRect.bottom) + f11) / f13;
            }
            this.f27256q.postTranslate(this.S * f12, this.T * f13);
            cropWindowRect.offset(this.S * f12, this.T * f13);
            this.f27255p.setCropWindowRect(cropWindowRect);
            l();
            this.f27255p.invalidate();
            if (z11) {
                this.f27261v.a(this.f27259t, this.f27256q);
                this.f27254o.startAnimation(this.f27261v);
            } else {
                this.f27254o.setImageMatrix(this.f27256q);
            }
            u(false);
        }
    }

    private void e() {
        Bitmap bitmap = this.f27262w;
        if (bitmap != null && (this.D > 0 || this.P != null)) {
            bitmap.recycle();
        }
        this.f27262w = null;
        this.D = 0;
        this.P = null;
        this.Q = 1;
        this.f27264y = 0;
        this.R = 1.0f;
        this.S = 0.0f;
        this.T = 0.0f;
        this.f27256q.reset();
        this.f27251a0 = null;
        this.f27254o.setImageBitmap(null);
        r();
    }

    private static int j(int i10, int i11, int i12) {
        return i10 == 1073741824 ? i11 : i10 == Integer.MIN_VALUE ? Math.min(i12, i11) : i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void k(boolean r12, boolean r13) {
        /*
            Method dump skipped, instruction units count: 259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.CropImageView.k(boolean, boolean):void");
    }

    private void l() {
        float[] fArr = this.f27259t;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = this.f27262w.getWidth();
        float[] fArr2 = this.f27259t;
        fArr2[3] = 0.0f;
        fArr2[4] = this.f27262w.getWidth();
        this.f27259t[5] = this.f27262w.getHeight();
        float[] fArr3 = this.f27259t;
        fArr3[6] = 0.0f;
        fArr3[7] = this.f27262w.getHeight();
        this.f27256q.mapPoints(this.f27259t);
        float[] fArr4 = this.f27260u;
        fArr4[0] = 0.0f;
        fArr4[1] = 0.0f;
        fArr4[2] = 100.0f;
        fArr4[3] = 0.0f;
        fArr4[4] = 100.0f;
        fArr4[5] = 100.0f;
        fArr4[6] = 0.0f;
        fArr4[7] = 100.0f;
        this.f27256q.mapPoints(fArr4);
    }

    private void q(Bitmap bitmap, int i10, Uri uri, int i11, int i12) {
        Bitmap bitmap2 = this.f27262w;
        if (bitmap2 == null || !bitmap2.equals(bitmap)) {
            this.f27254o.clearAnimation();
            e();
            this.f27262w = bitmap;
            this.f27254o.setImageBitmap(bitmap);
            this.P = uri;
            this.D = i10;
            this.Q = i11;
            this.f27264y = i12;
            d(getWidth(), getHeight(), true, false);
            CropOverlayView cropOverlayView = this.f27255p;
            if (cropOverlayView != null) {
                cropOverlayView.r();
                r();
            }
        }
    }

    private void r() {
        CropOverlayView cropOverlayView = this.f27255p;
        if (cropOverlayView != null) {
            cropOverlayView.setVisibility((!this.G || this.f27262w == null) ? 4 : 0);
        }
    }

    private void s() {
        this.f27258s.setVisibility(this.H && ((this.f27262w == null && this.f27252b0 != null) || this.f27253c0 != null) ? 0 : 4);
    }

    private void u(boolean z10) {
        if (this.f27262w != null && !z10) {
            this.f27255p.t(getWidth(), getHeight(), (this.Q * 100.0f) / com.theartofdev.edmodo.cropper.c.x(this.f27260u), (this.Q * 100.0f) / com.theartofdev.edmodo.cropper.c.t(this.f27260u));
        }
        this.f27255p.s(z10 ? null : this.f27259t, getWidth(), getHeight());
    }

    public void f() {
        this.f27265z = !this.f27265z;
        d(getWidth(), getHeight(), true, false);
    }

    public void g() {
        this.A = !this.A;
        d(getWidth(), getHeight(), true, false);
    }

    public Pair<Integer, Integer> getAspectRatio() {
        return new Pair<>(Integer.valueOf(this.f27255p.getAspectRatioX()), Integer.valueOf(this.f27255p.getAspectRatioY()));
    }

    public float[] getCropPoints() {
        RectF cropWindowRect = this.f27255p.getCropWindowRect();
        float[] fArr = new float[8];
        float f10 = cropWindowRect.left;
        fArr[0] = f10;
        float f11 = cropWindowRect.top;
        fArr[1] = f11;
        float f12 = cropWindowRect.right;
        fArr[2] = f12;
        fArr[3] = f11;
        fArr[4] = f12;
        float f13 = cropWindowRect.bottom;
        fArr[5] = f13;
        fArr[6] = f10;
        fArr[7] = f13;
        this.f27256q.invert(this.f27257r);
        this.f27257r.mapPoints(fArr);
        for (int i10 = 0; i10 < 8; i10++) {
            fArr[i10] = fArr[i10] * this.Q;
        }
        return fArr;
    }

    public Rect getCropRect() {
        int i10 = this.Q;
        Bitmap bitmap = this.f27262w;
        if (bitmap == null) {
            return null;
        }
        return com.theartofdev.edmodo.cropper.c.s(getCropPoints(), bitmap.getWidth() * i10, i10 * bitmap.getHeight(), this.f27255p.m(), this.f27255p.getAspectRatioX(), this.f27255p.getAspectRatioY());
    }

    public c getCropShape() {
        return this.f27255p.getCropShape();
    }

    public RectF getCropWindowRect() {
        CropOverlayView cropOverlayView = this.f27255p;
        if (cropOverlayView == null) {
            return null;
        }
        return cropOverlayView.getCropWindowRect();
    }

    public Bitmap getCroppedImage() {
        return h(0, 0, j.NONE);
    }

    public void getCroppedImageAsync() {
        i(0, 0, j.NONE);
    }

    public d getGuidelines() {
        return this.f27255p.getGuidelines();
    }

    public int getImageResource() {
        return this.D;
    }

    public Uri getImageUri() {
        return this.P;
    }

    public int getMaxZoom() {
        return this.J;
    }

    public int getRotatedDegrees() {
        return this.f27264y;
    }

    public k getScaleType() {
        return this.E;
    }

    public Rect getWholeImageRect() {
        int i10 = this.Q;
        Bitmap bitmap = this.f27262w;
        if (bitmap == null) {
            return null;
        }
        return new Rect(0, 0, bitmap.getWidth() * i10, bitmap.getHeight() * i10);
    }

    public Bitmap h(int i10, int i11, j jVar) {
        int i12;
        Bitmap bitmap;
        if (this.f27262w == null) {
            return null;
        }
        this.f27254o.clearAnimation();
        j jVar2 = j.NONE;
        int i13 = jVar != jVar2 ? i10 : 0;
        int i14 = jVar != jVar2 ? i11 : 0;
        if (this.P == null || (this.Q <= 1 && jVar != j.SAMPLING)) {
            i12 = i13;
            bitmap = com.theartofdev.edmodo.cropper.c.g(this.f27262w, getCropPoints(), this.f27264y, this.f27255p.m(), this.f27255p.getAspectRatioX(), this.f27255p.getAspectRatioY(), this.f27265z, this.A).f27349a;
        } else {
            i12 = i13;
            bitmap = com.theartofdev.edmodo.cropper.c.d(getContext(), this.P, getCropPoints(), this.f27264y, this.f27262w.getWidth() * this.Q, this.f27262w.getHeight() * this.Q, this.f27255p.m(), this.f27255p.getAspectRatioX(), this.f27255p.getAspectRatioY(), i13, i14, this.f27265z, this.A).f27349a;
        }
        return com.theartofdev.edmodo.cropper.c.y(bitmap, i12, i14, jVar);
    }

    public void i(int i10, int i11, j jVar) {
        if (this.O == null) {
            throw new IllegalArgumentException("mOnCropImageCompleteListener is not set");
        }
        t(i10, i11, jVar, null, null, 0);
    }

    void m(a.C0136a c0136a) {
        this.f27253c0 = null;
        s();
        e eVar = this.O;
        if (eVar != null) {
            eVar.x(this, new b(this.f27262w, this.P, c0136a.f27327a, c0136a.f27328b, c0136a.f27329c, getCropPoints(), getCropRect(), getWholeImageRect(), getRotatedDegrees(), c0136a.f27331e));
        }
    }

    void n(b.a aVar) {
        this.f27252b0 = null;
        s();
        if (aVar.f27341e == null) {
            int i10 = aVar.f27340d;
            this.f27263x = i10;
            q(aVar.f27338b, 0, aVar.f27337a, aVar.f27339c, i10);
        }
        i iVar = this.N;
        if (iVar != null) {
            iVar.w(this, aVar.f27337a, aVar.f27341e);
        }
    }

    public void o(int i10) {
        if (this.f27262w != null) {
            int i11 = i10 < 0 ? (i10 % 360) + 360 : i10 % 360;
            boolean z10 = !this.f27255p.m() && ((i11 > 45 && i11 < 135) || (i11 > 215 && i11 < 305));
            RectF rectF = com.theartofdev.edmodo.cropper.c.f27344c;
            rectF.set(this.f27255p.getCropWindowRect());
            float fHeight = (z10 ? rectF.height() : rectF.width()) / 2.0f;
            float fWidth = (z10 ? rectF.width() : rectF.height()) / 2.0f;
            if (z10) {
                boolean z11 = this.f27265z;
                this.f27265z = this.A;
                this.A = z11;
            }
            this.f27256q.invert(this.f27257r);
            float[] fArr = com.theartofdev.edmodo.cropper.c.f27345d;
            fArr[0] = rectF.centerX();
            fArr[1] = rectF.centerY();
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 1.0f;
            fArr[5] = 0.0f;
            this.f27257r.mapPoints(fArr);
            this.f27264y = (this.f27264y + i11) % 360;
            d(getWidth(), getHeight(), true, false);
            Matrix matrix = this.f27256q;
            float[] fArr2 = com.theartofdev.edmodo.cropper.c.f27346e;
            matrix.mapPoints(fArr2, fArr);
            double d10 = this.R;
            double dSqrt = Math.sqrt(Math.pow(fArr2[4] - fArr2[2], 2.0d) + Math.pow(fArr2[5] - fArr2[3], 2.0d));
            Double.isNaN(d10);
            float f10 = (float) (d10 / dSqrt);
            this.R = f10;
            this.R = Math.max(f10, 1.0f);
            d(getWidth(), getHeight(), true, false);
            this.f27256q.mapPoints(fArr2, fArr);
            double dSqrt2 = Math.sqrt(Math.pow(fArr2[4] - fArr2[2], 2.0d) + Math.pow(fArr2[5] - fArr2[3], 2.0d));
            double d11 = fHeight;
            Double.isNaN(d11);
            float f11 = (float) (d11 * dSqrt2);
            double d12 = fWidth;
            Double.isNaN(d12);
            float f12 = (float) (d12 * dSqrt2);
            rectF.set(fArr2[0] - f11, fArr2[1] - f12, fArr2[0] + f11, fArr2[1] + f12);
            this.f27255p.r();
            this.f27255p.setCropWindowRect(rectF);
            d(getWidth(), getHeight(), true, false);
            k(false, false);
            this.f27255p.i();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.B <= 0 || this.C <= 0) {
            u(true);
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = this.B;
        layoutParams.height = this.C;
        setLayoutParams(layoutParams);
        if (this.f27262w == null) {
            u(true);
            return;
        }
        float f10 = i12 - i10;
        float f11 = i13 - i11;
        d(f10, f11, true, false);
        if (this.U == null) {
            if (this.W) {
                this.W = false;
                k(false, false);
                return;
            }
            return;
        }
        int i14 = this.V;
        if (i14 != this.f27263x) {
            this.f27264y = i14;
            d(f10, f11, true, false);
        }
        this.f27256q.mapRect(this.U);
        this.f27255p.setCropWindowRect(this.U);
        k(false, false);
        this.f27255p.i();
        this.U = null;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        double d10;
        double d11;
        int width;
        int height;
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        Bitmap bitmap = this.f27262w;
        if (bitmap == null) {
            setMeasuredDimension(size, size2);
            return;
        }
        if (size2 == 0) {
            size2 = bitmap.getHeight();
        }
        if (size < this.f27262w.getWidth()) {
            double d12 = size;
            double width2 = this.f27262w.getWidth();
            Double.isNaN(d12);
            Double.isNaN(width2);
            d10 = d12 / width2;
        } else {
            d10 = Double.POSITIVE_INFINITY;
        }
        if (size2 < this.f27262w.getHeight()) {
            double d13 = size2;
            double height2 = this.f27262w.getHeight();
            Double.isNaN(d13);
            Double.isNaN(height2);
            d11 = d13 / height2;
        } else {
            d11 = Double.POSITIVE_INFINITY;
        }
        if (d10 == Double.POSITIVE_INFINITY && d11 == Double.POSITIVE_INFINITY) {
            width = this.f27262w.getWidth();
            height = this.f27262w.getHeight();
        } else if (d10 <= d11) {
            double height3 = this.f27262w.getHeight();
            Double.isNaN(height3);
            height = (int) (height3 * d10);
            width = size;
        } else {
            double width3 = this.f27262w.getWidth();
            Double.isNaN(width3);
            width = (int) (width3 * d11);
            height = size2;
        }
        int iJ = j(mode, size, width);
        int iJ2 = j(mode2, size2, height);
        this.B = iJ;
        this.C = iJ2;
        setMeasuredDimension(iJ, iJ2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        if (this.f27252b0 == null && this.P == null && this.f27262w == null && this.D == 0) {
            Uri uri = (Uri) bundle.getParcelable("LOADED_IMAGE_URI");
            if (uri != null) {
                String string = bundle.getString("LOADED_IMAGE_STATE_BITMAP_KEY");
                if (string != null) {
                    Pair<String, WeakReference<Bitmap>> pair = com.theartofdev.edmodo.cropper.c.f27348g;
                    Bitmap bitmap = (pair == null || !((String) pair.first).equals(string)) ? null : (Bitmap) ((WeakReference) com.theartofdev.edmodo.cropper.c.f27348g.second).get();
                    com.theartofdev.edmodo.cropper.c.f27348g = null;
                    if (bitmap != null && !bitmap.isRecycled()) {
                        q(bitmap, 0, uri, bundle.getInt("LOADED_SAMPLE_SIZE"), 0);
                    }
                }
                if (this.P == null) {
                    setImageUriAsync(uri);
                }
            } else {
                int i10 = bundle.getInt("LOADED_IMAGE_RESOURCE");
                if (i10 > 0) {
                    setImageResource(i10);
                } else {
                    Uri uri2 = (Uri) bundle.getParcelable("LOADING_IMAGE_URI");
                    if (uri2 != null) {
                        setImageUriAsync(uri2);
                    }
                }
            }
            int i11 = bundle.getInt("DEGREES_ROTATED");
            this.V = i11;
            this.f27264y = i11;
            Rect rect = (Rect) bundle.getParcelable("INITIAL_CROP_RECT");
            if (rect != null && (rect.width() > 0 || rect.height() > 0)) {
                this.f27255p.setInitialCropWindowRect(rect);
            }
            RectF rectF = (RectF) bundle.getParcelable("CROP_WINDOW_RECT");
            if (rectF != null && (rectF.width() > 0.0f || rectF.height() > 0.0f)) {
                this.U = rectF;
            }
            this.f27255p.setCropShape(c.valueOf(bundle.getString("CROP_SHAPE")));
            this.I = bundle.getBoolean("CROP_AUTO_ZOOM_ENABLED");
            this.J = bundle.getInt("CROP_MAX_ZOOM");
            this.f27265z = bundle.getBoolean("CROP_FLIP_HORIZONTALLY");
            this.A = bundle.getBoolean("CROP_FLIP_VERTICALLY");
        }
        super.onRestoreInstanceState(bundle.getParcelable("instanceState"));
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        com.theartofdev.edmodo.cropper.b bVar;
        if (this.P == null && this.f27262w == null && this.D < 1) {
            return super.onSaveInstanceState();
        }
        Bundle bundle = new Bundle();
        Uri uriD = this.P;
        if (this.F && uriD == null && this.D < 1) {
            uriD = com.theartofdev.edmodo.cropper.c.D(getContext(), this.f27262w, this.f27251a0);
            this.f27251a0 = uriD;
        }
        if (uriD != null && this.f27262w != null) {
            String string = UUID.randomUUID().toString();
            com.theartofdev.edmodo.cropper.c.f27348g = new Pair<>(string, new WeakReference(this.f27262w));
            bundle.putString("LOADED_IMAGE_STATE_BITMAP_KEY", string);
        }
        WeakReference<com.theartofdev.edmodo.cropper.b> weakReference = this.f27252b0;
        if (weakReference != null && (bVar = weakReference.get()) != null) {
            bundle.putParcelable("LOADING_IMAGE_URI", bVar.b());
        }
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putParcelable("LOADED_IMAGE_URI", uriD);
        bundle.putInt("LOADED_IMAGE_RESOURCE", this.D);
        bundle.putInt("LOADED_SAMPLE_SIZE", this.Q);
        bundle.putInt("DEGREES_ROTATED", this.f27264y);
        bundle.putParcelable("INITIAL_CROP_RECT", this.f27255p.getInitialCropWindowRect());
        RectF rectF = com.theartofdev.edmodo.cropper.c.f27344c;
        rectF.set(this.f27255p.getCropWindowRect());
        this.f27256q.invert(this.f27257r);
        this.f27257r.mapRect(rectF);
        bundle.putParcelable("CROP_WINDOW_RECT", rectF);
        bundle.putString("CROP_SHAPE", this.f27255p.getCropShape().name());
        bundle.putBoolean("CROP_AUTO_ZOOM_ENABLED", this.I);
        bundle.putInt("CROP_MAX_ZOOM", this.J);
        bundle.putBoolean("CROP_FLIP_HORIZONTALLY", this.f27265z);
        bundle.putBoolean("CROP_FLIP_VERTICALLY", this.A);
        return bundle;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.W = i12 > 0 && i13 > 0;
    }

    public void p(Uri uri, Bitmap.CompressFormat compressFormat, int i10, int i11, int i12, j jVar) {
        if (this.O == null) {
            throw new IllegalArgumentException("mOnCropImageCompleteListener is not set");
        }
        t(i11, i12, jVar, uri, compressFormat, i10);
    }

    public void setAutoZoomEnabled(boolean z10) {
        if (this.I != z10) {
            this.I = z10;
            k(false, false);
            this.f27255p.invalidate();
        }
    }

    public void setCropRect(Rect rect) {
        this.f27255p.setInitialCropWindowRect(rect);
    }

    public void setCropShape(c cVar) {
        this.f27255p.setCropShape(cVar);
    }

    public void setFixedAspectRatio(boolean z10) {
        this.f27255p.setFixedAspectRatio(z10);
    }

    public void setFlippedHorizontally(boolean z10) {
        if (this.f27265z != z10) {
            this.f27265z = z10;
            d(getWidth(), getHeight(), true, false);
        }
    }

    public void setFlippedVertically(boolean z10) {
        if (this.A != z10) {
            this.A = z10;
            d(getWidth(), getHeight(), true, false);
        }
    }

    public void setGuidelines(d dVar) {
        this.f27255p.setGuidelines(dVar);
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.f27255p.setInitialCropWindowRect(null);
        q(bitmap, 0, null, 1, 0);
    }

    public void setImageResource(int i10) {
        if (i10 != 0) {
            this.f27255p.setInitialCropWindowRect(null);
            q(BitmapFactory.decodeResource(getResources(), i10), i10, null, 1, 0);
        }
    }

    public void setImageUriAsync(Uri uri) {
        if (uri != null) {
            WeakReference<com.theartofdev.edmodo.cropper.b> weakReference = this.f27252b0;
            com.theartofdev.edmodo.cropper.b bVar = weakReference != null ? weakReference.get() : null;
            if (bVar != null) {
                bVar.cancel(true);
            }
            e();
            this.U = null;
            this.V = 0;
            this.f27255p.setInitialCropWindowRect(null);
            WeakReference<com.theartofdev.edmodo.cropper.b> weakReference2 = new WeakReference<>(new com.theartofdev.edmodo.cropper.b(this, uri));
            this.f27252b0 = weakReference2;
            weakReference2.get().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            s();
        }
    }

    public void setMaxZoom(int i10) {
        if (this.J == i10 || i10 <= 0) {
            return;
        }
        this.J = i10;
        k(false, false);
        this.f27255p.invalidate();
    }

    public void setMultiTouchEnabled(boolean z10) {
        if (this.f27255p.u(z10)) {
            k(false, false);
            this.f27255p.invalidate();
        }
    }

    public void setOnCropImageCompleteListener(e eVar) {
        this.O = eVar;
    }

    public void setOnCropWindowChangedListener(h hVar) {
        this.M = hVar;
    }

    public void setOnSetCropOverlayMovedListener(f fVar) {
        this.L = fVar;
    }

    public void setOnSetCropOverlayReleasedListener(g gVar) {
        this.K = gVar;
    }

    public void setOnSetImageUriCompleteListener(i iVar) {
        this.N = iVar;
    }

    public void setRotatedDegrees(int i10) {
        int i11 = this.f27264y;
        if (i11 != i10) {
            o(i10 - i11);
        }
    }

    public void setSaveBitmapToInstanceState(boolean z10) {
        this.F = z10;
    }

    public void setScaleType(k kVar) {
        if (kVar != this.E) {
            this.E = kVar;
            this.R = 1.0f;
            this.T = 0.0f;
            this.S = 0.0f;
            this.f27255p.r();
            requestLayout();
        }
    }

    public void setShowCropOverlay(boolean z10) {
        if (this.G != z10) {
            this.G = z10;
            r();
        }
    }

    public void setShowProgressBar(boolean z10) {
        if (this.H != z10) {
            this.H = z10;
            s();
        }
    }

    public void setSnapRadius(float f10) {
        if (f10 >= 0.0f) {
            this.f27255p.setSnapRadius(f10);
        }
    }

    public void t(int i10, int i11, j jVar, Uri uri, Bitmap.CompressFormat compressFormat, int i12) {
        CropImageView cropImageView;
        Bitmap bitmap = this.f27262w;
        if (bitmap != null) {
            this.f27254o.clearAnimation();
            WeakReference<com.theartofdev.edmodo.cropper.a> weakReference = this.f27253c0;
            com.theartofdev.edmodo.cropper.a aVar = weakReference != null ? weakReference.get() : null;
            if (aVar != null) {
                aVar.cancel(true);
            }
            j jVar2 = j.NONE;
            int i13 = jVar != jVar2 ? i10 : 0;
            int i14 = jVar != jVar2 ? i11 : 0;
            int width = bitmap.getWidth() * this.Q;
            int height = bitmap.getHeight();
            int i15 = this.Q;
            int i16 = height * i15;
            if (this.P == null || (i15 <= 1 && jVar != j.SAMPLING)) {
                cropImageView = this;
                cropImageView.f27253c0 = new WeakReference<>(new com.theartofdev.edmodo.cropper.a(this, bitmap, getCropPoints(), this.f27264y, this.f27255p.m(), this.f27255p.getAspectRatioX(), this.f27255p.getAspectRatioY(), i13, i14, this.f27265z, this.A, jVar, uri, compressFormat, i12));
            } else {
                this.f27253c0 = new WeakReference<>(new com.theartofdev.edmodo.cropper.a(this, this.P, getCropPoints(), this.f27264y, width, i16, this.f27255p.m(), this.f27255p.getAspectRatioX(), this.f27255p.getAspectRatioY(), i13, i14, this.f27265z, this.A, jVar, uri, compressFormat, i12));
                cropImageView = this;
            }
            cropImageView.f27253c0.get().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            s();
        }
    }
}
