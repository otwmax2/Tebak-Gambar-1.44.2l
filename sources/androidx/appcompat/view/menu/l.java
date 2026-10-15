package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.m;
import androidx.core.view.a0;

/* JADX INFO: compiled from: MenuPopupHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f741c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f742d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f744f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f745g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f746h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private m.a f747i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private k f748j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PopupWindow.OnDismissListener f749k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final PopupWindow.OnDismissListener f750l;

    /* JADX INFO: compiled from: MenuPopupHelper.java */
    class a implements PopupWindow.OnDismissListener {
        a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            l.this.e();
        }
    }

    /* JADX INFO: compiled from: MenuPopupHelper.java */
    static class b {
        static void a(Display display, Point point) {
            display.getRealSize(point);
        }
    }

    public l(Context context, g gVar, View view, boolean z10, int i10) {
        this(context, gVar, view, z10, i10, 0);
    }

    private k a() {
        Display defaultDisplay = ((WindowManager) this.f739a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            b.a(defaultDisplay, point);
        } else {
            defaultDisplay.getSize(point);
        }
        k dVar = Math.min(point.x, point.y) >= this.f739a.getResources().getDimensionPixelSize(f.d.f29014c) ? new d(this.f739a, this.f744f, this.f742d, this.f743e, this.f741c) : new q(this.f739a, this.f740b, this.f744f, this.f742d, this.f743e, this.f741c);
        dVar.l(this.f740b);
        dVar.u(this.f750l);
        dVar.p(this.f744f);
        dVar.g(this.f747i);
        dVar.r(this.f746h);
        dVar.s(this.f745g);
        return dVar;
    }

    private void l(int i10, int i11, boolean z10, boolean z11) {
        k kVarC = c();
        kVarC.v(z11);
        if (z10) {
            if ((androidx.core.view.e.b(this.f745g, a0.E(this.f744f)) & 7) == 5) {
                i10 -= this.f744f.getWidth();
            }
            kVarC.t(i10);
            kVarC.w(i11);
            int i12 = (int) ((this.f739a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            kVarC.q(new Rect(i10 - i12, i11 - i12, i10 + i12, i11 + i12));
        }
        kVarC.h();
    }

    public void b() {
        if (d()) {
            this.f748j.dismiss();
        }
    }

    public k c() {
        if (this.f748j == null) {
            this.f748j = a();
        }
        return this.f748j;
    }

    public boolean d() {
        k kVar = this.f748j;
        return kVar != null && kVar.a();
    }

    protected void e() {
        this.f748j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f749k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void f(View view) {
        this.f744f = view;
    }

    public void g(boolean z10) {
        this.f746h = z10;
        k kVar = this.f748j;
        if (kVar != null) {
            kVar.r(z10);
        }
    }

    public void h(int i10) {
        this.f745g = i10;
    }

    public void i(PopupWindow.OnDismissListener onDismissListener) {
        this.f749k = onDismissListener;
    }

    public void j(m.a aVar) {
        this.f747i = aVar;
        k kVar = this.f748j;
        if (kVar != null) {
            kVar.g(aVar);
        }
    }

    public void k() {
        if (!m()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean m() {
        if (d()) {
            return true;
        }
        if (this.f744f == null) {
            return false;
        }
        l(0, 0, false, false);
        return true;
    }

    public boolean n(int i10, int i11) {
        if (d()) {
            return true;
        }
        if (this.f744f == null) {
            return false;
        }
        l(i10, i11, true, true);
        return true;
    }

    public l(Context context, g gVar, View view, boolean z10, int i10, int i11) {
        this.f745g = 8388611;
        this.f750l = new a();
        this.f739a = context;
        this.f740b = gVar;
        this.f744f = view;
        this.f741c = z10;
        this.f742d = i10;
        this.f743e = i11;
    }
}
