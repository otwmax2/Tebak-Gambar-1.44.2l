package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

/* JADX INFO: compiled from: CardViewApi21Impl.java */
/* JADX INFO: loaded from: classes.dex */
class b implements e {
    b() {
    }

    private f o(d dVar) {
        return (f) dVar.f();
    }

    @Override // androidx.cardview.widget.e
    public void a(d dVar, Context context, ColorStateList colorStateList, float f10, float f11, float f12) {
        dVar.c(new f(colorStateList, f10));
        View viewG = dVar.g();
        viewG.setClipToOutline(true);
        viewG.setElevation(f11);
        n(dVar, f12);
    }

    @Override // androidx.cardview.widget.e
    public void b(d dVar, float f10) {
        o(dVar).h(f10);
    }

    @Override // androidx.cardview.widget.e
    public float c(d dVar) {
        return dVar.g().getElevation();
    }

    @Override // androidx.cardview.widget.e
    public float d(d dVar) {
        return o(dVar).d();
    }

    @Override // androidx.cardview.widget.e
    public void e(d dVar) {
        n(dVar, g(dVar));
    }

    @Override // androidx.cardview.widget.e
    public void f(d dVar, float f10) {
        dVar.g().setElevation(f10);
    }

    @Override // androidx.cardview.widget.e
    public float g(d dVar) {
        return o(dVar).c();
    }

    @Override // androidx.cardview.widget.e
    public ColorStateList h(d dVar) {
        return o(dVar).b();
    }

    @Override // androidx.cardview.widget.e
    public void i() {
    }

    @Override // androidx.cardview.widget.e
    public float j(d dVar) {
        return d(dVar) * 2.0f;
    }

    @Override // androidx.cardview.widget.e
    public float k(d dVar) {
        return d(dVar) * 2.0f;
    }

    @Override // androidx.cardview.widget.e
    public void l(d dVar) {
        n(dVar, g(dVar));
    }

    @Override // androidx.cardview.widget.e
    public void m(d dVar, ColorStateList colorStateList) {
        o(dVar).f(colorStateList);
    }

    @Override // androidx.cardview.widget.e
    public void n(d dVar, float f10) {
        o(dVar).g(f10, dVar.e(), dVar.d());
        p(dVar);
    }

    public void p(d dVar) {
        if (!dVar.e()) {
            dVar.a(0, 0, 0, 0);
            return;
        }
        float fG = g(dVar);
        float fD = d(dVar);
        int iCeil = (int) Math.ceil(g.c(fG, fD, dVar.d()));
        int iCeil2 = (int) Math.ceil(g.d(fG, fD, dVar.d()));
        dVar.a(iCeil, iCeil2, iCeil, iCeil2);
    }
}
