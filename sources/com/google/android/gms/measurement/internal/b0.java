package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzo;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class b0 implements zzo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f23986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfz f23987b;

    b0(zzfz zzfzVar, String str) {
        this.f23987b = zzfzVar;
        this.f23986a = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzo
    public final String o(String str) {
        Map map = (Map) this.f23987b.f24684d.get(this.f23986a);
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return (String) map.get(str);
    }
}
