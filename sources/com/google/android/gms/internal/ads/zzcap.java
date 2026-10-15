package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzcap extends TextureView implements zzcbm {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final zzcbd f11673o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected final zzcbn f11674p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected final Integer f11675q;

    public zzcap(Context context, Integer num) {
        super(context);
        this.f11673o = new zzcbd();
        this.f11674p = new zzcbn(context, this);
        this.f11675q = num;
    }

    public void A(int i10) {
    }

    public void B(int i10) {
    }

    public void c(int i10) {
    }

    public void f(String str, String[] strArr) {
        v(str);
    }

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract void k();

    public abstract int l();

    public abstract long m();

    public abstract long n();

    public abstract long o();

    public abstract String p();

    public abstract void q();

    public abstract void r();

    public abstract void s(int i10);

    public abstract void u(zzcao zzcaoVar);

    public abstract void v(String str);

    public abstract void w();

    public abstract void x(float f10, float f11);

    public void y(int i10) {
    }

    public void z(int i10) {
    }
}
