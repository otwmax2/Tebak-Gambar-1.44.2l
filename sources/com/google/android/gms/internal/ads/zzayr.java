package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzayr implements zzgqo {
    UNSPECIFIED(0),
    CONNECTING(1),
    CONNECTED(2),
    DISCONNECTING(3),
    DISCONNECTED(4),
    SUSPENDED(5);


    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final zzgqp f10132v = new zzgqp() { // from class: com.google.android.gms.internal.ads.zzayp
    };

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f10134o;

    zzayr(int i10) {
        this.f10134o = i10;
    }

    public static zzayr c(int i10) {
        if (i10 == 0) {
            return UNSPECIFIED;
        }
        if (i10 == 1) {
            return CONNECTING;
        }
        if (i10 == 2) {
            return CONNECTED;
        }
        if (i10 == 3) {
            return DISCONNECTING;
        }
        if (i10 == 4) {
            return DISCONNECTED;
        }
        if (i10 != 5) {
            return null;
        }
        return SUSPENDED;
    }

    public static zzgqq e() {
        return zzayq.f10125a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f10134o);
    }

    public final int zza() {
        return this.f10134o;
    }
}
