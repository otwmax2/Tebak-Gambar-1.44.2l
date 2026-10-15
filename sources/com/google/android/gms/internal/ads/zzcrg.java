package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcrg implements com.google.android.gms.ads.internal.overlay.zzo {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcvv f13808o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final AtomicBoolean f13809p = new AtomicBoolean(false);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final AtomicBoolean f13810q = new AtomicBoolean(false);

    public zzcrg(zzcvv zzcvvVar) {
        this.f13808o = zzcvvVar;
    }

    private final void c() {
        if (this.f13810q.get()) {
            return;
        }
        this.f13810q.set(true);
        this.f13808o.zza();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void G(int i10) {
        this.f13809p.set(true);
        c();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void P0() {
        c();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void Q4() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void X0() {
    }

    public final boolean a() {
        return this.f13809p.get();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void b() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        this.f13808o.a();
    }
}
