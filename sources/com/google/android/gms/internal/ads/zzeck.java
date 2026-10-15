package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeck implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f16244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f16245d;

    public zzeck(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f16242a = zzgxlVar;
        this.f16243b = zzgxlVar2;
        this.f16244c = zzgxlVar3;
        this.f16245d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzecj((Context) this.f16242a.zzb(), (Executor) this.f16243b.zzb(), (zzddw) this.f16244c.zzb(), (zzeyb) this.f16245d.zzb());
    }
}
