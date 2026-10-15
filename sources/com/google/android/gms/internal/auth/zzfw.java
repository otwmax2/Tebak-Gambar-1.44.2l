package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzfv f21535a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzfv f21536b;

    static {
        zzfv zzfvVar;
        try {
            zzfvVar = (zzfv) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzfvVar = null;
        }
        f21535a = zzfvVar;
        f21536b = new zzfv();
    }

    static zzfv a() {
        return f21535a;
    }

    static zzfv b() {
        return f21536b;
    }
}
