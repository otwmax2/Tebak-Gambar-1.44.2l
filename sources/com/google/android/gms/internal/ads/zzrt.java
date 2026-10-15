package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzrt implements zzsu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f20569a = new ArrayList(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet f20570b = new HashSet(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zztb f20571c = new zztb();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzpt f20572d = new zzpt();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Looper f20573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzcn f20574f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzno f20575g;

    @Override // com.google.android.gms.internal.ads.zzsu
    public final void c(zzst zzstVar) {
        boolean z10 = !this.f20570b.isEmpty();
        this.f20570b.remove(zzstVar);
        if (z10 && this.f20570b.isEmpty()) {
            q();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final void d(Handler handler, zztc zztcVar) {
        Objects.requireNonNull(zztcVar);
        this.f20571c.b(handler, zztcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final void e(zzst zzstVar) {
        this.f20569a.remove(zzstVar);
        if (!this.f20569a.isEmpty()) {
            c(zzstVar);
            return;
        }
        this.f20573e = null;
        this.f20574f = null;
        this.f20575g = null;
        this.f20570b.clear();
        u();
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final void f(zztc zztcVar) {
        this.f20571c.m(zztcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final void g(zzpu zzpuVar) {
        this.f20572d.c(zzpuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final void h(zzst zzstVar) {
        Objects.requireNonNull(this.f20573e);
        boolean zIsEmpty = this.f20570b.isEmpty();
        this.f20570b.add(zzstVar);
        if (zIsEmpty) {
            r();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final void j(Handler handler, zzpu zzpuVar) {
        Objects.requireNonNull(zzpuVar);
        this.f20572d.b(handler, zzpuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final void k(zzst zzstVar, zzgi zzgiVar, zzno zznoVar) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f20573e;
        boolean z10 = true;
        if (looper != null && looper != looperMyLooper) {
            z10 = false;
        }
        zzdl.d(z10);
        this.f20575g = zznoVar;
        zzcn zzcnVar = this.f20574f;
        this.f20569a.add(zzstVar);
        if (this.f20573e == null) {
            this.f20573e = looperMyLooper;
            this.f20570b.add(zzstVar);
            s(zzgiVar);
        } else if (zzcnVar != null) {
            h(zzstVar);
            zzstVar.a(this, zzcnVar);
        }
    }

    protected final zzno l() {
        zzno zznoVar = this.f20575g;
        zzdl.b(zznoVar);
        return zznoVar;
    }

    protected final zzpt m(zzss zzssVar) {
        return this.f20572d.a(0, zzssVar);
    }

    protected final zzpt n(int i10, zzss zzssVar) {
        return this.f20572d.a(0, zzssVar);
    }

    protected final zztb o(zzss zzssVar) {
        return this.f20571c.a(0, zzssVar, 0L);
    }

    protected final zztb p(int i10, zzss zzssVar, long j10) {
        return this.f20571c.a(0, zzssVar, 0L);
    }

    protected void q() {
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public /* synthetic */ zzcn q0() {
        return null;
    }

    protected void r() {
    }

    protected abstract void s(zzgi zzgiVar);

    protected final void t(zzcn zzcnVar) {
        this.f20574f = zzcnVar;
        ArrayList arrayList = this.f20569a;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((zzst) arrayList.get(i10)).a(this, zzcnVar);
        }
    }

    protected abstract void u();

    @Override // com.google.android.gms.internal.ads.zzsu
    public /* synthetic */ boolean v() {
        return true;
    }

    protected final boolean w() {
        return !this.f20570b.isEmpty();
    }
}
