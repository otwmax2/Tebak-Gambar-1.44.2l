package com.google.android.gms.internal.ads;

import java.util.HashSet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashSet f10710a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f10711b = "media3.common";

    public static synchronized String a() {
        return f10711b;
    }

    public static synchronized void b(String str) {
        if (f10710a.add(str)) {
            f10711b = f10711b + ", " + str;
        }
    }
}
