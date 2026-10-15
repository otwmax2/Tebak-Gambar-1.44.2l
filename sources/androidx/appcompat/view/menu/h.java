package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.b;
import androidx.appcompat.view.menu.m;

/* JADX INFO: compiled from: MenuDialogHelper.java */
/* JADX INFO: loaded from: classes.dex */
class h implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, m.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private g f696o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private androidx.appcompat.app.b f697p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    e f698q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private m.a f699r;

    public h(g gVar) {
        this.f696o = gVar;
    }

    public void a() {
        androidx.appcompat.app.b bVar = this.f697p;
        if (bVar != null) {
            bVar.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.m.a
    public void b(g gVar, boolean z10) {
        if (z10 || gVar == this.f696o) {
            a();
        }
        m.a aVar = this.f699r;
        if (aVar != null) {
            aVar.b(gVar, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.m.a
    public boolean c(g gVar) {
        m.a aVar = this.f699r;
        if (aVar != null) {
            return aVar.c(gVar);
        }
        return false;
    }

    public void d(IBinder iBinder) {
        g gVar = this.f696o;
        b.a aVar = new b.a(gVar.u());
        e eVar = new e(aVar.b(), f.g.f29088j);
        this.f698q = eVar;
        eVar.g(this);
        this.f696o.b(this.f698q);
        aVar.c(this.f698q.a(), this);
        View viewY = gVar.y();
        if (viewY != null) {
            aVar.d(viewY);
        } else {
            aVar.e(gVar.w()).h(gVar.x());
        }
        aVar.f(this);
        androidx.appcompat.app.b bVarA = aVar.a();
        this.f697p = bVarA;
        bVarA.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f697p.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f697p.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i10) {
        this.f696o.L((i) this.f698q.a().getItem(i10), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f698q.b(this.f696o, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i10 == 82 || i10 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f697p.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f697p.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f696o.e(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f696o.performShortcut(i10, keyEvent, 0);
    }
}
