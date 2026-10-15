package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzid implements zzjo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzid f22740a = new zzid();

    private zzid() {
    }

    public static zzid b() {
        return f22740a;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjo
    public final zzjl a(Class<?> cls) {
        if (!zzif.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzjl) zzif.h(cls.asSubclass(zzif.class)).i(zzif.zzf.f22749c, null, null);
        } catch (Exception e10) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e10);
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjo
    public final boolean c(Class<?> cls) {
        return zzif.class.isAssignableFrom(cls);
    }
}
