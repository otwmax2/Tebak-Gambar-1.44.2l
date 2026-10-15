package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzejt implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzepn f16794a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeyx f16795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f16796c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbyj f16797d;

    public zzejt(zzelk zzelkVar, zzeyx zzeyxVar, Context context, zzbyj zzbyjVar) {
        this.f16794a = zzelkVar;
        this.f16795b = zzeyxVar;
        this.f16796c = context;
        this.f16797d = zzbyjVar;
    }

    final /* synthetic */ zzeju a(zzeps zzepsVar) {
        String str;
        boolean z10;
        String strL;
        int i10;
        float f10;
        int i11;
        int i12;
        DisplayMetrics displayMetrics;
        com.google.android.gms.ads.internal.client.zzq zzqVar = this.f16795b.f17732e;
        com.google.android.gms.ads.internal.client.zzq[] zzqVarArr = zzqVar.f5937u;
        if (zzqVarArr != null) {
            str = null;
            boolean z11 = false;
            boolean z12 = false;
            z10 = false;
            for (com.google.android.gms.ads.internal.client.zzq zzqVar2 : zzqVarArr) {
                boolean z13 = zzqVar2.f5939w;
                if (!z13 && !z11) {
                    str = zzqVar2.f5931o;
                    z11 = true;
                }
                if (z13) {
                    if (z12) {
                        z12 = true;
                    } else {
                        z12 = true;
                        z10 = true;
                    }
                }
                if (z11 && z12) {
                    break;
                }
            }
        } else {
            str = zzqVar.f5931o;
            z10 = zzqVar.f5939w;
        }
        Resources resources = this.f16796c.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            strL = null;
            i10 = 0;
            f10 = 0.0f;
            i11 = 0;
        } else {
            float f11 = displayMetrics.density;
            int i13 = displayMetrics.widthPixels;
            i10 = displayMetrics.heightPixels;
            strL = this.f16797d.h().l();
            i11 = i13;
            f10 = f11;
        }
        StringBuilder sb = new StringBuilder();
        com.google.android.gms.ads.internal.client.zzq[] zzqVarArr2 = zzqVar.f5937u;
        if (zzqVarArr2 != null) {
            boolean z14 = false;
            for (com.google.android.gms.ads.internal.client.zzq zzqVar3 : zzqVarArr2) {
                if (zzqVar3.f5939w) {
                    z14 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    int i14 = zzqVar3.f5935s;
                    if (i14 == -1) {
                        i14 = f10 != 0.0f ? (int) (zzqVar3.f5936t / f10) : -1;
                    }
                    sb.append(i14);
                    sb.append("x");
                    int i15 = zzqVar3.f5932p;
                    if (i15 == -2) {
                        i15 = f10 != 0.0f ? (int) (zzqVar3.f5933q / f10) : -2;
                    }
                    sb.append(i15);
                }
            }
            if (z14) {
                if (sb.length() != 0) {
                    i12 = 0;
                    sb.insert(0, "|");
                } else {
                    i12 = 0;
                }
                sb.insert(i12, "320x50");
            }
        }
        return new zzeju(zzqVar, str, z10, sb.toString(), f10, i11, i10, strL, this.f16795b.f17743p);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 7;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return zzfuj.l(this.f16794a.zzb(), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzejs
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                return this.f16793a.a((zzeps) obj);
            }
        }, zzbzn.f11619f);
    }
}
