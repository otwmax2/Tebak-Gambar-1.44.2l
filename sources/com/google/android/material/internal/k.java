package com.google.android.material.internal;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import androidx.core.view.a0;
import androidx.core.view.k0;
import androidx.core.view.u;

/* JADX INFO: compiled from: ViewUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: compiled from: ViewUtils.java */
    static class a implements u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f25565a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f25566b;

        a(c cVar, d dVar) {
            this.f25565a = cVar;
            this.f25566b = dVar;
        }

        @Override // androidx.core.view.u
        public k0 a(View view, k0 k0Var) {
            return this.f25565a.a(view, k0Var, new d(this.f25566b));
        }
    }

    /* JADX INFO: compiled from: ViewUtils.java */
    static class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            a0.n0(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: compiled from: ViewUtils.java */
    public interface c {
        k0 a(View view, k0 k0Var, d dVar);
    }

    public static void a(View view, c cVar) {
        a0.C0(view, new a(cVar, new d(a0.J(view), view.getPaddingTop(), a0.I(view), view.getPaddingBottom())));
        f(view);
    }

    public static float b(Context context, int i10) {
        return TypedValue.applyDimension(1, i10, context.getResources().getDisplayMetrics());
    }

    public static float c(View view) {
        float fY = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            fY += a0.y((View) parent);
        }
        return fY;
    }

    public static boolean d(View view) {
        return a0.E(view) == 1;
    }

    public static PorterDuff.Mode e(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static void f(View view) {
        if (a0.T(view)) {
            a0.n0(view);
        } else {
            view.addOnAttachStateChangeListener(new b());
        }
    }

    /* JADX INFO: compiled from: ViewUtils.java */
    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f25567a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f25568b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f25569c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f25570d;

        public d(int i10, int i11, int i12, int i13) {
            this.f25567a = i10;
            this.f25568b = i11;
            this.f25569c = i12;
            this.f25570d = i13;
        }

        public d(d dVar) {
            this.f25567a = dVar.f25567a;
            this.f25568b = dVar.f25568b;
            this.f25569c = dVar.f25569c;
            this.f25570d = dVar.f25570d;
        }
    }
}
