package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import com.google.android.gms.internal.ads.zzapw;
import com.google.android.gms.internal.ads.zzbzn;
import com.google.android.gms.internal.ads.zzcgd;
import com.google.android.gms.internal.ads.zzcgj;
import com.google.android.gms.internal.ads.zzcgu;
import com.google.android.gms.internal.ads.zzdpn;
import com.google.android.gms.internal.ads.zzezt;
import com.google.android.gms.internal.ads.zzfff;
import com.google.android.gms.internal.ads.zzfuu;
import com.google.android.gms.internal.ads.zzgwy;
import com.google.android.gms.internal.ads.zzgxg;
import com.google.android.gms.internal.ads.zzgxl;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzad implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f6388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f6389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f6390c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f6391d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f6392e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f6393f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f6394g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f6395h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzgxl f6396i;

    public zzad(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6, zzgxl zzgxlVar7, zzgxl zzgxlVar8, zzgxl zzgxlVar9) {
        this.f6388a = zzgxlVar;
        this.f6389b = zzgxlVar2;
        this.f6390c = zzgxlVar3;
        this.f6391d = zzgxlVar4;
        this.f6392e = zzgxlVar5;
        this.f6393f = zzgxlVar6;
        this.f6394g = zzgxlVar7;
        this.f6395h = zzgxlVar8;
        this.f6396i = zzgxlVar9;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcgd zzcgdVar = (zzcgd) this.f6388a.zzb();
        Context contextA = ((zzcgj) this.f6389b).a();
        zzapw zzapwVar = (zzapw) this.f6390c.zzb();
        zzezt zzeztVar = (zzezt) this.f6391d.zzb();
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        return new zzac(zzcgdVar, contextA, zzapwVar, zzeztVar, zzfuuVar, (ScheduledExecutorService) this.f6393f.zzb(), (zzdpn) this.f6394g.zzb(), (zzfff) this.f6395h.zzb(), ((zzcgu) this.f6396i).a());
    }
}
