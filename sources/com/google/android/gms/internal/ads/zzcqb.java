package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcqb implements zzcwc, zzatf {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzeyc f13748o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzcvg f13749p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzcwl f13750q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final AtomicBoolean f13751r = new AtomicBoolean();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final AtomicBoolean f13752s = new AtomicBoolean();

    public zzcqb(zzeyc zzeycVar, zzcvg zzcvgVar, zzcwl zzcwlVar) {
        this.f13748o = zzeycVar;
        this.f13749p = zzcvgVar;
        this.f13750q = zzcwlVar;
    }

    private final void a() {
        if (this.f13751r.compareAndSet(false, true)) {
            this.f13749p.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatf
    public final void H0(zzate zzateVar) {
        if (this.f13748o.f17642f == 1 && zzateVar.f9886j) {
            a();
        }
        if (zzateVar.f9886j && this.f13752s.compareAndSet(false, true)) {
            this.f13750q.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final synchronized void k() {
        if (this.f13748o.f17642f != 1) {
            a();
        }
    }
}
