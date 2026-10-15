package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzffg implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f18081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f18082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f18083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f18084d;

    public zzffg(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f18081a = zzgxlVar;
        this.f18082b = zzgxlVar2;
        this.f18083c = zzgxlVar3;
        this.f18084d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context contextA = ((zzcgj) this.f18081a).a();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzfff(contextA, zzfuuVar, (zzbzf) this.f18083c.zzb(), (zzfep) this.f18084d.zzb());
    }
}
