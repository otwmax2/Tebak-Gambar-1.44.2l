package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzegc implements com.google.android.gms.ads.internal.zzf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcum f16584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcvg f16585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdce f16586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdbw f16587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzcng f16588e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final AtomicBoolean f16589f = new AtomicBoolean(false);

    zzegc(zzcum zzcumVar, zzcvg zzcvgVar, zzdce zzdceVar, zzdbw zzdbwVar, zzcng zzcngVar) {
        this.f16584a = zzcumVar;
        this.f16585b = zzcvgVar;
        this.f16586c = zzdceVar;
        this.f16587d = zzdbwVar;
        this.f16588e = zzcngVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void a() {
        if (this.f16589f.get()) {
            this.f16585b.zza();
            this.f16586c.zza();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final synchronized void b(View view) {
        if (this.f16589f.compareAndSet(false, true)) {
            this.f16588e.j();
            this.f16587d.Y0(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzb() {
        if (this.f16589f.get()) {
            this.f16584a.w0();
        }
    }
}
