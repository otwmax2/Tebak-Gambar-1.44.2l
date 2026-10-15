package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: compiled from: ViewOffsetBehavior.java */
/* JADX INFO: loaded from: classes2.dex */
class c<V extends View> extends CoordinatorLayout.c<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f25068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f25069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f25070c;

    public c() {
        this.f25069b = 0;
        this.f25070c = 0;
    }

    public int E() {
        d dVar = this.f25068a;
        if (dVar != null) {
            return dVar.b();
        }
        return 0;
    }

    protected void F(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        coordinatorLayout.I(v10, i10);
    }

    public boolean G(int i10) {
        d dVar = this.f25068a;
        if (dVar != null) {
            return dVar.e(i10);
        }
        this.f25069b = i10;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        F(coordinatorLayout, v10, i10);
        if (this.f25068a == null) {
            this.f25068a = new d(v10);
        }
        this.f25068a.c();
        this.f25068a.a();
        int i11 = this.f25069b;
        if (i11 != 0) {
            this.f25068a.e(i11);
            this.f25069b = 0;
        }
        int i12 = this.f25070c;
        if (i12 == 0) {
            return true;
        }
        this.f25068a.d(i12);
        this.f25070c = 0;
        return true;
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f25069b = 0;
        this.f25070c = 0;
    }
}
