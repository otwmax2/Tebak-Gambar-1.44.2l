package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfdl implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17952c;

    public zzfdl(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f17950a = zzgxlVar;
        this.f17951b = zzgxlVar2;
        this.f17952c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzgws zzgwsVarA = zzgwx.a(this.f17950a);
        zzgws zzgwsVarA2 = zzgwx.a(this.f17951b);
        Object zzfdnVar = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.T7)).booleanValue() ? new zzfdn((zzfdk) zzgwsVarA.zzb(), (ScheduledExecutorService) this.f17952c.zzb()) : (zzfdk) zzgwsVarA2.zzb();
        zzgxg.b(zzfdnVar);
        return zzfdnVar;
    }
}
