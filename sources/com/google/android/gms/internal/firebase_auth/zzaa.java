package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzaa implements zzih {
    VERIFY_OP_UNSPECIFIED(0),
    SIGN_UP_OR_IN(1),
    REAUTH(2),
    UPDATE(3),
    LINK(4);


    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final zzik<zzaa> f22396u = new zzik<zzaa>() { // from class: com.google.android.gms.internal.firebase_auth.zzac
    };

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f22398o;

    zzaa(int i10) {
        this.f22398o = i10;
    }

    public static zzij c() {
        return zzab.f22399a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzaa.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f22398o + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzih
    public final int zza() {
        return this.f22398o;
    }
}
