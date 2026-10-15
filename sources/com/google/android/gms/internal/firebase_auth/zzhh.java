package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzhh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f22656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f22657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f22658c;

    private zzhh() {
        this.f22656a = 100;
        this.f22657b = Integer.MAX_VALUE;
        this.f22658c = false;
    }

    static zzhh a(byte[] bArr, int i10, int i11, boolean z10) {
        zzhj zzhjVar = new zzhj(bArr, 0, i11, false);
        try {
            zzhjVar.b(i11);
            return zzhjVar;
        } catch (zzin e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public abstract int b(int i10) throws zzin;

    public abstract int c();
}
