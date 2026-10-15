package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.m0;

/* JADX INFO: compiled from: FragmentController.java */
/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k<?> f3257a;

    private i(k<?> kVar) {
        this.f3257a = kVar;
    }

    public static i b(k<?> kVar) {
        return new i((k) androidx.core.util.h.g(kVar, "callbacks == null"));
    }

    public void a(Fragment fragment) {
        k<?> kVar = this.f3257a;
        kVar.f3263s.k(kVar, kVar, fragment);
    }

    public void c() {
        this.f3257a.f3263s.z();
    }

    public void d(Configuration configuration) {
        this.f3257a.f3263s.B(configuration);
    }

    public boolean e(MenuItem menuItem) {
        return this.f3257a.f3263s.C(menuItem);
    }

    public void f() {
        this.f3257a.f3263s.D();
    }

    public boolean g(Menu menu, MenuInflater menuInflater) {
        return this.f3257a.f3263s.E(menu, menuInflater);
    }

    public void h() {
        this.f3257a.f3263s.F();
    }

    public void i() {
        this.f3257a.f3263s.H();
    }

    public void j(boolean z10) {
        this.f3257a.f3263s.I(z10);
    }

    public boolean k(MenuItem menuItem) {
        return this.f3257a.f3263s.K(menuItem);
    }

    public void l(Menu menu) {
        this.f3257a.f3263s.L(menu);
    }

    public void m() {
        this.f3257a.f3263s.N();
    }

    public void n(boolean z10) {
        this.f3257a.f3263s.O(z10);
    }

    public boolean o(Menu menu) {
        return this.f3257a.f3263s.P(menu);
    }

    public void p() {
        this.f3257a.f3263s.R();
    }

    public void q() {
        this.f3257a.f3263s.S();
    }

    public void r() {
        this.f3257a.f3263s.U();
    }

    public boolean s() {
        return this.f3257a.f3263s.b0(true);
    }

    public n t() {
        return this.f3257a.f3263s;
    }

    public void u() {
        this.f3257a.f3263s.T0();
    }

    public View v(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f3257a.f3263s.u0().onCreateView(view, str, context, attributeSet);
    }

    public void w(Parcelable parcelable) {
        k<?> kVar = this.f3257a;
        if (!(kVar instanceof m0)) {
            throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
        }
        kVar.f3263s.g1(parcelable);
    }

    public Parcelable x() {
        return this.f3257a.f3263s.i1();
    }
}
