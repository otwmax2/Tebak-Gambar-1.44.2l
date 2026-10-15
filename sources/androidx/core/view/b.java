package androidx.core.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: compiled from: ActionProvider.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f2456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f2457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private InterfaceC0041b f2458c;

    /* JADX INFO: compiled from: ActionProvider.java */
    public interface a {
    }

    /* JADX INFO: renamed from: androidx.core.view.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActionProvider.java */
    public interface InterfaceC0041b {
        void onActionProviderVisibilityChanged(boolean z10);
    }

    public b(Context context) {
        this.f2456a = context;
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return true;
    }

    public abstract View c();

    public View d(MenuItem menuItem) {
        return c();
    }

    public boolean e() {
        return false;
    }

    public void f(SubMenu subMenu) {
    }

    public boolean g() {
        return false;
    }

    public void h() {
        this.f2458c = null;
        this.f2457b = null;
    }

    public void i(a aVar) {
        this.f2457b = aVar;
    }

    public void j(InterfaceC0041b interfaceC0041b) {
        if (this.f2458c != null && interfaceC0041b != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f2458c = interfaceC0041b;
    }
}
