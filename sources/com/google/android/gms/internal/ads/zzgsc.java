package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgsc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzgsb f19568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgsb f19569b;

    static {
        zzgsb zzgsbVar;
        try {
            zzgsbVar = (zzgsb) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzgsbVar = null;
        }
        f19568a = zzgsbVar;
        f19569b = new zzgsb();
    }

    static zzgsb a() {
        return f19568a;
    }

    static zzgsb b() {
        return f19569b;
    }
}
