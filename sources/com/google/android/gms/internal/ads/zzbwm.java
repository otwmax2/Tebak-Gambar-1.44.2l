package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbwm extends zzbxg {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Clock f11440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbwm f11441c = this;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f11442d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f11443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f11444f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f11445g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f11446h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzgxl f11447i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzgxl f11448j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzgxl f11449k;

    /* synthetic */ zzbwm(Context context, Clock clock, com.google.android.gms.ads.internal.util.zzg zzgVar, zzbxf zzbxfVar, zzbwl zzbwlVar) {
        this.f11440b = clock;
        zzgwy zzgwyVarA = zzgwz.a(context);
        this.f11442d = zzgwyVarA;
        zzgwy zzgwyVarA2 = zzgwz.a(zzgVar);
        this.f11443e = zzgwyVarA2;
        zzgwy zzgwyVarA3 = zzgwz.a(zzbxfVar);
        this.f11444f = zzgwyVarA3;
        this.f11445g = zzgwx.b(new zzbwe(zzgwyVarA, zzgwyVarA2, zzgwyVarA3));
        zzgwy zzgwyVarA4 = zzgwz.a(clock);
        this.f11446h = zzgwyVarA4;
        zzgxl zzgxlVarB = zzgwx.b(new zzbwg(zzgwyVarA4, zzgwyVarA2, zzgwyVarA3));
        this.f11447i = zzgxlVarB;
        zzbwi zzbwiVar = new zzbwi(zzgwyVarA4, zzgxlVarB);
        this.f11448j = zzbwiVar;
        this.f11449k = zzgwx.b(new zzbxl(zzgwyVarA, zzbwiVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbxg
    final zzbwd a() {
        return (zzbwd) this.f11445g.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbxg
    final zzbwh b() {
        return new zzbwh(this.f11440b, (zzbwf) this.f11447i.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzbxg
    final zzbxk c() {
        return (zzbxk) this.f11449k.zzb();
    }
}
