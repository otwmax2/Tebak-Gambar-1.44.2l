package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzix {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzix f22791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzix f22792b;

    static {
        zzja zzjaVar = null;
        f22791a = new zziz();
        f22792b = new zzjc();
    }

    private zzix() {
    }

    static zzix a() {
        return f22791a;
    }

    static zzix c() {
        return f22792b;
    }

    abstract <L> void b(Object obj, Object obj2, long j10);

    abstract void d(Object obj, long j10);
}
