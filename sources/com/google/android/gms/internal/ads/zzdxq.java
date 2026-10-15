package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdxq implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15895c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f15896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f15897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f15898f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f15899g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f15900h;

    public zzdxq(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6, zzgxl zzgxlVar7, zzgxl zzgxlVar8) {
        this.f15893a = zzgxlVar;
        this.f15894b = zzgxlVar2;
        this.f15895c = zzgxlVar3;
        this.f15896d = zzgxlVar4;
        this.f15897e = zzgxlVar5;
        this.f15898f = zzgxlVar6;
        this.f15899g = zzgxlVar7;
        this.f15900h = zzgxlVar8;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* synthetic */ Object zzb() {
        Context contextA = ((zzcgj) this.f15893a).a();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzdxp(contextA, zzfuuVar, new zzbtz(), ((zzcgr) this.f15896d).zzb(), ((zzdyi) this.f15897e).zzb(), (ArrayDeque) this.f15898f.zzb(), new zzdye(), (zzfep) this.f15900h.zzb(), null);
    }
}
