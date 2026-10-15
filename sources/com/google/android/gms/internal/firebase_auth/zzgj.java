package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzgj implements zzih {
    OOB_REQ_TYPE_UNSPECIFIED(0),
    PASSWORD_RESET(1),
    OLD_EMAIL_AGREE(2),
    NEW_EMAIL_ACCEPT(3),
    VERIFY_EMAIL(4),
    RECOVER_EMAIL(5),
    EMAIL_SIGNIN(6),
    VERIFY_AND_CHANGE_EMAIL(7),
    REVERT_SECOND_FACTOR_ADDITION(8);


    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final zzik<zzgj> f22631y = new zzik<zzgj>() { // from class: com.google.android.gms.internal.firebase_auth.zzgl
    };

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f22633o;

    zzgj(int i10) {
        this.f22633o = i10;
    }

    public static zzij c() {
        return zzgk.f22634a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzgj.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f22633o + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzih
    public final int zza() {
        return this.f22633o;
    }
}
