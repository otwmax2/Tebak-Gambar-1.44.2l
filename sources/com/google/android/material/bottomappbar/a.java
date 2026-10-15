package com.google.android.material.bottomappbar;

import o4.f;
import o4.m;

/* JADX INFO: compiled from: BottomAppBarTopEdgeTreatment.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends f implements Cloneable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f25141o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f25142p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f25143q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f25144r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f25145s;

    @Override // o4.f
    public void b(float f10, float f11, float f12, m mVar) {
        float f13 = this.f25143q;
        if (f13 == 0.0f) {
            mVar.m(f10, 0.0f);
            return;
        }
        float f14 = ((this.f25142p * 2.0f) + f13) / 2.0f;
        float f15 = f12 * this.f25141o;
        float f16 = f11 + this.f25145s;
        float f17 = (this.f25144r * f12) + ((1.0f - f12) * f14);
        if (f17 / f14 >= 1.0f) {
            mVar.m(f10, 0.0f);
            return;
        }
        float f18 = f14 + f15;
        float f19 = f17 + f15;
        float fSqrt = (float) Math.sqrt((f18 * f18) - (f19 * f19));
        float f20 = f16 - fSqrt;
        float f21 = f16 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f19));
        float f22 = 90.0f - degrees;
        mVar.m(f20, 0.0f);
        float f23 = f15 * 2.0f;
        mVar.a(f20 - f15, 0.0f, f20 + f15, f23, 270.0f, degrees);
        mVar.a(f16 - f14, (-f14) - f17, f16 + f14, f14 - f17, 180.0f - f22, (f22 * 2.0f) - 180.0f);
        mVar.a(f21 - f15, 0.0f, f21 + f15, f23, 270.0f - degrees, degrees);
        mVar.m(f10, 0.0f);
    }

    float d() {
        return this.f25144r;
    }

    float f() {
        return this.f25142p;
    }

    float g() {
        return this.f25141o;
    }

    public float h() {
        return this.f25143q;
    }

    void i(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.f25144r = f10;
    }

    void j(float f10) {
        this.f25142p = f10;
    }

    void k(float f10) {
        this.f25141o = f10;
    }

    public void l(float f10) {
        this.f25143q = f10;
    }

    void m(float f10) {
        this.f25145s = f10;
    }
}
