package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgxc extends zzgwu {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgxl f19732b = zzgwz.a(Collections.emptyMap());

    /* synthetic */ zzgxc(Map map, zzgxa zzgxaVar) {
        super(map);
    }

    public static zzgxb b(int i10) {
        return new zzgxb(i10, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final Map zzb() {
        LinkedHashMap linkedHashMapB = zzgwv.b(a().size());
        for (Map.Entry entry : a().entrySet()) {
            linkedHashMapB.put(entry.getKey(), ((zzgxl) entry.getValue()).zzb());
        }
        return Collections.unmodifiableMap(linkedHashMapB);
    }
}
