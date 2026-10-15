package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzajw;
import com.google.android.gms.internal.ads.zzaks;
import com.google.android.gms.internal.ads.zzakt;
import com.google.android.gms.internal.ads.zzalt;
import com.google.android.gms.internal.ads.zzbyz;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class g extends zzalt {
    final /* synthetic */ byte[] C;
    final /* synthetic */ Map D;
    final /* synthetic */ zzbyz E;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    g(zzbo zzboVar, int i10, String str, zzakt zzaktVar, zzaks zzaksVar, byte[] bArr, Map map, zzbyz zzbyzVar) {
        super(i10, str, zzaktVar, zzaksVar);
        this.C = bArr;
        this.D = map;
        this.E = zzbyzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzako
    public final byte[] O() throws zzajw {
        byte[] bArr = this.C;
        if (bArr == null) {
            return null;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzalt
    /* JADX INFO: renamed from: Q */
    public final void r(String str) {
        this.E.g(str);
        super.r(str);
    }

    @Override // com.google.android.gms.internal.ads.zzako
    public final Map o() throws zzajw {
        Map map = this.D;
        return map == null ? Collections.emptyMap() : map;
    }

    @Override // com.google.android.gms.internal.ads.zzalt, com.google.android.gms.internal.ads.zzako
    protected final /* bridge */ /* synthetic */ void r(Object obj) {
        r((String) obj);
    }
}
