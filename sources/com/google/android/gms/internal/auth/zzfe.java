package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzfe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzfe f21504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzfe f21505b;

    static {
        zzfb zzfbVar = null;
        f21504a = new zzfc(zzfbVar);
        f21505b = new zzfd(zzfbVar);
    }

    /* synthetic */ zzfe(zzfb zzfbVar) {
    }

    static zzfe c() {
        return f21504a;
    }

    static zzfe d() {
        return f21505b;
    }

    abstract void a(Object obj, long j10);

    abstract <L> void b(Object obj, Object obj2, long j10);
}
