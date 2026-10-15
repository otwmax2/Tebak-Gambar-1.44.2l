package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzla {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzla f22220a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzla f22221b;

    static {
        zzlb zzlbVar = null;
        f22220a = new zzlc();
        f22221b = new zzld();
    }

    private zzla() {
    }

    static zzla c() {
        return f22220a;
    }

    static zzla d() {
        return f22221b;
    }

    abstract void a(Object obj, long j10);

    abstract <L> void b(Object obj, Object obj2, long j10);
}
