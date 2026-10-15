package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdkc implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f14972a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f14974c;

    public zzdkc(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f14972a = zzgxlVar;
        this.f14973b = zzgxlVar2;
        this.f14974c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdka((Executor) this.f14972a.zzb(), (zzcnq) this.f14973b.zzb(), (zzdbw) this.f14974c.zzb());
    }
}
