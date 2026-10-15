package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzv implements zzih {
    USER_ATTRIBUTE_NAME_UNSPECIFIED(0),
    EMAIL(1),
    DISPLAY_NAME(2),
    PROVIDER(3),
    PHOTO_URL(4),
    PASSWORD(5),
    RAW_USER_INFO(6);


    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final zzik<zzv> f22945w = new zzik<zzv>() { // from class: com.google.android.gms.internal.firebase_auth.zzx
    };

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f22947o;

    zzv(int i10) {
        this.f22947o = i10;
    }

    public static zzij c() {
        return zzw.f22948a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzv.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f22947o + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzih
    public final int zza() {
        return this.f22947o;
    }
}
