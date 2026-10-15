package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzecw implements zzdee {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbzg f16279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfut f16280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeyc f16281d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzcei f16282e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzeyx f16283f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzbhr f16284g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f16285h;

    zzecw(Context context, zzbzg zzbzgVar, zzfut zzfutVar, zzeyc zzeycVar, zzcei zzceiVar, zzeyx zzeyxVar, boolean z10, zzbhr zzbhrVar) {
        this.f16278a = context;
        this.f16279b = zzbzgVar;
        this.f16280c = zzfutVar;
        this.f16281d = zzeycVar;
        this.f16282e = zzceiVar;
        this.f16283f = zzeyxVar;
        this.f16284g = zzbhrVar;
        this.f16285h = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzdee
    public final void a(boolean z10, Context context, zzcvb zzcvbVar) {
        zzdcw zzdcwVar = (zzdcw) zzfuj.p(this.f16280c);
        this.f16282e.S0(true);
        boolean zE = this.f16285h ? this.f16284g.e(false) : false;
        com.google.android.gms.ads.internal.zzt.r();
        boolean zE2 = com.google.android.gms.ads.internal.util.zzs.e(this.f16278a);
        boolean z11 = this.f16285h;
        com.google.android.gms.ads.internal.zzj zzjVar = new com.google.android.gms.ads.internal.zzj(zE, zE2, z11 ? this.f16284g.d() : false, z11 ? this.f16284g.a() : 0.0f, -1, z10, this.f16281d.P, false);
        if (zzcvbVar != null) {
            zzcvbVar.c();
        }
        com.google.android.gms.ads.internal.zzt.k();
        zzddt zzddtVarJ = zzdcwVar.j();
        zzcei zzceiVar = this.f16282e;
        zzeyc zzeycVar = this.f16281d;
        int i10 = zzeycVar.R;
        zzbzg zzbzgVar = this.f16279b;
        String str = zzeycVar.C;
        zzeyh zzeyhVar = zzeycVar.f17667t;
        com.google.android.gms.ads.internal.overlay.zzm.a(context, new AdOverlayInfoParcel((com.google.android.gms.ads.internal.client.zza) null, zzddtVarJ, (com.google.android.gms.ads.internal.overlay.zzz) null, zzceiVar, i10, zzbzgVar, str, zzjVar, zzeyhVar.f17691b, zzeyhVar.f17690a, this.f16283f.f17733f, zzcvbVar), true);
    }
}
