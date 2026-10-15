package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzedc implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f16314c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f16315d;

    public zzedc(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f16312a = zzgxlVar;
        this.f16313b = zzgxlVar2;
        this.f16314c = zzgxlVar3;
        this.f16315d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context context = (Context) this.f16312a.zzb();
        zzbzg zzbzgVarA = ((zzcgu) this.f16313b).a();
        zzddw zzddwVar = (zzddw) this.f16314c.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzedb(context, zzbzgVarA, zzddwVar, zzfuuVar);
    }
}
