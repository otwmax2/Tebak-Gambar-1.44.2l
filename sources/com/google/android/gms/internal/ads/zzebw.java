package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzebw implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f16207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f16208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f16209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f16210f;

    public zzebw(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6) {
        this.f16205a = zzgxlVar;
        this.f16206b = zzgxlVar2;
        this.f16207c = zzgxlVar3;
        this.f16208d = zzgxlVar4;
        this.f16209e = zzgxlVar5;
        this.f16210f = zzgxlVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzebv zzb() {
        return new zzebv((zzcph) this.f16205a.zzb(), (Context) this.f16206b.zzb(), (Executor) this.f16207c.zzb(), (zzdmq) this.f16208d.zzb(), ((zzcuf) this.f16209e).a(), (zzfnj) this.f16210f.zzb());
    }
}
