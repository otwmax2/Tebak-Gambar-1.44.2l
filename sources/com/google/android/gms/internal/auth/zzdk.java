package com.google.android.gms.internal.auth;

import java.io.Serializable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdk {
    public static <T> zzdg<T> a(zzdg<T> zzdgVar) {
        return ((zzdgVar instanceof zzdi) || (zzdgVar instanceof zzdh)) ? zzdgVar : zzdgVar instanceof Serializable ? new zzdh(zzdgVar) : new zzdi(zzdgVar);
    }

    public static <T> zzdg<T> b(T t10) {
        return new zzdj(t10);
    }
}
