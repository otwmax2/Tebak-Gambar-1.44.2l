package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.j;

/* JADX INFO: loaded from: classes.dex */
class FragmentManager$6 implements androidx.lifecycle.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f3129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ s f3130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ androidx.lifecycle.j f3131c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ n f3132d;

    @Override // androidx.lifecycle.l
    public void c(androidx.lifecycle.n nVar, j.b bVar) {
        Bundle bundle;
        if (bVar == j.b.ON_START && (bundle = (Bundle) this.f3132d.f3280j.get(this.f3129a)) != null) {
            this.f3130b.a(this.f3129a, bundle);
            this.f3132d.r(this.f3129a);
        }
        if (bVar == j.b.ON_DESTROY) {
            this.f3131c.c(this);
            this.f3132d.f3281k.remove(this.f3129a);
        }
    }
}
