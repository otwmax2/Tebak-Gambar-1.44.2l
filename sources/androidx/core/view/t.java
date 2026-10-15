package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: NestedScrollingParentHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2542b;

    public t(ViewGroup viewGroup) {
    }

    public int a() {
        return this.f2541a | this.f2542b;
    }

    public void b(View view, View view2, int i10) {
        c(view, view2, i10, 0);
    }

    public void c(View view, View view2, int i10, int i11) {
        if (i11 == 1) {
            this.f2542b = i10;
        } else {
            this.f2541a = i10;
        }
    }

    public void d(View view, int i10) {
        if (i10 == 1) {
            this.f2542b = 0;
        } else {
            this.f2541a = 0;
        }
    }
}
