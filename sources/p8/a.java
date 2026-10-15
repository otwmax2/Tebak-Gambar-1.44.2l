package p8;

import android.view.View;

/* JADX INFO: compiled from: OnClickListener.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final InterfaceC0218a f33550o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final int f33551p;

    /* JADX INFO: renamed from: p8.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: OnClickListener.java */
    public interface InterfaceC0218a {
        void t(int i10, View view);
    }

    public a(InterfaceC0218a interfaceC0218a, int i10) {
        this.f33550o = interfaceC0218a;
        this.f33551p = i10;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f33550o.t(this.f33551p, view);
    }
}
