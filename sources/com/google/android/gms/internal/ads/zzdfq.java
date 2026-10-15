package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdfq implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f14543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f14545c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f14546d;

    public zzdfq(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f14543a = zzgxlVar;
        this.f14544b = zzgxlVar2;
        this.f14545c = zzgxlVar3;
        this.f14546d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzatb zzatbVar = (zzatb) this.f14543a.zzb();
        Executor executor = (Executor) this.f14544b.zzb();
        Context context = (Context) this.f14545c.zzb();
        return new zzcnq(executor, new zzcnc(context, zzatbVar), (Clock) this.f14546d.zzb());
    }
}
