package androidx.viewpager2.adapter;

import android.os.Handler;
import androidx.lifecycle.j;
import androidx.lifecycle.l;
import androidx.lifecycle.n;

/* JADX INFO: loaded from: classes.dex */
class FragmentStateAdapter$5 implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Handler f4333a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Runnable f4334b;

    @Override // androidx.lifecycle.l
    public void c(n nVar, j.b bVar) {
        if (bVar == j.b.ON_DESTROY) {
            this.f4333a.removeCallbacks(this.f4334b);
            nVar.getLifecycle().c(this);
        }
    }
}
