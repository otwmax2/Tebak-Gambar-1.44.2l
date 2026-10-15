package com.google.android.gms.internal.games;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfz {
    static Object a(Object obj, int i10) {
        if (obj != null) {
            return obj;
        }
        StringBuilder sb = new StringBuilder(20);
        sb.append("at index ");
        sb.append(i10);
        throw new NullPointerException(sb.toString());
    }
}
