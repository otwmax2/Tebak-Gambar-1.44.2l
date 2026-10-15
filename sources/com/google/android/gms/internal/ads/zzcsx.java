package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcsx implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13918b;

    public zzcsx(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f13917a = zzgxlVar;
        this.f13918b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdbu((zzcyv) this.f13917a.zzb(), (Executor) this.f13918b.zzb());
    }
}
