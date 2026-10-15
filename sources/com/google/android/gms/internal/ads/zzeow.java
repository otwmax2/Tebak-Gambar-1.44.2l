package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeow implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17104c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f17105d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f17106e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f17107f;

    public zzeow(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6) {
        this.f17102a = zzgxlVar;
        this.f17103b = zzgxlVar2;
        this.f17104c = zzgxlVar3;
        this.f17105d = zzgxlVar4;
        this.f17106e = zzgxlVar5;
        this.f17107f = zzgxlVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzeou(zzfuuVar, (ScheduledExecutorService) this.f17103b.zzb(), (String) this.f17104c.zzb(), (Context) this.f17105d.zzb(), ((zzcuf) this.f17106e).a(), (zzcgd) this.f17107f.zzb());
    }
}
