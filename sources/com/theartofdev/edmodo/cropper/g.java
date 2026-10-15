package com.theartofdev.edmodo.cropper;

import android.graphics.RectF;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.h;

/* JADX INFO: compiled from: CropWindowHandler.java */
/* JADX INFO: loaded from: classes2.dex */
final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f27390c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f27391d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f27392e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f27393f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f27394g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f27395h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f27396i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f27397j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RectF f27388a = new RectF();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f27389b = new RectF();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f27398k = 1.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f27399l = 1.0f;

    g() {
    }

    private boolean a() {
        return !s();
    }

    private h.b g(float f10, float f11) {
        float fWidth = this.f27388a.width() / 6.0f;
        RectF rectF = this.f27388a;
        float f12 = rectF.left;
        float f13 = f12 + fWidth;
        float f14 = f12 + (fWidth * 5.0f);
        float fHeight = rectF.height() / 6.0f;
        float f15 = this.f27388a.top;
        float f16 = f15 + fHeight;
        float f17 = f15 + (fHeight * 5.0f);
        return f10 < f13 ? f11 < f16 ? h.b.TOP_LEFT : f11 < f17 ? h.b.LEFT : h.b.BOTTOM_LEFT : f10 < f14 ? f11 < f16 ? h.b.TOP : f11 < f17 ? h.b.CENTER : h.b.BOTTOM : f11 < f16 ? h.b.TOP_RIGHT : f11 < f17 ? h.b.RIGHT : h.b.BOTTOM_RIGHT;
    }

    private h.b i(float f10, float f11, float f12) {
        RectF rectF = this.f27388a;
        if (m(f10, f11, rectF.left, rectF.top, f12)) {
            return h.b.TOP_LEFT;
        }
        RectF rectF2 = this.f27388a;
        if (m(f10, f11, rectF2.right, rectF2.top, f12)) {
            return h.b.TOP_RIGHT;
        }
        RectF rectF3 = this.f27388a;
        if (m(f10, f11, rectF3.left, rectF3.bottom, f12)) {
            return h.b.BOTTOM_LEFT;
        }
        RectF rectF4 = this.f27388a;
        if (m(f10, f11, rectF4.right, rectF4.bottom, f12)) {
            return h.b.BOTTOM_RIGHT;
        }
        RectF rectF5 = this.f27388a;
        if (l(f10, f11, rectF5.left, rectF5.top, rectF5.right, rectF5.bottom) && a()) {
            return h.b.CENTER;
        }
        RectF rectF6 = this.f27388a;
        if (n(f10, f11, rectF6.left, rectF6.right, rectF6.top, f12)) {
            return h.b.TOP;
        }
        RectF rectF7 = this.f27388a;
        if (n(f10, f11, rectF7.left, rectF7.right, rectF7.bottom, f12)) {
            return h.b.BOTTOM;
        }
        RectF rectF8 = this.f27388a;
        if (o(f10, f11, rectF8.left, rectF8.top, rectF8.bottom, f12)) {
            return h.b.LEFT;
        }
        RectF rectF9 = this.f27388a;
        if (o(f10, f11, rectF9.right, rectF9.top, rectF9.bottom, f12)) {
            return h.b.RIGHT;
        }
        RectF rectF10 = this.f27388a;
        if (!l(f10, f11, rectF10.left, rectF10.top, rectF10.right, rectF10.bottom) || a()) {
            return null;
        }
        return h.b.CENTER;
    }

    private static boolean l(float f10, float f11, float f12, float f13, float f14, float f15) {
        return f10 > f12 && f10 < f14 && f11 > f13 && f11 < f15;
    }

    private static boolean m(float f10, float f11, float f12, float f13, float f14) {
        return Math.abs(f10 - f12) <= f14 && Math.abs(f11 - f13) <= f14;
    }

    private static boolean n(float f10, float f11, float f12, float f13, float f14, float f15) {
        return f10 > f12 && f10 < f13 && Math.abs(f11 - f14) <= f15;
    }

    private static boolean o(float f10, float f11, float f12, float f13, float f14, float f15) {
        return Math.abs(f10 - f12) <= f15 && f11 > f13 && f11 < f14;
    }

    public float b() {
        return Math.min(this.f27393f, this.f27397j / this.f27399l);
    }

    public float c() {
        return Math.min(this.f27392e, this.f27396i / this.f27398k);
    }

    public float d() {
        return Math.max(this.f27391d, this.f27395h / this.f27399l);
    }

    public float e() {
        return Math.max(this.f27390c, this.f27394g / this.f27398k);
    }

    public h f(float f10, float f11, float f12, CropImageView.c cVar) {
        h.b bVarG = cVar == CropImageView.c.OVAL ? g(f10, f11) : i(f10, f11, f12);
        if (bVarG != null) {
            return new h(bVarG, this, f10, f11);
        }
        return null;
    }

    public RectF h() {
        this.f27389b.set(this.f27388a);
        return this.f27389b;
    }

    public float j() {
        return this.f27399l;
    }

    public float k() {
        return this.f27398k;
    }

    public void p(float f10, float f11, float f12, float f13) {
        this.f27392e = f10;
        this.f27393f = f11;
        this.f27398k = f12;
        this.f27399l = f13;
    }

    public void q(f fVar) {
        this.f27390c = fVar.L;
        this.f27391d = fVar.M;
        this.f27394g = fVar.N;
        this.f27395h = fVar.O;
        this.f27396i = fVar.P;
        this.f27397j = fVar.Q;
    }

    public void r(RectF rectF) {
        this.f27388a.set(rectF);
    }

    public boolean s() {
        return this.f27388a.width() >= 100.0f && this.f27388a.height() >= 100.0f;
    }
}
