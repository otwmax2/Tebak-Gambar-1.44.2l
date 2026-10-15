package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfgf {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static zzfgf f18163f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f18164a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzffy f18165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzffw f18166c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzffx f18167d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzffz f18168e;

    public zzfgf(zzffy zzffyVar, zzffw zzffwVar) {
        this.f18165b = zzffyVar;
        this.f18166c = zzffwVar;
    }

    public static zzfgf b() {
        if (f18163f == null) {
            f18163f = new zzfgf(new zzffy(), new zzffw());
        }
        return f18163f;
    }

    public final float a() {
        return this.f18164a;
    }

    public final void c(Context context) {
        this.f18167d = new zzffx(new Handler(), context, new zzffv(), this, null);
    }

    public final void d(float f10) {
        this.f18164a = f10;
        if (this.f18168e == null) {
            this.f18168e = zzffz.a();
        }
        Iterator it = this.f18168e.b().iterator();
        while (it.hasNext()) {
            ((zzffo) it.next()).g().h(f10);
        }
    }

    public final void e() {
        zzfga.a().d(this);
        zzfga.a().b();
        zzfhb.d().i();
        this.f18167d.a();
    }

    public final void f() {
        zzfhb.d().j();
        zzfga.a().c();
        this.f18167d.b();
    }
}
