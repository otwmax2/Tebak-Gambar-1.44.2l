package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeod implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17047c;

    public zzeod(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f17045a = zzgxlVar;
        this.f17046b = zzgxlVar2;
        this.f17047c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context contextA = ((zzcgj) this.f17045a).a();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzeob(contextA, zzfuuVar, ((zzcuf) this.f17047c).a());
    }
}
