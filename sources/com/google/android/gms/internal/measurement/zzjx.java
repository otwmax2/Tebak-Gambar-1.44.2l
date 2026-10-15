package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjx implements zzlh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzjx f23655a = new zzjx();

    private zzjx() {
    }

    public static zzjx c() {
        return f23655a;
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final zzlg a(Class cls) {
        if (!zzkc.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (zzlg) zzkc.k(cls.asSubclass(zzkc.class)).t(3, null, null);
        } catch (Exception e10) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final boolean b(Class cls) {
        return zzkc.class.isAssignableFrom(cls);
    }
}
