package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgqh implements zzgru {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zzgqh f19481a = new zzgqh();

    private zzgqh() {
    }

    public static zzgqh c() {
        return f19481a;
    }

    @Override // com.google.android.gms.internal.ads.zzgru
    public final zzgrt a(Class cls) {
        if (!zzgqm.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (zzgrt) zzgqm.j(cls.asSubclass(zzgqm.class)).F(3, null, null);
        } catch (Exception e10) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgru
    public final boolean b(Class cls) {
        return zzgqm.class.isAssignableFrom(cls);
    }
}
