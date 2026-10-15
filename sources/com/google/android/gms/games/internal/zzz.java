package com.google.android.gms.games.internal;

import com.google.android.gms.common.internal.GmsLogger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final GmsLogger f8181a = new GmsLogger("Games");

    public static void a(String str, String str2) {
        f8181a.c(e(str), str2);
    }

    public static void b(String str, String str2, Throwable th) {
        f8181a.d(e(str), str2, th);
    }

    public static void c(String str, String str2) {
        f8181a.g(e(str), str2);
    }

    public static void d(String str, String str2, Throwable th) {
        f8181a.h(e(str), str2, th);
    }

    private static String e(String str) {
        return String.format("%s[%s]", "PlayGamesServices", str);
    }
}
