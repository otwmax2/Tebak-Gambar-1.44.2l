package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzfl f21514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzfl f21515b;

    static {
        zzfl zzflVar;
        try {
            zzflVar = (zzfl) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzflVar = null;
        }
        f21514a = zzflVar;
        f21515b = new zzfl();
    }

    static zzfl a() {
        return f21514a;
    }

    static zzfl b() {
        return f21515b;
    }
}
