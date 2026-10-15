package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgrs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzgrr f19541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgrr f19542b;

    static {
        zzgrr zzgrrVar;
        try {
            zzgrrVar = (zzgrr) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzgrrVar = null;
        }
        f19541a = zzgrrVar;
        f19542b = new zzgrr();
    }

    static zzgrr a() {
        return f19541a;
    }

    static zzgrr b() {
        return f19542b;
    }
}
