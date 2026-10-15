package androidx.databinding;

import androidx.databinding.j;

/* JADX INFO: compiled from: BaseObservable.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements j {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private transient s f2624o;

    @Override // androidx.databinding.j
    public void h(j.a aVar) {
        synchronized (this) {
            if (this.f2624o == null) {
                this.f2624o = new s();
            }
        }
        this.f2624o.a(aVar);
    }

    @Override // androidx.databinding.j
    public void v(j.a aVar) {
        synchronized (this) {
            s sVar = this.f2624o;
            if (sVar == null) {
                return;
            }
            sVar.k(aVar);
        }
    }

    public void w() {
        synchronized (this) {
            s sVar = this.f2624o;
            if (sVar == null) {
                return;
            }
            sVar.f(this, 0, null);
        }
    }

    public void x(int i10) {
        synchronized (this) {
            s sVar = this.f2624o;
            if (sVar == null) {
                return;
            }
            sVar.f(this, i10, null);
        }
    }
}
