package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;

/* JADX INFO: compiled from: BaseMenuWrapper.java */
/* JADX INFO: loaded from: classes.dex */
abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o.g<x.b, MenuItem> f630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o.g<x.c, SubMenu> f631c;

    c(Context context) {
        this.f629a = context;
    }

    final MenuItem c(MenuItem menuItem) {
        if (!(menuItem instanceof x.b)) {
            return menuItem;
        }
        x.b bVar = (x.b) menuItem;
        if (this.f630b == null) {
            this.f630b = new o.g<>();
        }
        MenuItem menuItem2 = this.f630b.get(bVar);
        if (menuItem2 != null) {
            return menuItem2;
        }
        j jVar = new j(this.f629a, bVar);
        this.f630b.put(bVar, jVar);
        return jVar;
    }

    final SubMenu d(SubMenu subMenu) {
        if (!(subMenu instanceof x.c)) {
            return subMenu;
        }
        x.c cVar = (x.c) subMenu;
        if (this.f631c == null) {
            this.f631c = new o.g<>();
        }
        SubMenu subMenu2 = this.f631c.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        s sVar = new s(this.f629a, cVar);
        this.f631c.put(cVar, sVar);
        return sVar;
    }

    final void e() {
        o.g<x.b, MenuItem> gVar = this.f630b;
        if (gVar != null) {
            gVar.clear();
        }
        o.g<x.c, SubMenu> gVar2 = this.f631c;
        if (gVar2 != null) {
            gVar2.clear();
        }
    }

    final void f(int i10) {
        if (this.f630b == null) {
            return;
        }
        int i11 = 0;
        while (i11 < this.f630b.size()) {
            if (this.f630b.k(i11).getGroupId() == i10) {
                this.f630b.m(i11);
                i11--;
            }
            i11++;
        }
    }

    final void g(int i10) {
        if (this.f630b == null) {
            return;
        }
        for (int i11 = 0; i11 < this.f630b.size(); i11++) {
            if (this.f630b.k(i11).getItemId() == i10) {
                this.f630b.m(i11);
                return;
            }
        }
    }
}
