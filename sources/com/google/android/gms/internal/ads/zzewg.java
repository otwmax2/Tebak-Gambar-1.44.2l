package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzewg implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f17529a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f17530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f17531c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f17532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f17533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f17534f;

    public zzewg(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6) {
        this.f17529a = zzgxlVar;
        this.f17530b = zzgxlVar2;
        this.f17531c = zzgxlVar3;
        this.f17532d = zzgxlVar4;
        this.f17533e = zzgxlVar5;
        this.f17534f = zzgxlVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzewf((Context) this.f17529a.zzb(), (Executor) this.f17530b.zzb(), (zzcgd) this.f17531c.zzb(), (zzeib) this.f17532d.zzb(), (zzexf) this.f17533e.zzb(), new zzeyv());
    }
}
