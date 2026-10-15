package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzefo implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f16546c;

    public zzefo(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f16544a = zzgxlVar;
        this.f16545b = zzgxlVar2;
        this.f16546c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzefn((Context) this.f16544a.zzb(), (Executor) this.f16545b.zzb(), (zzdlz) this.f16546c.zzb());
    }
}
