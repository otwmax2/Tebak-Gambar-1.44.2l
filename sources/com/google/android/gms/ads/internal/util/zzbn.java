package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzakk;
import com.google.android.gms.internal.ads.zzako;
import com.google.android.gms.internal.ads.zzaku;
import com.google.android.gms.internal.ads.zzall;
import com.google.android.gms.internal.ads.zzbyz;
import com.google.android.gms.internal.ads.zzbzs;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbn extends zzako {
    private final zzbzs A;
    private final zzbyz B;

    public zzbn(String str, Map map, zzbzs zzbzsVar) {
        super(0, str, new i(zzbzsVar));
        this.A = zzbzsVar;
        zzbyz zzbyzVar = new zzbyz(null);
        this.B = zzbyzVar;
        zzbyzVar.d(str, "GET", null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzako
    protected final zzaku k(zzakk zzakkVar) {
        return zzaku.b(zzakkVar, zzall.b(zzakkVar));
    }

    @Override // com.google.android.gms.internal.ads.zzako
    protected final /* bridge */ /* synthetic */ void r(Object obj) {
        zzakk zzakkVar = (zzakk) obj;
        this.B.f(zzakkVar.f9431c, zzakkVar.f9429a);
        zzbyz zzbyzVar = this.B;
        byte[] bArr = zzakkVar.f9430b;
        if (zzbyz.l() && bArr != null) {
            zzbyzVar.h(bArr);
        }
        this.A.c(zzakkVar);
    }
}
