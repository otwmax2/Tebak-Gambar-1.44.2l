package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzebh implements zzdee {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbzg f16171a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfut f16172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzeyc f16173c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzcei f16174d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzeyx f16175e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzbhr f16176f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f16177g;

    zzebh(zzbzg zzbzgVar, zzfut zzfutVar, zzeyc zzeycVar, zzcei zzceiVar, zzeyx zzeyxVar, boolean z10, zzbhr zzbhrVar) {
        this.f16171a = zzbzgVar;
        this.f16172b = zzfutVar;
        this.f16173c = zzeycVar;
        this.f16174d = zzceiVar;
        this.f16175e = zzeyxVar;
        this.f16177g = z10;
        this.f16176f = zzbhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdee
    public final void a(boolean z10, Context context, zzcvb zzcvbVar) {
        int i10;
        zzcnv zzcnvVar = (zzcnv) zzfuj.p(this.f16172b);
        this.f16174d.S0(true);
        boolean zE = this.f16177g ? this.f16176f.e(true) : true;
        boolean z11 = this.f16177g;
        com.google.android.gms.ads.internal.zzj zzjVar = new com.google.android.gms.ads.internal.zzj(zE, true, z11 ? this.f16176f.d() : false, z11 ? this.f16176f.a() : 0.0f, -1, z10, this.f16173c.P, false);
        if (zzcvbVar != null) {
            zzcvbVar.c();
        }
        com.google.android.gms.ads.internal.zzt.k();
        zzddt zzddtVarI = zzcnvVar.i();
        zzcei zzceiVar = this.f16174d;
        int i11 = this.f16173c.R;
        if (i11 == -1) {
            com.google.android.gms.ads.internal.client.zzw zzwVar = this.f16175e.f17737j;
            if (zzwVar != null) {
                int i12 = zzwVar.f5955o;
                if (i12 == 1) {
                    i10 = 7;
                } else if (i12 == 2) {
                    i10 = 6;
                }
            }
            zzbza.b("Error setting app open orientation; no targeting orientation available.");
            i11 = this.f16173c.R;
            i10 = i11;
        } else {
            i10 = i11;
        }
        zzbzg zzbzgVar = this.f16171a;
        zzeyc zzeycVar = this.f16173c;
        String str = zzeycVar.C;
        zzeyh zzeyhVar = zzeycVar.f17667t;
        com.google.android.gms.ads.internal.overlay.zzm.a(context, new AdOverlayInfoParcel((com.google.android.gms.ads.internal.client.zza) null, zzddtVarI, (com.google.android.gms.ads.internal.overlay.zzz) null, zzceiVar, i10, zzbzgVar, str, zzjVar, zzeyhVar.f17691b, zzeyhVar.f17690a, this.f16175e.f17733f, zzcvbVar), true);
    }
}
