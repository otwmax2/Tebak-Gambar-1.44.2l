package com.google.android.gms.internal.drive;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzli<K, V> {
    static <K, V> int a(zzlj<K, V> zzljVar, K k10, V v10) {
        return zzkb.e(zzljVar.f22229a, 1, k10) + zzkb.e(zzljVar.f22230b, 2, v10);
    }

    static <K, V> void b(zzjr zzjrVar, zzlj<K, V> zzljVar, K k10, V v10) throws IOException {
        zzkb.g(zzjrVar, zzljVar.f22229a, 1, k10);
        zzkb.g(zzjrVar, zzljVar.f22230b, 2, v10);
    }
}
