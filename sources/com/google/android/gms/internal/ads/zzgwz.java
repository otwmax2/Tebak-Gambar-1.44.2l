package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgwz implements zzgwy, zzgws {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zzgwz f19728b = new zzgwz(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f19729a;

    private zzgwz(Object obj) {
        this.f19729a = obj;
    }

    public static zzgwy a(Object obj) {
        zzgxg.a(obj, "instance cannot be null");
        return new zzgwz(obj);
    }

    public static zzgwy b(Object obj) {
        return obj == null ? f19728b : new zzgwz(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final Object zzb() {
        return this.f19729a;
    }
}
