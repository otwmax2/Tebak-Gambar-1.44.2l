package androidx.appcompat.app;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.b;
import androidx.core.view.f;

/* JADX INFO: compiled from: AppCompatDialog.java */
/* JADX INFO: loaded from: classes.dex */
public class j extends androidx.activity.f implements d {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private g f432q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final f.a f433r;

    public j(Context context, int i10) {
        super(context, f(context, i10));
        this.f433r = new f.a() { // from class: androidx.appcompat.app.i
            @Override // androidx.core.view.f.a
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return this.f431o.g(keyEvent);
            }
        };
        g gVarD = d();
        gVarD.S(f(context, i10));
        gVarD.D(null);
    }

    private static int f(Context context, int i10) {
        if (i10 != 0) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(f.a.f29002z, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d().f(view, layoutParams);
    }

    public g d() {
        if (this.f432q == null) {
            this.f432q = g.m(this, this);
        }
        return this.f432q;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        d().E();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return androidx.core.view.f.e(this.f433r, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // androidx.appcompat.app.d
    public void e(androidx.appcompat.view.b bVar) {
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i10) {
        return (T) d().n(i10);
    }

    boolean g(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean h(int i10) {
        return d().M(i10);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        d().y();
    }

    @Override // androidx.activity.f, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        d().x();
        super.onCreate(bundle);
        d().D(bundle);
    }

    @Override // androidx.activity.f, android.app.Dialog
    protected void onStop() {
        super.onStop();
        d().J();
    }

    @Override // androidx.appcompat.app.d
    public void q(androidx.appcompat.view.b bVar) {
    }

    @Override // android.app.Dialog
    public void setContentView(int i10) {
        d().P(i10);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        d().T(charSequence);
    }

    @Override // androidx.appcompat.app.d
    public androidx.appcompat.view.b v(b.a aVar) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        d().Q(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d().R(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i10) {
        super.setTitle(i10);
        d().T(getContext().getString(i10));
    }
}
