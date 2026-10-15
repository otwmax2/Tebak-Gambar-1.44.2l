package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdto implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15655c;

    public zzdto(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f15653a = zzgxlVar;
        this.f15654b = zzgxlVar2;
        this.f15655c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        final zzapw zzapwVar = (zzapw) this.f15653a.zzb();
        final Context contextA = ((zzcgj) this.f15654b).a();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        zzfut zzfutVarE = zzfuuVar.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzdtl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzapw zzapwVar2 = zzapwVar;
                return zzapwVar2.c().c(contextA);
            }
        });
        zzgxg.b(zzfutVarE);
        return zzfutVarE;
    }
}
