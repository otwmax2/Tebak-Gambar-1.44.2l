package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcuk implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcuj f14079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f14081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f14082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f14083e;

    public zzcuk(zzcuj zzcujVar, zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f14079a = zzcujVar;
        this.f14080b = zzgxlVar;
        this.f14081c = zzgxlVar2;
        this.f14082d = zzgxlVar3;
        this.f14083e = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* synthetic */ Object zzb() {
        Context context = (Context) this.f14080b.zzb();
        zzbzg zzbzgVarA = ((zzcgu) this.f14081c).a();
        zzeyc zzeycVarA = ((zzcrc) this.f14082d).a();
        zzbvx zzbvxVar = new zzbvx();
        if (zzeycVarA.B == null) {
            return null;
        }
        zzeyh zzeyhVar = zzeycVarA.f17667t;
        return new zzbvw(context, zzbzgVarA, zzeycVarA.B, zzeyhVar == null ? null : zzeyhVar.f17691b, zzbvxVar, null);
    }
}
