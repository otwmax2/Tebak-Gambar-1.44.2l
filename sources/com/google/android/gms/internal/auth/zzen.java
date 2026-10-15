package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzen implements zzfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzen f21486a = new zzen();

    private zzen() {
    }

    public static zzen c() {
        return f21486a;
    }

    @Override // com.google.android.gms.internal.auth.zzfo
    public final zzfn a(Class<?> cls) {
        if (!zzeq.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzfn) zzeq.a(cls.asSubclass(zzeq.class)).k(3, null, null);
        } catch (Exception e10) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e10);
        }
    }

    @Override // com.google.android.gms.internal.auth.zzfo
    public final boolean b(Class<?> cls) {
        return zzeq.class.isAssignableFrom(cls);
    }
}
