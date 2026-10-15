package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzlo f23722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzlo f23723b;

    static {
        zzlo zzloVar;
        try {
            zzloVar = (zzlo) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzloVar = null;
        }
        f23722a = zzloVar;
        f23723b = new zzlo();
    }

    static zzlo a() {
        return f23722a;
    }

    static zzlo b() {
        return f23723b;
    }
}
