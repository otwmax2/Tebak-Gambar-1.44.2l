package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcpx implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13731a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13733c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f13734d;

    public zzcpx(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f13731a = zzgxlVar;
        this.f13732b = zzgxlVar2;
        this.f13733c = zzgxlVar3;
        this.f13734d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcps(((zzcsl) this.f13731a).zzb(), ((zzcpw) this.f13732b).a(), ((zzcpv) this.f13733c).a(), (Executor) this.f13734d.zzb());
    }
}
