package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzedr implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f16349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f16350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f16351c;

    public zzedr(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f16349a = zzgxlVar;
        this.f16350b = zzgxlVar2;
        this.f16351c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzedq((Context) this.f16349a.zzb(), (zzdes) this.f16350b.zzb(), (Executor) this.f16351c.zzb());
    }
}
