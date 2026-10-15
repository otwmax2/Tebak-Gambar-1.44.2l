package com.google.android.gms.internal.ads;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzgwt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final LinkedHashMap f19722a;

    zzgwt(int i10) {
        this.f19722a = zzgwv.b(i10);
    }

    final zzgwt a(Object obj, zzgxl zzgxlVar) {
        LinkedHashMap linkedHashMap = this.f19722a;
        zzgxg.a(obj, SDKConstants.PARAM_KEY);
        zzgxg.a(zzgxlVar, "provider");
        linkedHashMap.put(obj, zzgxlVar);
        return this;
    }
}
