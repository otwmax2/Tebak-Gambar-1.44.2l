package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzgme implements zzgqo {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final zzgqp f19270v = new zzgqp() { // from class: com.google.android.gms.internal.ads.zzgmd
    };

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f19272o;

    zzgme(int i10) {
        this.f19272o = i10;
    }

    public static zzgme c(int i10) {
        if (i10 == 0) {
            return UNKNOWN_PREFIX;
        }
        if (i10 == 1) {
            return TINK;
        }
        if (i10 == 2) {
            return LEGACY;
        }
        if (i10 == 3) {
            return RAW;
        }
        if (i10 != 4) {
            return null;
        }
        return CRUNCHY;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        if (this != UNRECOGNIZED) {
            return this.f19272o;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
