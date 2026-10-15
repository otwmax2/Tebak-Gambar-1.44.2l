package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdel implements zzcqp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f14450a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f14451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f14452c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f14453d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzdgt f14454e;

    zzdel(Map map, Map map2, Map map3, zzgxl zzgxlVar, zzdgt zzdgtVar) {
        this.f14450a = map;
        this.f14451b = map2;
        this.f14452c = map3;
        this.f14453d = zzgxlVar;
        this.f14454e = zzdgtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcqp
    public final zzeat P(int i10, String str) {
        zzeat zzeatVarP;
        zzeat zzeatVar = (zzeat) this.f14450a.get(str);
        if (zzeatVar != null) {
            return zzeatVar;
        }
        if (i10 == 1) {
            if (this.f14454e.e() == null || (zzeatVarP = ((zzcqp) this.f14453d.zzb()).P(i10, str)) == null) {
                return null;
            }
            return zzcqt.a(zzeatVarP);
        }
        if (i10 != 4) {
            return null;
        }
        zzedi zzediVar = (zzedi) this.f14452c.get(str);
        if (zzediVar != null) {
            return new zzeau(zzediVar, new zzfnj() { // from class: com.google.android.gms.internal.ads.zzcqr
                @Override // com.google.android.gms.internal.ads.zzfnj
                public final Object a(Object obj) {
                    return new zzcqt((List) obj);
                }
            });
        }
        zzeat zzeatVar2 = (zzeat) this.f14451b.get(str);
        if (zzeatVar2 == null) {
            return null;
        }
        return zzcqt.a(zzeatVar2);
    }
}
