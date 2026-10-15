package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzerf implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17240c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f17241d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f17242e;

    public zzerf(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5) {
        this.f17238a = zzgxlVar;
        this.f17239b = zzgxlVar2;
        this.f17240c = zzgxlVar3;
        this.f17241d = zzgxlVar4;
        this.f17242e = zzgxlVar5;
    }

    public static zzerd a(String str, zzavh zzavhVar, zzbyj zzbyjVar, ScheduledExecutorService scheduledExecutorService, zzfuu zzfuuVar) {
        return new zzerd(str, zzavhVar, zzbyjVar, scheduledExecutorService, zzfuuVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        String strA = ((zzesi) this.f17238a).a();
        zzavh zzavhVar = new zzavh();
        zzbyj zzbyjVar = (zzbyj) this.f17240c.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f17241d.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzerd(strA, zzavhVar, zzbyjVar, scheduledExecutorService, zzfuuVar, null);
    }
}
