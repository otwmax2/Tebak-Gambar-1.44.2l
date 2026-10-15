package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdrl implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f15475c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f15476d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f15477e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f15478f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f15479g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f15480h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzgxl f15481i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzgxl f15482j;

    public zzdrl(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6, zzgxl zzgxlVar7, zzgxl zzgxlVar8, zzgxl zzgxlVar9, zzgxl zzgxlVar10) {
        this.f15473a = zzgxlVar;
        this.f15474b = zzgxlVar2;
        this.f15475c = zzgxlVar3;
        this.f15476d = zzgxlVar4;
        this.f15477e = zzgxlVar5;
        this.f15478f = zzgxlVar6;
        this.f15479g = zzgxlVar7;
        this.f15480h = zzgxlVar8;
        this.f15481i = zzgxlVar9;
        this.f15482j = zzgxlVar10;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        Executor executor = (Executor) this.f15473a.zzb();
        Context contextA = ((zzcgj) this.f15474b).a();
        WeakReference weakReferenceA = ((zzcgk) this.f15475c).a();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzdrk(executor, contextA, weakReferenceA, zzfuuVar, (zzdnd) this.f15477e.zzb(), (ScheduledExecutorService) this.f15478f.zzb(), (zzdpr) this.f15479g.zzb(), ((zzcgu) this.f15480h).a(), ((zzdbg) this.f15481i).zzb(), (zzfep) this.f15482j.zzb());
    }
}
