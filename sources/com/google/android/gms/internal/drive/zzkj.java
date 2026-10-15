package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;

/* JADX INFO: loaded from: classes2.dex */
final class zzkj implements zzlp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzkj f22171a = new zzkj();

    private zzkj() {
    }

    public static zzkj c() {
        return f22171a;
    }

    @Override // com.google.android.gms.internal.drive.zzlp
    public final boolean a(Class<?> cls) {
        return zzkk.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.drive.zzlp
    public final zzlo b(Class<?> cls) {
        if (!zzkk.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzlo) zzkk.p(cls.asSubclass(zzkk.class)).i(zzkk.zze.f22178c, null, null);
        } catch (Exception e10) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e10);
        }
    }
}
