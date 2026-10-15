package com.google.android.gms.internal.firebase_auth;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzjf<K, V> {
    static <K, V> int a(zzji<K, V> zzjiVar, K k10, V v10) {
        return zzhv.b(zzjiVar.f22802a, 1, k10) + zzhv.b(zzjiVar.f22803b, 2, v10);
    }

    static <K, V> void b(zzhm zzhmVar, zzji<K, V> zzjiVar, K k10, V v10) throws IOException {
        zzhv.f(zzhmVar, zzjiVar.f22802a, 1, k10);
        zzhv.f(zzhmVar, zzjiVar.f22803b, 2, v10);
    }
}
