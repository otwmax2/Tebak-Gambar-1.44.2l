package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcnh implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13573c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f13574d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f13575e;

    public zzcnh(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5) {
        this.f13571a = zzgxlVar;
        this.f13572b = zzgxlVar2;
        this.f13573c = zzgxlVar3;
        this.f13574d = zzgxlVar4;
        this.f13575e = zzgxlVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcng((zzbmo) this.f13571a.zzb(), (zzcnc) this.f13572b.zzb(), (Executor) this.f13573c.zzb(), (zzcnb) this.f13574d.zzb(), (Clock) this.f13575e.zzb());
    }
}
