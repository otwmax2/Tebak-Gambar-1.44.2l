package com.google.android.material.bottomsheet;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.j;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a0;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import y3.f;
import y3.h;

/* JADX INFO: compiled from: BottomSheetDialog.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends j {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private BottomSheetBehavior<FrameLayout> f25189s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private FrameLayout f25190t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f25191u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    boolean f25192v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f25193w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f25194x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private BottomSheetBehavior.f f25195y;

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BottomSheetDialog.java */
    class ViewOnClickListenerC0112a implements View.OnClickListener {
        ViewOnClickListenerC0112a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a aVar = a.this;
            if (aVar.f25192v && aVar.isShowing() && a.this.m()) {
                a.this.cancel();
            }
        }
    }

    /* JADX INFO: compiled from: BottomSheetDialog.java */
    class b extends androidx.core.view.a {
        b() {
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.accessibility.c cVar) {
            super.g(view, cVar);
            if (!a.this.f25192v) {
                cVar.c0(false);
            } else {
                cVar.a(1048576);
                cVar.c0(true);
            }
        }

        @Override // androidx.core.view.a
        public boolean j(View view, int i10, Bundle bundle) {
            if (i10 == 1048576) {
                a aVar = a.this;
                if (aVar.f25192v) {
                    aVar.cancel();
                    return true;
                }
            }
            return super.j(view, i10, bundle);
        }
    }

    /* JADX INFO: compiled from: BottomSheetDialog.java */
    class c implements View.OnTouchListener {
        c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* JADX INFO: compiled from: BottomSheetDialog.java */
    class d extends BottomSheetBehavior.f {
        d() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void a(View view, float f10) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void b(View view, int i10) {
            if (i10 == 5) {
                a.this.cancel();
            }
        }
    }

    public a(Context context, int i10) {
        super(context, f(context, i10));
        this.f25192v = true;
        this.f25193w = true;
        this.f25195y = new d();
        h(1);
    }

    private static int f(Context context, int i10) {
        if (i10 != 0) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(y3.b.f36632b, typedValue, true) ? typedValue.resourceId : y3.j.f36759b;
    }

    private FrameLayout i() {
        if (this.f25190t == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), h.f36724a, null);
            this.f25190t = frameLayout;
            BottomSheetBehavior<FrameLayout> bottomSheetBehaviorW = BottomSheetBehavior.W((FrameLayout) frameLayout.findViewById(f.f36700e));
            this.f25189s = bottomSheetBehaviorW;
            bottomSheetBehaviorW.M(this.f25195y);
            this.f25189s.l0(this.f25192v);
        }
        return this.f25190t;
    }

    private View n(int i10, View view, ViewGroup.LayoutParams layoutParams) {
        i();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f25190t.findViewById(f.f36699d);
        if (i10 != 0 && view == null) {
            view = getLayoutInflater().inflate(i10, (ViewGroup) coordinatorLayout, false);
        }
        FrameLayout frameLayout = (FrameLayout) this.f25190t.findViewById(f.f36700e);
        frameLayout.removeAllViews();
        if (layoutParams == null) {
            frameLayout.addView(view);
        } else {
            frameLayout.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(f.R).setOnClickListener(new ViewOnClickListenerC0112a());
        a0.q0(frameLayout, new b());
        frameLayout.setOnTouchListener(new c());
        return this.f25190t;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        BottomSheetBehavior<FrameLayout> bottomSheetBehaviorJ = j();
        if (!this.f25191u || bottomSheetBehaviorJ.Y() == 5) {
            super.cancel();
        } else {
            bottomSheetBehaviorJ.q0(5);
        }
    }

    public BottomSheetBehavior<FrameLayout> j() {
        if (this.f25189s == null) {
            i();
        }
        return this.f25189s;
    }

    public boolean k() {
        return this.f25191u;
    }

    void l() {
        this.f25189s.c0(this.f25195y);
    }

    boolean m() {
        if (!this.f25194x) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
            this.f25193w = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
            this.f25194x = true;
        }
        return this.f25193w;
    }

    @Override // androidx.appcompat.app.j, androidx.activity.f, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                window.clearFlags(67108864);
                window.addFlags(Integer.MIN_VALUE);
            }
            window.setLayout(-1, -1);
        }
    }

    @Override // androidx.activity.f, android.app.Dialog
    protected void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f25189s;
        if (bottomSheetBehavior == null || bottomSheetBehavior.Y() != 5) {
            return;
        }
        this.f25189s.q0(4);
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        if (this.f25192v != z10) {
            this.f25192v = z10;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f25189s;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.l0(z10);
            }
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z10) {
        super.setCanceledOnTouchOutside(z10);
        if (z10 && !this.f25192v) {
            this.f25192v = true;
        }
        this.f25193w = z10;
        this.f25194x = true;
    }

    @Override // androidx.appcompat.app.j, android.app.Dialog
    public void setContentView(int i10) {
        super.setContentView(n(i10, null, null));
    }

    @Override // androidx.appcompat.app.j, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(n(0, view, null));
    }

    @Override // androidx.appcompat.app.j, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(n(0, view, layoutParams));
    }
}
