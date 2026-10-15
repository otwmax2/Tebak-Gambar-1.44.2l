package androidx.appcompat.app;

import a1.c;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.b;
import androidx.appcompat.widget.e1;
import androidx.core.app.t;
import androidx.lifecycle.n0;
import androidx.lifecycle.o0;

/* JADX INFO: compiled from: AppCompatActivity.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends androidx.fragment.app.e implements d, t.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private g f342o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Resources f343p;

    /* JADX INFO: compiled from: AppCompatActivity.java */
    class a implements c.InterfaceC0003c {
        a() {
        }

        @Override // a1.c.InterfaceC0003c
        public Bundle a() {
            Bundle bundle = new Bundle();
            c.this.C().H(bundle);
            return bundle;
        }
    }

    /* JADX INFO: compiled from: AppCompatActivity.java */
    class b implements d.b {
        b() {
        }

        @Override // d.b
        public void a(Context context) {
            g gVarC = c.this.C();
            gVarC.x();
            gVarC.D(c.this.getSavedStateRegistry().b("androidx:appcompat"));
        }
    }

    public c() {
        E();
    }

    private void E() {
        getSavedStateRegistry().h("androidx:appcompat", new a());
        addOnContextAvailableListener(new b());
    }

    private boolean L(KeyEvent keyEvent) {
        Window window;
        return (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true;
    }

    private void initViewTreeOwners() {
        n0.a(getWindow().getDecorView(), this);
        o0.a(getWindow().getDecorView(), this);
        a1.f.a(getWindow().getDecorView(), this);
    }

    public g C() {
        if (this.f342o == null) {
            this.f342o = g.l(this, this);
        }
        return this.f342o;
    }

    public androidx.appcompat.app.a D() {
        return C().w();
    }

    public void F(androidx.core.app.t tVar) {
        tVar.i(this);
    }

    protected void G(androidx.core.os.h hVar) {
    }

    protected void H(int i10) {
    }

    public void I(androidx.core.app.t tVar) {
    }

    @Deprecated
    public void J() {
    }

    public boolean K() {
        Intent intentT = t();
        if (intentT == null) {
            return false;
        }
        if (!N(intentT)) {
            M(intentT);
            return true;
        }
        androidx.core.app.t tVarK = androidx.core.app.t.k(this);
        F(tVarK);
        I(tVarK);
        tVarK.l();
        try {
            androidx.core.app.b.o(this);
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    public void M(Intent intent) {
        androidx.core.app.j.e(this, intent);
    }

    public boolean N(Intent intent) {
        return androidx.core.app.j.f(this, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        C().f(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(C().k(context));
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        androidx.appcompat.app.a aVarD = D();
        if (getWindow().hasFeature(0)) {
            if (aVarD == null || !aVarD.f()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // androidx.core.app.g, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        androidx.appcompat.app.a aVarD = D();
        if (keyCode == 82 && aVarD != null && aVarD.o(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // androidx.appcompat.app.d
    public void e(androidx.appcompat.view.b bVar) {
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i10) {
        return (T) C().n(i10);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return C().t();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.f343p == null && e1.c()) {
            this.f343p = new e1(this, super.getResources());
        }
        Resources resources = this.f343p;
        return resources == null ? super.getResources() : resources;
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        C().y();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f343p != null) {
            this.f343p.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        C().C(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        J();
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        C().E();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (L(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // androidx.fragment.app.e, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        androidx.appcompat.app.a aVarD = D();
        if (menuItem.getItemId() != 16908332 || aVarD == null || (aVarD.i() & 4) == 0) {
            return false;
        }
        return K();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i10, Menu menu) {
        return super.onMenuOpened(i10, menu);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i10, Menu menu) {
        super.onPanelClosed(i10, menu);
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        C().F(bundle);
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        C().G();
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onStart() {
        super.onStart();
        C().I();
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onStop() {
        super.onStop();
        C().J();
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i10) {
        super.onTitleChanged(charSequence, i10);
        C().T(charSequence);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        androidx.appcompat.app.a aVarD = D();
        if (getWindow().hasFeature(0)) {
            if (aVarD == null || !aVarD.p()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.appcompat.app.d
    public void q(androidx.appcompat.view.b bVar) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i10) {
        initViewTreeOwners();
        C().P(i10);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        super.setTheme(i10);
        C().S(i10);
    }

    @Override // androidx.fragment.app.e
    public void supportInvalidateOptionsMenu() {
        C().y();
    }

    @Override // androidx.core.app.t.a
    public Intent t() {
        return androidx.core.app.j.a(this);
    }

    @Override // androidx.appcompat.app.d
    public androidx.appcompat.view.b v(b.a aVar) {
        return null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        initViewTreeOwners();
        C().Q(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        C().R(view, layoutParams);
    }
}
