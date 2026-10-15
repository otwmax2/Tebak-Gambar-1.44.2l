package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzle f23699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzle f23700b;

    static {
        zzle zzleVar;
        try {
            zzleVar = (zzle) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzleVar = null;
        }
        f23699a = zzleVar;
        f23700b = new zzle();
    }

    static zzle a() {
        return f23699a;
    }

    static zzle b() {
        return f23700b;
    }
}
