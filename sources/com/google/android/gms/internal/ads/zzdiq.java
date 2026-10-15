package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdiq implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdij f14839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f14841c;

    public zzdiq(zzdij zzdijVar, zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f14839a = zzdijVar;
        this.f14840b = zzgxlVar;
        this.f14841c = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdbu(((zzdlq) this.f14840b).zzb(), (Executor) this.f14841c.zzb());
    }
}
