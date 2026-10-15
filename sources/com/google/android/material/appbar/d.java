package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.a0;

/* JADX INFO: compiled from: ViewOffsetHelper.java */
/* JADX INFO: loaded from: classes2.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f25071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f25072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f25073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f25074d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f25075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f25076f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f25077g = true;

    public d(View view) {
        this.f25071a = view;
    }

    void a() {
        View view = this.f25071a;
        a0.b0(view, this.f25074d - (view.getTop() - this.f25072b));
        View view2 = this.f25071a;
        a0.a0(view2, this.f25075e - (view2.getLeft() - this.f25073c));
    }

    public int b() {
        return this.f25074d;
    }

    void c() {
        this.f25072b = this.f25071a.getTop();
        this.f25073c = this.f25071a.getLeft();
    }

    public boolean d(int i10) {
        if (!this.f25077g || this.f25075e == i10) {
            return false;
        }
        this.f25075e = i10;
        a();
        return true;
    }

    public boolean e(int i10) {
        if (!this.f25076f || this.f25074d == i10) {
            return false;
        }
        this.f25074d = i10;
        a();
        return true;
    }
}
